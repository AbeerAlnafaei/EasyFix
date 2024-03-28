import '/flutter_flow/flutter_flow_util.dart';
import 's02_widget.dart' show S02Widget;
import 'package:flutter/material.dart';

class S02Model extends FlutterFlowModel<S02Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
