import '/flutter_flow/flutter_flow_util.dart';
import 's03_widget.dart' show S03Widget;
import 'package:flutter/material.dart';

class S03Model extends FlutterFlowModel<S03Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
