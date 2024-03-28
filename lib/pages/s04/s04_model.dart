import '/flutter_flow/flutter_flow_util.dart';
import 's04_widget.dart' show S04Widget;
import 'package:flutter/material.dart';

class S04Model extends FlutterFlowModel<S04Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
