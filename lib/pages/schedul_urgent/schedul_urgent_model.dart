import '/flutter_flow/flutter_flow_util.dart';
import 'schedul_urgent_widget.dart' show SchedulUrgentWidget;
import 'package:flutter/material.dart';

class SchedulUrgentModel extends FlutterFlowModel<SchedulUrgentWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
