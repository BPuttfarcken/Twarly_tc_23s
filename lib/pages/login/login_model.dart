import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for emailAddress widget.
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // State field(s) for password widget.
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // State field(s) for pssword-check widget.
  TextEditingController? psswordCheckController;
  late bool psswordCheckVisibility;
  String? Function(BuildContext, String?)? psswordCheckControllerValidator;
  // State field(s) for Username widget.
  TextEditingController? usernameController;
  String? Function(BuildContext, String?)? usernameControllerValidator;
  // State field(s) for emailAdressLogIn widget.
  TextEditingController? emailAdressLogInController;
  String? Function(BuildContext, String?)? emailAdressLogInControllerValidator;
  // State field(s) for passwordLogIn widget.
  TextEditingController? passwordLogInController;
  late bool passwordLogInVisibility;
  String? Function(BuildContext, String?)? passwordLogInControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordVisibility = false;
    psswordCheckVisibility = false;
    passwordLogInVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    emailAddressController?.dispose();
    passwordController?.dispose();
    psswordCheckController?.dispose();
    usernameController?.dispose();
    emailAdressLogInController?.dispose();
    passwordLogInController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
