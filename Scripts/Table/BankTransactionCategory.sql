 CREATE TABLE [dbo].[BankTransactionCategory] (
	Id UNIQUEIDENTIFIER DEFAULT NEWID(),
	IdBankTransaction UNIQUEIDENTIFIER,
	IdCategory UNIQUEIDENTIFIER,

	PRIMARY KEY (Id),
	CONSTRAINT fk_BankTransactionCategory_IdBankTransaction FOREIGN KEY (IdBankTransaction) REFERENCES BankTransaction(Id),
	CONSTRAINT fk_BankTransactionCategory_IdCategory FOREIGN KEY (IdCategory) REFERENCES Category(Id)
 );