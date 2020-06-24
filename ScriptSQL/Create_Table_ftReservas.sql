USE DM_Reservas

CREATE TABLE ftReservas
(
IDRESERVA INT PRIMARY KEY IDENTITY 
,IDHOTEL  INT
,IDORIGEM INT
,IDSTATUSRESERVA INT
,IDTIPOUH INT
,IDHOSPEDE INT
,VLRDIARIA FLOAT
,DTRESERVA DATETIME
,RSVCONFIRMADA CHAR(1)
,DTDATACHEGADA DATE
,DTPARTIDA DATE
,LOCRESERVA VARCHAR(30)
,QTDADULTOS INT
,QTDCHD1  INT
,QTDCHD2  INT
,OBSRESERVA VARCHAR(300)

)
