import '/flutter_flow/flutter_flow_util.dart';
import 'booking_s01_widget.dart' show BookingS01Widget;
import 'package:flutter/material.dart';

class BookingS01Model extends FlutterFlowModel<BookingS01Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Column widget.
  ScrollController? columnController1;
  // State field(s) for Column widget.
  ScrollController? columnController2;
  // State field(s) for Column widget.
  ScrollController? columnController3;

  @override
  void initState(BuildContext context) {
    columnController1 = ScrollController();
    columnController2 = ScrollController();
    columnController3 = ScrollController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    columnController1?.dispose();
    columnController2?.dispose();
    columnController3?.dispose();
  }
}
