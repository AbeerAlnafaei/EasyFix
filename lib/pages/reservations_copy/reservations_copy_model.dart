import '/flutter_flow/flutter_flow_util.dart';
import 'reservations_copy_widget.dart' show ReservationsCopyWidget;
import 'package:flutter/material.dart';

class ReservationsCopyModel extends FlutterFlowModel<ReservationsCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
