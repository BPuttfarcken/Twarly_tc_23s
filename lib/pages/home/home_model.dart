import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/widgets/header_v2/header_v2_widget.dart';
import '/widgets/personal_q_r_code/personal_q_r_code_widget.dart';
import '/widgets/task_bar/task_bar_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for HeaderV2 component.
  late HeaderV2Model headerV2Model;
  // Model for PersonalQRCode component.
  late PersonalQRCodeModel personalQRCodeModel;
  var wasteScan = '';
  // Model for TaskBar component.
  late TaskBarModel taskBarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    headerV2Model = createModel(context, () => HeaderV2Model());
    personalQRCodeModel = createModel(context, () => PersonalQRCodeModel());
    taskBarModel = createModel(context, () => TaskBarModel());
  }

  void dispose() {
    unfocusNode.dispose();
    headerV2Model.dispose();
    personalQRCodeModel.dispose();
    taskBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
