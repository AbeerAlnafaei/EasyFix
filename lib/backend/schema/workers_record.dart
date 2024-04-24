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

  // "Experience" field.
  String? _experience;
  String get experience => _experience ?? '';
  bool hasExperience() => _experience != null;

  // "ServiceID" field.
  DocumentReference? _serviceID;
  DocumentReference? get serviceID => _serviceID;
  bool hasServiceID() => _serviceID != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _experience = snapshotData['Experience'] as String?;
    _serviceID = snapshotData['ServiceID'] as DocumentReference?;
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
  String? experience,
  DocumentReference? serviceID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'Experience': experience,
      'ServiceID': serviceID,
    }.withoutNulls,
  );

  return firestoreData;
}

class WorkersRecordDocumentEquality implements Equality<WorkersRecord> {
  const WorkersRecordDocumentEquality();

  @override
  bool equals(WorkersRecord? e1, WorkersRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.experience == e2?.experience &&
        e1?.serviceID == e2?.serviceID;
  }

  @override
  int hash(WorkersRecord? e) =>
      const ListEquality().hash([e?.name, e?.experience, e?.serviceID]);

  @override
  bool isValidKey(Object? o) => o is WorkersRecord;
}
