import '/flutter_flow/flutter_flow_util.dart';
import 'booking_s01_widget.dart' show BookingS01Widget;
import 'package:flutter/material.dart';

class BookingS01Model extends FlutterFlowModel<BookingS01Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Column widget.
  ScrollController? columnController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    columnController = ScrollController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    columnController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
