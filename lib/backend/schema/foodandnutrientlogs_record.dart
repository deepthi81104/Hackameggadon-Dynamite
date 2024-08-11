import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FoodandnutrientlogsRecord extends FirestoreRecord {
  FoodandnutrientlogsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Foodname" field.
  String? _foodname;
  String get foodname => _foodname ?? '';
  bool hasFoodname() => _foodname != null;

  void _initializeFields() {
    _foodname = snapshotData['Foodname'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Foodandnutrientlogs');

  static Stream<FoodandnutrientlogsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FoodandnutrientlogsRecord.fromSnapshot(s));

  static Future<FoodandnutrientlogsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => FoodandnutrientlogsRecord.fromSnapshot(s));

  static FoodandnutrientlogsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FoodandnutrientlogsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FoodandnutrientlogsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FoodandnutrientlogsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FoodandnutrientlogsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FoodandnutrientlogsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFoodandnutrientlogsRecordData({
  String? foodname,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Foodname': foodname,
    }.withoutNulls,
  );

  return firestoreData;
}

class FoodandnutrientlogsRecordDocumentEquality
    implements Equality<FoodandnutrientlogsRecord> {
  const FoodandnutrientlogsRecordDocumentEquality();

  @override
  bool equals(FoodandnutrientlogsRecord? e1, FoodandnutrientlogsRecord? e2) {
    return e1?.foodname == e2?.foodname;
  }

  @override
  int hash(FoodandnutrientlogsRecord? e) =>
      const ListEquality().hash([e?.foodname]);

  @override
  bool isValidKey(Object? o) => o is FoodandnutrientlogsRecord;
}
