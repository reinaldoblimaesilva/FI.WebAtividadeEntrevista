USE [C:\USERS\REINALDOLIMA\SOURCE\REPOS\FI.WEBATIVIDADEENTREVISTA2\FI.WEBATIVIDADEENTREVISTA\APP_DATA\BANCODEDADOS.MDF]
GO
/****** Object:  StoredProcedure [dbo].[FI_SP_AltCliente]    Script Date: 02/11/2020 18:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[FI_SP_AltCliente]
    @NOME          VARCHAR (50) ,
    @SOBRENOME     VARCHAR (255),
	@CPF           VARCHAR (14),
    @NACIONALIDADE VARCHAR (50) ,
    @CEP           VARCHAR (9)  ,
    @ESTADO        VARCHAR (2)  ,
    @CIDADE        VARCHAR (50) ,
    @LOGRADOURO    VARCHAR (500),
    @EMAIL         VARCHAR (2079),
    @TELEFONE      VARCHAR (15),
	@Id           BIGINT
AS
BEGIN
	UPDATE CLIENTES 
	SET 
		NOME = @NOME, 
		SOBRENOME = @SOBRENOME,
		CPF = @CPF,
		NACIONALIDADE = @NACIONALIDADE, 
		CEP = @CEP, 
		ESTADO = @ESTADO, 
		CIDADE = @CIDADE, 
		LOGRADOURO = @LOGRADOURO, 
		EMAIL = @EMAIL, 
		TELEFONE = @TELEFONE
	WHERE Id = @Id
END