import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WaterlogRecord extends FirestoreRecord {
  WaterlogRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "litersconsumed" field.
  double? _litersconsumed;
  double get litersconsumed => _litersconsumed ?? 0.0;
  bool hasLitersconsumed() => _litersconsumed != null;

  // "litersneeded" field.
  double? _litersneeded;
  double get litersneeded => _litersneeded ?? 0.0;
  bool hasLitersneeded() => _litersneeded != null;

  void _initializeFields() {
    _litersconsumed = castToType<double>(snapshotData['litersconsumed']);
    _litersneeded = castToType<double>(snapshotData['litersneeded']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('waterlog');

  static Stream<WaterlogRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WaterlogRecord.fromSnapshot(s));

  static Future<WaterlogRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WaterlogRecord.fromSnapshot(s));

  static WaterlogRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WaterlogRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WaterlogRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WaterlogRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WaterlogRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WaterlogRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWaterlogRecordData({
  double? litersconsumed,
  double? litersneeded,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'litersconsumed': litersconsumed,
      'litersneeded': litersneeded,
    }.withoutNulls,
  );

  return firestoreData;
}

class WaterlogRecordDocumentEquality implements Equality<WaterlogRecord> {
  const WaterlogRecordDocumentEquality();

  @override
  bool equals(WaterlogRecord? e1, WaterlogRecord? e2) {
    return e1?.litersconsumed == e2?.litersconsumed &&
        e1?.litersneeded == e2?.litersneeded;
  }

  @override
  int hash(WaterlogRecord? e) =>
      const ListEquality().hash([e?.litersconsumed, e?.litersneeded]);

  @override
  bool isValidKey(Object? o) => o is WaterlogRecord;
}
