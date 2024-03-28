import '/flutter_flow/flutter_flow_util.dart';
import 's06_widget.dart' show S06Widget;
import 'package:flutter/material.dart';

class S06Model extends FlutterFlowModel<S06Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
