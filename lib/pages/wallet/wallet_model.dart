import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/wallet_entrys/b_c_lisa_nerfs/b_c_lisa_nerfs_widget.dart';
import '/wallet_entrys/flyer_twarly/flyer_twarly_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WalletModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for BCLisaNerfs component.
  late BCLisaNerfsModel bCLisaNerfsModel;
  // Model for FlyerTwarly component.
  late FlyerTwarlyModel flyerTwarlyModel;
  var flyerCode = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    bCLisaNerfsModel = createModel(context, () => BCLisaNerfsModel());
    flyerTwarlyModel = createModel(context, () => FlyerTwarlyModel());
  }

  void dispose() {
    unfocusNode.dispose();
    bCLisaNerfsModel.dispose();
    flyerTwarlyModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
