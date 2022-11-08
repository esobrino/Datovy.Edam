﻿using System;
using System.Collections.Generic;

// -----------------------------------------------------------------------------

namespace Edam.Diagnostics
{

   public enum EventCode
   {
      ThereAreOtherOptions = 2,
      Success = 0,
      Failed = -1,
      MissingOrganizationOri = -2,
      StoredProcedureCallFailed = -3,
      RequestProcessorEmailSendFailed = -4,
      ReferenceNotFound = -109,
      ObjectExists = -110,
      HeadersMismatch = -111,
      ListIsEmpty = -112,
      SessionFailedRegistration = -1004,
      EmailDoesNotExists = -2012,
      EmailPasswordDoesNotExists = -2013,
      FilePathExpectedNoneFound = -991,
      MissingAppOrganizationAgentPasscodeId = -992,
      NullInstanceFound = -993,
      ExceptionFound = -994,
      FailedToInsertNotification = -996,
      InsertUpdateFailed = -997,
      ClassOrObjectHasNotBeenDefined = -999,
      Unknown = -9999999,
   }

}
