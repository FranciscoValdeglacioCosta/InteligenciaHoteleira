install.packages("odbc")
library(odbc)



library(odbc)
con <- dbConnect(odbc(),
                 Driver = "SQL Server",
                 Server = "localhost",
                 Database = "CMT",
                 UID = "cm",
                 PWD = "cm",
                 Port = 1433)
                 

alltables = dbListTables(con)
alltables
                 
                 