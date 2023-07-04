import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/header_v2/header_v2_widget.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AchievementPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for HeaderV2 component.
  late HeaderV2Model headerV2Model;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    headerV2Model = createModel(context, () => HeaderV2Model());
  }

  void dispose() {
    unfocusNode.dispose();
    headerV2Model.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
