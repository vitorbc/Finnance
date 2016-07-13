 CREATE TABLE [dbo].[BankAccount] (
	Id UNIQUEIDENTIFIER DEFAULT NEWID(),
	Name VARCHAR(255),
	IdBankAccountType UNIQUEIDENTIFIER,
	IdCurrency UNIQUEIDENTIFIER,

	PRIMARY KEY (Id),
	CONSTRAINT fk_BankAccount_IdBankAccountType FOREIGN KEY (IdBankAccountType) REFERENCES BankAccountType(Id),
	CONSTRAINT fk_BankAccount_IdCurrency FOREIGN KEY (IdCurrency) REFERENCES Currency(Id)
 );