import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TicketDatenbankRecord extends FirestoreRecord {
  TicketDatenbankRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "TicketCode" field.
  String? _ticketCode;
  String get ticketCode => _ticketCode ?? '';
  bool hasTicketCode() => _ticketCode != null;

  // "TicketName" field.
  String? _ticketName;
  String get ticketName => _ticketName ?? '';
  bool hasTicketName() => _ticketName != null;

  // "TicketCompany" field.
  String? _ticketCompany;
  String get ticketCompany => _ticketCompany ?? '';
  bool hasTicketCompany() => _ticketCompany != null;

  // "TicketDate" field.
  String? _ticketDate;
  String get ticketDate => _ticketDate ?? '';
  bool hasTicketDate() => _ticketDate != null;

  // "TicketSeatNo" field.
  String? _ticketSeatNo;
  String get ticketSeatNo => _ticketSeatNo ?? '';
  bool hasTicketSeatNo() => _ticketSeatNo != null;

  // "TicketYear" field.
  String? _ticketYear;
  String get ticketYear => _ticketYear ?? '';
  bool hasTicketYear() => _ticketYear != null;

  // "EventName" field.
  String? _eventName;
  String get eventName => _eventName ?? '';
  bool hasEventName() => _eventName != null;

  // "EventPlace" field.
  String? _eventPlace;
  String get eventPlace => _eventPlace ?? '';
  bool hasEventPlace() => _eventPlace != null;

  // "TicketPrice" field.
  String? _ticketPrice;
  String get ticketPrice => _ticketPrice ?? '';
  bool hasTicketPrice() => _ticketPrice != null;

  void _initializeFields() {
    _ticketCode = snapshotData['TicketCode'] as String?;
    _ticketName = snapshotData['TicketName'] as String?;
    _ticketCompany = snapshotData['TicketCompany'] as String?;
    _ticketDate = snapshotData['TicketDate'] as String?;
    _ticketSeatNo = snapshotData['TicketSeatNo'] as String?;
    _ticketYear = snapshotData['TicketYear'] as String?;
    _eventName = snapshotData['EventName'] as String?;
    _eventPlace = snapshotData['EventPlace'] as String?;
    _ticketPrice = snapshotData['TicketPrice'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('TicketDatenbank');

  static Stream<TicketDatenbankRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TicketDatenbankRecord.fromSnapshot(s));

  static Future<TicketDatenbankRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TicketDatenbankRecord.fromSnapshot(s));

  static TicketDatenbankRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TicketDatenbankRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TicketDatenbankRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TicketDatenbankRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TicketDatenbankRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TicketDatenbankRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTicketDatenbankRecordData({
  String? ticketCode,
  String? ticketName,
  String? ticketCompany,
  String? ticketDate,
  String? ticketSeatNo,
  String? ticketYear,
  String? eventName,
  String? eventPlace,
  String? ticketPrice,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'TicketCode': ticketCode,
      'TicketName': ticketName,
      'TicketCompany': ticketCompany,
      'TicketDate': ticketDate,
      'TicketSeatNo': ticketSeatNo,
      'TicketYear': ticketYear,
      'EventName': eventName,
      'EventPlace': eventPlace,
      'TicketPrice': ticketPrice,
    }.withoutNulls,
  );

  return firestoreData;
}

class TicketDatenbankRecordDocumentEquality
    implements Equality<TicketDatenbankRecord> {
  const TicketDatenbankRecordDocumentEquality();

  @override
  bool equals(TicketDatenbankRecord? e1, TicketDatenbankRecord? e2) {
    return e1?.ticketCode == e2?.ticketCode &&
        e1?.ticketName == e2?.ticketName &&
        e1?.ticketCompany == e2?.ticketCompany &&
        e1?.ticketDate == e2?.ticketDate &&
        e1?.ticketSeatNo == e2?.ticketSeatNo &&
        e1?.ticketYear == e2?.ticketYear &&
        e1?.eventName == e2?.eventName &&
        e1?.eventPlace == e2?.eventPlace &&
        e1?.ticketPrice == e2?.ticketPrice;
  }

  @override
  int hash(TicketDatenbankRecord? e) => const ListEquality().hash([
        e?.ticketCode,
        e?.ticketName,
        e?.ticketCompany,
        e?.ticketDate,
        e?.ticketSeatNo,
        e?.ticketYear,
        e?.eventName,
        e?.eventPlace,
        e?.ticketPrice
      ]);

  @override
  bool isValidKey(Object? o) => o is TicketDatenbankRecord;
}
