
CREATE PROCEDURE Helper.HelperResetBaseCouters
AS
BEGIN
   SET NOCOUNT ON
   UPDATE IdBase.Counters
      SET IdCount = (SELECT isnull(max(EntityNo),0) + 1 FROM Entity.Registry)
    WHERE IdNo = 0
   UPDATE IdBase.Counters
      SET IdCount = (SELECT isnull(max(AddressNo),0) + 1 FROM Location.AddressRegistry)
    WHERE IdNo = 1
   UPDATE IdBase.Counters
      SET IdCount = (SELECT isnull(max(NameNo),0) + 1 FROM Entity.Names)
    WHERE IdNo = 2
   UPDATE IdBase.Counters
      SET IdCount = (SELECT isnull(max(ObjectNo),0) + 1 FROM Resource.Objects)
    WHERE IdNo = 4
   UPDATE IdBase.Counters
      SET IdCount = (SELECT isnull(max(AccountNo),0) + 1 FROM Account.Registry)
    WHERE IdNo = 5
   UPDATE IdBase.Counters
      SET IdCount = (SELECT isnull(max(KindNo),0) + 1 FROM Account.Kinds)
    WHERE IdNo = 6
   UPDATE IdBase.Counters
      SET IdCount = (SELECT isnull(max(CenterNo),0) + 1 FROM Center.Registry)
    WHERE IdNo = 7
   UPDATE IdBase.Counters
      SET IdCount = (SELECT isnull(max(UserNo),0) + 1 FROM Users.Registry)
    WHERE IdNo = 9
   UPDATE IdBase.Counters
      SET IdCount = (SELECT isnull(max(LogEntryNo),0) + 1 FROM Applications.Logs)
    WHERE IdNo = 10
   UPDATE IdBase.Counters
      SET IdCount = (SELECT isnull(max(SessionNo),0) + 1 FROM Applications.Sessions)
    WHERE IdNo = 11
   UPDATE IdBase.Counters
      SET IdCount = (SELECT isnull(max(DocumentNo),0) + 1 FROM Documents.Registry)
    WHERE IdNo = 13
   UPDATE IdBase.Counters
      SET IdCount = (SELECT isnull(max(DetailNo),0) + 1 FROM Documents.LineItems)
    WHERE IdNo = 14
   UPDATE IdBase.Counters
      SET IdCount = (SELECT isnull(max(ResourceNo),0) + 1 FROM Resource.Registry)
    WHERE IdNo = 16
   UPDATE IdBase.Counters
      SET IdCount = (SELECT isnull(max(CollectionNo),0) + 1 FROM Resource.Collections)
    WHERE IdNo = 17
   UPDATE IdBase.Counters
      SET IdCount = (SELECT isnull(max(DocumentNo),0) + 1 FROM Resource.XmlDocuments)
    WHERE IdNo = 18
   UPDATE IdBase.Counters
      SET IdCount = (SELECT isnull(max(ItemNo),0) + 1 FROM Resource.XmlDocumentCollectionItems)
    WHERE IdNo = 19
   UPDATE IdBase.Counters
      SET IdCount = (SELECT isnull(max(IdNo),0) + 1 FROM Entity.Ids)
    WHERE IdNo = 20
   UPDATE IdBase.Counters
      SET IdCount = (SELECT isnull(max(PhoneNo),0) + 1 FROM Entity.Phones)
    WHERE IdNo = 21
   UPDATE IdBase.Counters
      SET IdCount = (SELECT isnull(max(EntityUrlNo),0) + 1 FROM Entity.Urls)
    WHERE IdNo = 24
   UPDATE IdBase.Counters
      SET IdCount = (SELECT isnull(max(DocumentNo),0) + 1 FROM Documents.Registry)
    WHERE IdNo = 25
   UPDATE IdBase.Counters
      SET IdCount = (SELECT isnull(max(TransactionNo),0) + 1 FROM Ledger.JournalEntries)
    WHERE IdNo = 26
   UPDATE IdBase.Counters
      SET IdCount = (SELECT isnull(max(NoteNo),0) + 1 FROM Entity.Notes)
    WHERE IdNo = 27
   UPDATE IdBase.Counters
      SET IdCount = (SELECT isnull(max(TransactionNo),0) + 1 FROM HumanResources.Worksheets)
    WHERE IdNo = 28
   UPDATE IdBase.Counters
      SET IdCount = (SELECT isnull(max(GroupNo),0) + 1 FROM Documents.DetailsGroups)
    WHERE IdNo = 29
   UPDATE IdBase.Counters
      SET IdCount = (SELECT isnull(max(AccountNo),0) + 1 FROM HumanResources.Accounts)
    WHERE IdNo = 30
   UPDATE IdBase.Counters
      SET IdCount = (SELECT isnull(max(ProfileNo),0) + 1 FROM HumanResources.AccountProfiles)
    WHERE IdNo = 31
   UPDATE IdBase.Counters
      SET IdCount = (SELECT isnull(max(PeriodNo),0) + 1 FROM Period.Registry)
    WHERE IdNo = 32
   UPDATE IdBase.Counters
      SET IdCount = (SELECT isnull(max(DeviceNo),0) + 1 FROM Center.DeviceRegistry)
    WHERE IdNo = 33
   UPDATE IdBase.Counters
      SET IdCount = (SELECT isnull(max(MediaNo),0) + 1 FROM Media.Registry)
    WHERE IdNo = 35
   UPDATE IdBase.Counters
      SET IdCount = (SELECT isnull(max(ParamNo),0) + 1 FROM Resource.Parameters)
    WHERE IdNo = 36
   --UPDATE IdBase.Counters
   --   SET IdCount = (SELECT isnull(max(EventNo),0) + 1 FROM Event.Registry)
   -- WHERE IdNo = 37
   --UPDATE IdBase.Counters
   --   SET IdCount = (SELECT isnull(max(ProfileNo),0) + 1 FROM Inventory.EquipmentProfiles)
   -- WHERE IdNo = 40
END
