import '/flutter_flow/flutter_flow_util.dart';
import 'reservations_copy_copy_widget.dart' show ReservationsCopyCopyWidget;
import 'package:flutter/material.dart';

class ReservationsCopyCopyModel
    extends FlutterFlowModel<ReservationsCopyCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  DateTime? datePicked1;
  DateTime? datePicked2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
