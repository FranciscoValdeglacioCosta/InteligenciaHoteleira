install.packages("RODBC","formattable")
library(RODBC)

# Conectando no banco de dados SQLSERVER

con <- odbcDriverConnect('driver={SQL Server};server=localhost;database=DM_Reservas;trusted_connection=true')


# Extraindo as tabelas
DimHoteis                 = sqlQuery(con, "SELECT IDHOTEL, HOTEL FROM dbo.DimHoteis;")
DimOrigem                 = sqlQuery(con, "SELECT IDORIGEM,DESCRICAO FROM dbo.DimOrigem;")
DimStatusReservas         = sqlQuery(con, "SELECT IDSTATUSRESERVA,STATUSRESERVAS FROM dbo.DimStatusReservas;")
DimTipoUH                 = sqlQuery(con, "SELECT IDTIPOUH,DESCRICAO FROM dbo.DimTipoUH;")
ftHospede                 = sqlQuery(con, "SELECT IDHOSPEDE, NOMEHOSPEDE, SEXO, UF FROM dbo.ftHospede;")
ftReservas                = sqlQuery(con, "SELECT * FROM dbo.ftReservas;")

View(DimHoteis)
View(DimOrigem)
View(DimTipoUH)
View(ftHospede)
View(ftReservas) 



#unidos as tabelas
library(dplyr)


df <- DimHoteis %>%
inner_join(ftReservas, by = c("IDHOTEL")) %>%
inner_join(DimOrigem,  by = c("IDORIGEM")) %>%
inner_join(DimStatusReservas,  by = c("IDSTATUSRESERVA")) %>%
inner_join(DimTipoUH,  by = c("IDTIPOUH")) %>%
inner_join(ftHospede,  by = c("IDHOSPEDE")) %>%
#renomenando colunas
rename(TIPOUH=DESCRICAO.y) %>%
rename(ORIGEM=DESCRICAO.x) 


#ajustando dados
df$DTRESERVA      <-  as.Date(df$DTRESERVA)
df$DTDATACHEGADA  <-  as.Date(df$DTDATACHEGADA)
df$DTPARTIDA      <-  as.Date(df$DTPARTIDA)
df$DTRESERVA      <-  as.Date(df$DTRESERVA)

#Remover desnecessario
df$IDHOTEL <- NULL
df$IDORIGEM <- NULL
df$IDRESERVA <- NULL
df$IDSTATUSRESERVA <- NULL
df$IDTIPOUH <- NULL
df$IDHOSPEDE <- NULL
df$IDTIPOUH <- NULL

#Check 
str(df)

View(df)

#valores Medio Diaria

hist(df$VLRDIARIA,breaks = 4)

plot(df$UF)

#tabela com as reservas 
library(formattable)

formattable(df, list(
  ORIGEM = color_tile("white", "blue")
  
))



#filto somente reservas nao garatidas

rsvn <- filter(df,RSVCONFIRMADA =="N")
View(rsvn)


#Valor Rsv nao confirmadas

library(formattable)

formattable(rsvn, list(
  RSVCONFIRMADA = color_tile("white", "red")
  
))

#valor total Reservas não confidas
 rsvValor <-  data.frame(sum(rsvn$VLRDIARIA))
 
  rsvValor<- rsvValor  %>%
   mutate(texto = c("Reservas que não foram feitos cobrança de confirmação em 7 dias após data reserva  houve uma perda de receita de:") 
   )

View(rsvValor)


#gravar no sqllite a analise feita  arquivo csv

write.csv(df, 'DeadLineReservas.csv', row.names = F)
dir()





