import '/flutter_flow/flutter_flow_util.dart';
import 'booking_urgent_widget.dart' show BookingUrgentWidget;
import 'package:flutter/material.dart';

class BookingUrgentModel extends FlutterFlowModel<BookingUrgentWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Column widget.
  ScrollController? columnController;

  @override
  void initState(BuildContext context) {
    columnController = ScrollController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    columnController?.dispose();
  }
}
