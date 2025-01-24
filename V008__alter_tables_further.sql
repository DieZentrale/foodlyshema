ALTER TABLE [dbo].[MealRegistrations]
    ADD [checkoutSessionId] VARCHAR(100) NULL;

ALTER TABLE [dbo].[AppUsers]
    ADD [customerId] VARCHAR(100) NULL;