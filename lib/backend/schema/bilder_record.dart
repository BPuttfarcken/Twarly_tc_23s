import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BilderRecord extends FirestoreRecord {
  BilderRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "BildURL" field.
  String? _bildURL;
  String get bildURL => _bildURL ?? '';
  bool hasBildURL() => _bildURL != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _bildURL = snapshotData['BildURL'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Bilder');

  static Stream<BilderRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BilderRecord.fromSnapshot(s));

  static Future<BilderRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BilderRecord.fromSnapshot(s));

  static BilderRecord fromSnapshot(DocumentSnapshot snapshot) => BilderRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BilderRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BilderRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BilderRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BilderRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBilderRecordData({
  String? name,
  String? bildURL,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'BildURL': bildURL,
    }.withoutNulls,
  );

  return firestoreData;
}

class BilderRecordDocumentEquality implements Equality<BilderRecord> {
  const BilderRecordDocumentEquality();

  @override
  bool equals(BilderRecord? e1, BilderRecord? e2) {
    return e1?.name == e2?.name && e1?.bildURL == e2?.bildURL;
  }

  @override
  int hash(BilderRecord? e) => const ListEquality().hash([e?.name, e?.bildURL]);

  @override
  bool isValidKey(Object? o) => o is BilderRecord;
}
