import '/flutter_flow/flutter_flow_util.dart';
import 's01_copy_widget.dart' show S01CopyWidget;
import 'package:flutter/material.dart';

class S01CopyModel extends FlutterFlowModel<S01CopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
