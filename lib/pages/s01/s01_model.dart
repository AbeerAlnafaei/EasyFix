import '/flutter_flow/flutter_flow_util.dart';
import 's01_widget.dart' show S01Widget;
import 'package:flutter/material.dart';

class S01Model extends FlutterFlowModel<S01Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
