SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MealRegistrations](
	[registrationid] [int] IDENTITY(1,1) NOT NULL,
	[userId] [uniqueidentifier] NOT NULL,
	[menuItemDate] [datetime2](7) NOT NULL,
	[paymentMethodid] [int] NOT NULL,
	[pickedUpid] [int] NOT NULL,
	[pickedup] [bit] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MealRegistrations] ADD  CONSTRAINT [PK_MealRegistrations] PRIMARY KEY CLUSTERED 
(
	[registrationid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MealRegistrations_menuItemDate] ON [dbo].[MealRegistrations]
(
	[menuItemDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MealRegistrations_paymentMethodid] ON [dbo].[MealRegistrations]
(
	[paymentMethodid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MealRegistrations_pickedUpid] ON [dbo].[MealRegistrations]
(
	[pickedUpid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MealRegistrations_userId] ON [dbo].[MealRegistrations]
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MealRegistrations] ADD  DEFAULT ((0)) FOR [pickedUpid]
GO
ALTER TABLE [dbo].[MealRegistrations] ADD  DEFAULT (CONVERT([bit],(0))) FOR [pickedup]
GO
ALTER TABLE [dbo].[MealRegistrations]  WITH CHECK ADD  CONSTRAINT [FK_MealRegistrations_AppUsers_userId] FOREIGN KEY([userId])
REFERENCES [dbo].[AppUsers] ([uid])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MealRegistrations] CHECK CONSTRAINT [FK_MealRegistrations_AppUsers_userId]
GO
ALTER TABLE [dbo].[MealRegistrations]  WITH CHECK ADD  CONSTRAINT [FK_MealRegistrations_menuplan_menuItemDate] FOREIGN KEY([menuItemDate])
REFERENCES [dbo].[menuplan] ([date])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MealRegistrations] CHECK CONSTRAINT [FK_MealRegistrations_menuplan_menuItemDate]
GO
ALTER TABLE [dbo].[MealRegistrations]  WITH CHECK ADD  CONSTRAINT [FK_MealRegistrations_PaymentMethode_paymentMethodid] FOREIGN KEY([paymentMethodid])
REFERENCES [dbo].[PaymentMethode] ([paymentmethodeid])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MealRegistrations] CHECK CONSTRAINT [FK_MealRegistrations_PaymentMethode_paymentMethodid]
GO
