 CREATE TABLE [dbo].[BankTransaction] (
	Id UNIQUEIDENTIFIER DEFAULT NEWID(),
	IdCategory UNIQUEIDENTIFIER,
	IdBankTransactionType UNIQUEIDENTIFIER,
	Value DECIMAL,
	Description VARCHAR(255),
	Date DATETIME

	PRIMARY KEY (Id),
	CONSTRAINT fk_BankTransaction_IdCategory FOREIGN KEY (IdCategory) REFERENCES Category(Id),
	CONSTRAINT fk_BankTransaction_IdBankTransactionType FOREIGN KEY (IdBankTransactionType) REFERENCES BankTransactionType(Id)
 );