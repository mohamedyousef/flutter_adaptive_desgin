// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "appName": MessageLookupByLibrary.simpleMessage("Predictiva Task"),
        "badConnectionErrorMessage":
            MessageLookupByLibrary.simpleMessage("Bad network connection."),
        "cancelNetworkErrorMessage":
            MessageLookupByLibrary.simpleMessage("The request was canceled."),
        "forbiddenNetworkErrorMessage": MessageLookupByLibrary.simpleMessage(
            "Access to the resource is forbidden."),
        "insufficientPermissionsNetworkErrorMessage":
            MessageLookupByLibrary.simpleMessage(
                "Insufficient permissions to perform this action."),
        "localeName": MessageLookupByLibrary.simpleMessage("en"),
        "noDataNetworkErrorMessage":
            MessageLookupByLibrary.simpleMessage("No data available."),
        "noInternet": MessageLookupByLibrary.simpleMessage(
            "It looks like you have no internet connection"),
        "otherNetworkErrorMessage": MessageLookupByLibrary.simpleMessage(
            "An error occurred. Please try again later."),
        "parsingNetworkErrorMessage": MessageLookupByLibrary.simpleMessage(
            "Error parsing response data."),
        "serverNetworkErrorMessage":
            MessageLookupByLibrary.simpleMessage("Server error."),
        "sometingWentWrong":
            MessageLookupByLibrary.simpleMessage("Something went wrong."),
        "tryAgainButton": MessageLookupByLibrary.simpleMessage("Try Again"),
        "unProcessableNetworkErrorMessage":
            MessageLookupByLibrary.simpleMessage(
                "The server cannot process the request."),
        "unauthorisedNetworkErrorMessage":
            MessageLookupByLibrary.simpleMessage("Unauthorized access."),
        "uploadingFailedNetworkErrorMessage":
            MessageLookupByLibrary.simpleMessage("Failed to upload.")
      };
}
