import '/flutter_flow/flutter_flow_util.dart';
import 's05_widget.dart' show S05Widget;
import 'package:flutter/material.dart';

class S05Model extends FlutterFlowModel<S05Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
