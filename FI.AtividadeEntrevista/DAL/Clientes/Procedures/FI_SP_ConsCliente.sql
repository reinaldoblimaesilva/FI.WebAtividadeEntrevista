USE [C:\USERS\REINALDOLIMA\SOURCE\REPOS\FI.WEBATIVIDADEENTREVISTA2\FI.WEBATIVIDADEENTREVISTA\APP_DATA\BANCODEDADOS.MDF]
GO
/****** Object:  StoredProcedure [dbo].[FI_SP_ConsCliente]    Script Date: 01/11/2020 22:22:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[FI_SP_ConsCliente]
	@ID BIGINT
AS
BEGIN
	IF(ISNULL(@ID,0) = 0)
		SELECT NOME, SOBRENOME, CPF, NACIONALIDADE, CEP, ESTADO, CIDADE, LOGRADOURO, EMAIL, TELEFONE, ID FROM CLIENTES WITH(NOLOCK)
	ELSE
		SELECT NOME, SOBRENOME, CPF, NACIONALIDADE, CEP, ESTADO, CIDADE, LOGRADOURO, EMAIL, TELEFONE, ID FROM CLIENTES WITH(NOLOCK) WHERE ID = @ID
END