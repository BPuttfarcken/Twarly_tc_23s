import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/wallet_entrys/flyer_twarly/flyer_twarly_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddFlyerTwarlyModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for FlyerTwarly component.
  late FlyerTwarlyModel flyerTwarlyModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    flyerTwarlyModel = createModel(context, () => FlyerTwarlyModel());
  }

  void dispose() {
    unfocusNode.dispose();
    flyerTwarlyModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
