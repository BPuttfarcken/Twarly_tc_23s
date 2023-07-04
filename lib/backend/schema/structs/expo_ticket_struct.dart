// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExpoTicketStruct extends FFFirebaseStruct {
  ExpoTicketStruct({
    String? name,
    int? ticketNo,
    Color? verification,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _ticketNo = ticketNo,
        _verification = verification,
        super(firestoreUtilData);

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "TicketNo" field.
  int? _ticketNo;
  int get ticketNo => _ticketNo ?? 0;
  set ticketNo(int? val) => _ticketNo = val;
  void incrementTicketNo(int amount) => _ticketNo = ticketNo + amount;
  bool hasTicketNo() => _ticketNo != null;

  // "Verification" field.
  Color? _verification;
  Color? get verification => _verification;
  set verification(Color? val) => _verification = val;
  bool hasVerification() => _verification != null;

  static ExpoTicketStruct fromMap(Map<String, dynamic> data) =>
      ExpoTicketStruct(
        name: data['Name'] as String?,
        ticketNo: castToType<int>(data['TicketNo']),
        verification: getSchemaColor(data['Verification']),
      );

  static ExpoTicketStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? ExpoTicketStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'Name': _name,
        'TicketNo': _ticketNo,
        'Verification': _verification,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Name': serializeParam(
          _name,
          ParamType.String,
        ),
        'TicketNo': serializeParam(
          _ticketNo,
          ParamType.int,
        ),
        'Verification': serializeParam(
          _verification,
          ParamType.Color,
        ),
      }.withoutNulls;

  static ExpoTicketStruct fromSerializableMap(Map<String, dynamic> data) =>
      ExpoTicketStruct(
        name: deserializeParam(
          data['Name'],
          ParamType.String,
          false,
        ),
        ticketNo: deserializeParam(
          data['TicketNo'],
          ParamType.int,
          false,
        ),
        verification: deserializeParam(
          data['Verification'],
          ParamType.Color,
          false,
        ),
      );

  @override
  String toString() => 'ExpoTicketStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ExpoTicketStruct &&
        name == other.name &&
        ticketNo == other.ticketNo &&
        verification == other.verification;
  }

  @override
  int get hashCode => const ListEquality().hash([name, ticketNo, verification]);
}

ExpoTicketStruct createExpoTicketStruct({
  String? name,
  int? ticketNo,
  Color? verification,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ExpoTicketStruct(
      name: name,
      ticketNo: ticketNo,
      verification: verification,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ExpoTicketStruct? updateExpoTicketStruct(
  ExpoTicketStruct? expoTicket, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    expoTicket
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addExpoTicketStructData(
  Map<String, dynamic> firestoreData,
  ExpoTicketStruct? expoTicket,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (expoTicket == null) {
    return;
  }
  if (expoTicket.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && expoTicket.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final expoTicketData = getExpoTicketFirestoreData(expoTicket, forFieldValue);
  final nestedData = expoTicketData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = expoTicket.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getExpoTicketFirestoreData(
  ExpoTicketStruct? expoTicket, [
  bool forFieldValue = false,
]) {
  if (expoTicket == null) {
    return {};
  }
  final firestoreData = mapToFirestore(expoTicket.toMap());

  // Add any Firestore field values
  expoTicket.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getExpoTicketListFirestoreData(
  List<ExpoTicketStruct>? expoTickets,
) =>
    expoTickets?.map((e) => getExpoTicketFirestoreData(e, true)).toList() ?? [];
