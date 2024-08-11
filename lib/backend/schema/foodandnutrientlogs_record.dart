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

  // "caloriestaken" field.
  double? _caloriestaken;
  double get caloriestaken => _caloriestaken ?? 0.0;
  bool hasCaloriestaken() => _caloriestaken != null;

  // "caloriebudget" field.
  double? _caloriebudget;
  double get caloriebudget => _caloriebudget ?? 0.0;
  bool hasCaloriebudget() => _caloriebudget != null;

  // "deficiencies" field.
  String? _deficiencies;
  String get deficiencies => _deficiencies ?? '';
  bool hasDeficiencies() => _deficiencies != null;

  void _initializeFields() {
    _foodname = snapshotData['Foodname'] as String?;
    _caloriestaken = castToType<double>(snapshotData['caloriestaken']);
    _caloriebudget = castToType<double>(snapshotData['caloriebudget']);
    _deficiencies = snapshotData['deficiencies'] as String?;
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
  double? caloriestaken,
  double? caloriebudget,
  String? deficiencies,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Foodname': foodname,
      'caloriestaken': caloriestaken,
      'caloriebudget': caloriebudget,
      'deficiencies': deficiencies,
    }.withoutNulls,
  );

  return firestoreData;
}

class FoodandnutrientlogsRecordDocumentEquality
    implements Equality<FoodandnutrientlogsRecord> {
  const FoodandnutrientlogsRecordDocumentEquality();

  @override
  bool equals(FoodandnutrientlogsRecord? e1, FoodandnutrientlogsRecord? e2) {
    return e1?.foodname == e2?.foodname &&
        e1?.caloriestaken == e2?.caloriestaken &&
        e1?.caloriebudget == e2?.caloriebudget &&
        e1?.deficiencies == e2?.deficiencies;
  }

  @override
  int hash(FoodandnutrientlogsRecord? e) => const ListEquality()
      .hash([e?.foodname, e?.caloriestaken, e?.caloriebudget, e?.deficiencies]);

  @override
  bool isValidKey(Object? o) => o is FoodandnutrientlogsRecord;
}
