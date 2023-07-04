import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WasteCounterRecord extends FirestoreRecord {
  WasteCounterRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "WasteWeight" field.
  double? _wasteWeight;
  double get wasteWeight => _wasteWeight ?? 0.0;
  bool hasWasteWeight() => _wasteWeight != null;

  // "WasteSaver" field.
  String? _wasteSaver;
  String get wasteSaver => _wasteSaver ?? '';
  bool hasWasteSaver() => _wasteSaver != null;

  // "userID" field.
  String? _userID;
  String get userID => _userID ?? '';
  bool hasUserID() => _userID != null;

  // "DateTime" field.
  DateTime? _dateTime;
  DateTime? get dateTime => _dateTime;
  bool hasDateTime() => _dateTime != null;

  // "SavedCO2" field.
  double? _savedCO2;
  double get savedCO2 => _savedCO2 ?? 0.0;
  bool hasSavedCO2() => _savedCO2 != null;

  // "SavedItem" field.
  String? _savedItem;
  String get savedItem => _savedItem ?? '';
  bool hasSavedItem() => _savedItem != null;

  void _initializeFields() {
    _wasteWeight = castToType<double>(snapshotData['WasteWeight']);
    _wasteSaver = snapshotData['WasteSaver'] as String?;
    _userID = snapshotData['userID'] as String?;
    _dateTime = snapshotData['DateTime'] as DateTime?;
    _savedCO2 = castToType<double>(snapshotData['SavedCO2']);
    _savedItem = snapshotData['SavedItem'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('WasteCounter');

  static Stream<WasteCounterRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WasteCounterRecord.fromSnapshot(s));

  static Future<WasteCounterRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WasteCounterRecord.fromSnapshot(s));

  static WasteCounterRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WasteCounterRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WasteCounterRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WasteCounterRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WasteCounterRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WasteCounterRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWasteCounterRecordData({
  double? wasteWeight,
  String? wasteSaver,
  String? userID,
  DateTime? dateTime,
  double? savedCO2,
  String? savedItem,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'WasteWeight': wasteWeight,
      'WasteSaver': wasteSaver,
      'userID': userID,
      'DateTime': dateTime,
      'SavedCO2': savedCO2,
      'SavedItem': savedItem,
    }.withoutNulls,
  );

  return firestoreData;
}

class WasteCounterRecordDocumentEquality
    implements Equality<WasteCounterRecord> {
  const WasteCounterRecordDocumentEquality();

  @override
  bool equals(WasteCounterRecord? e1, WasteCounterRecord? e2) {
    return e1?.wasteWeight == e2?.wasteWeight &&
        e1?.wasteSaver == e2?.wasteSaver &&
        e1?.userID == e2?.userID &&
        e1?.dateTime == e2?.dateTime &&
        e1?.savedCO2 == e2?.savedCO2 &&
        e1?.savedItem == e2?.savedItem;
  }

  @override
  int hash(WasteCounterRecord? e) => const ListEquality().hash([
        e?.wasteWeight,
        e?.wasteSaver,
        e?.userID,
        e?.dateTime,
        e?.savedCO2,
        e?.savedItem
      ]);

  @override
  bool isValidKey(Object? o) => o is WasteCounterRecord;
}
