ALTER TABLE [dbo].[MealRegistrations]
    ADD [paymentMethod] VARCHAR(10) NOT NULL CHECK (paymentMethod IN ('cash', 'card')) DEFAULT 'cash',
        [paymentReceived] BIT NOT NULL DEFAULT 0,
        [paymentReceivedAt] DATETIME NULL,
        [sick] BIT NOT NULL DEFAULT 0,
        [createdAt] DATETIME NOT NULL DEFAULT GETDATE(),
        [pickedUpAt] DATETIME NULL;


