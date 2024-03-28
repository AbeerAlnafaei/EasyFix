import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class WorkersRecord extends FirestoreRecord {
  WorkersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "ServiceID" field.
  String? _serviceID;
  String get serviceID => _serviceID ?? '';
  bool hasServiceID() => _serviceID != null;

  // "Experience" field.
  String? _experience;
  String get experience => _experience ?? '';
  bool hasExperience() => _experience != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _serviceID = snapshotData['ServiceID'] as String?;
    _experience = snapshotData['Experience'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Workers');

  static Stream<WorkersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WorkersRecord.fromSnapshot(s));

  static Future<WorkersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WorkersRecord.fromSnapshot(s));

  static WorkersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WorkersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WorkersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WorkersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WorkersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WorkersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWorkersRecordData({
  String? name,
  String? serviceID,
  String? experience,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'ServiceID': serviceID,
      'Experience': experience,
    }.withoutNulls,
  );

  return firestoreData;
}

class WorkersRecordDocumentEquality implements Equality<WorkersRecord> {
  const WorkersRecordDocumentEquality();

  @override
  bool equals(WorkersRecord? e1, WorkersRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.serviceID == e2?.serviceID &&
        e1?.experience == e2?.experience;
  }

  @override
  int hash(WorkersRecord? e) =>
      const ListEquality().hash([e?.name, e?.serviceID, e?.experience]);

  @override
  bool isValidKey(Object? o) => o is WorkersRecord;
}
