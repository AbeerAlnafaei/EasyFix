import '/flutter_flow/flutter_flow_util.dart';
import 'reservation_details_widget.dart' show ReservationDetailsWidget;
import 'package:flutter/material.dart';

class ReservationDetailsModel
    extends FlutterFlowModel<ReservationDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
