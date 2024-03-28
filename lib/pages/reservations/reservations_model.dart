import '/flutter_flow/flutter_flow_util.dart';
import 'reservations_widget.dart' show ReservationsWidget;
import 'package:flutter/material.dart';

class ReservationsModel extends FlutterFlowModel<ReservationsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
