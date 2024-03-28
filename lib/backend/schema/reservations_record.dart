import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ReservationsRecord extends FirestoreRecord {
  ReservationsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Emergency" field.
  bool? _emergency;
  bool get emergency => _emergency ?? false;
  bool hasEmergency() => _emergency != null;

  // "Status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "Date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "ServiceID" field.
  String? _serviceID;
  String get serviceID => _serviceID ?? '';
  bool hasServiceID() => _serviceID != null;

  // "UserID" field.
  String? _userID;
  String get userID => _userID ?? '';
  bool hasUserID() => _userID != null;

  void _initializeFields() {
    _emergency = snapshotData['Emergency'] as bool?;
    _status = snapshotData['Status'] as String?;
    _date = snapshotData['Date'] as DateTime?;
    _serviceID = snapshotData['ServiceID'] as String?;
    _userID = snapshotData['UserID'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Reservations');

  static Stream<ReservationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReservationsRecord.fromSnapshot(s));

  static Future<ReservationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReservationsRecord.fromSnapshot(s));

  static ReservationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReservationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReservationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReservationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReservationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReservationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReservationsRecordData({
  bool? emergency,
  String? status,
  DateTime? date,
  String? serviceID,
  String? userID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Emergency': emergency,
      'Status': status,
      'Date': date,
      'ServiceID': serviceID,
      'UserID': userID,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReservationsRecordDocumentEquality
    implements Equality<ReservationsRecord> {
  const ReservationsRecordDocumentEquality();

  @override
  bool equals(ReservationsRecord? e1, ReservationsRecord? e2) {
    return e1?.emergency == e2?.emergency &&
        e1?.status == e2?.status &&
        e1?.date == e2?.date &&
        e1?.serviceID == e2?.serviceID &&
        e1?.userID == e2?.userID;
  }

  @override
  int hash(ReservationsRecord? e) => const ListEquality()
      .hash([e?.emergency, e?.status, e?.date, e?.serviceID, e?.userID]);

  @override
  bool isValidKey(Object? o) => o is ReservationsRecord;
}
