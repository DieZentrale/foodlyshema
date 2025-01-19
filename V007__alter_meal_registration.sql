ALTER TABLE [dbo].[MealRegistrations]
    ADD [paymentMethod] VARCHAR(10) NOT NULL CHECK (paymentMethod IN ('cash', 'card')) DEFAULT 'cash',
        [paymentReceived] BIT NOT NULL DEFAULT 0,
        [paymentReceivedAt] DATETIME2 NULL,
        [sick] BIT NOT NULL DEFAULT 0,
        [createdAt] DATETIME2 NOT NULL DEFAULT SYSDATETIME(),
        [pickedUpAt] DATETIME2 NULL;


