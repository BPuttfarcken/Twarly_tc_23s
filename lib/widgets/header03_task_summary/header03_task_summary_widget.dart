import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'header03_task_summary_model.dart';
export 'header03_task_summary_model.dart';

class Header03TaskSummaryWidget extends StatefulWidget {
  const Header03TaskSummaryWidget({
    Key? key,
    String? wastecounter,
    String? transfervalue,
  })  : this.wastecounter = wastecounter ?? '5',
        this.transfervalue = transfervalue ?? '15',
        super(key: key);

  final String wastecounter;
  final String transfervalue;

  @override
  _Header03TaskSummaryWidgetState createState() =>
      _Header03TaskSummaryWidgetState();
}

class _Header03TaskSummaryWidgetState extends State<Header03TaskSummaryWidget> {
  late Header03TaskSummaryModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Header03TaskSummaryModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFF1F4F8),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 44.0, 16.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 44.0,
                  icon: Icon(
                    Icons.menu_rounded,
                    color: Color(0xFF14181B),
                    size: 24.0,
                  ),
                  onPressed: () async {
                    await WasteCounterRecord.collection
                        .doc()
                        .set(createWasteCounterRecordData(
                          wasteWeight: 0.75,
                          wasteSaver:
                              valueOrDefault(currentUserDocument?.userName, ''),
                          userID: currentUserUid,
                          dateTime: getCurrentTimestamp,
                        ));
                  },
                ),
                AuthUserStreamWidget(
                  builder: (context) => InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('UserProfile');
                    },
                    child: Container(
                      width: 40.0,
                      height: 40.0,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                        valueOrDefault<String>(
                          currentUserPhoto,
                          'https://images.unsplash.com/photo-1611590027211-b954fd027b51?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1338&q=80',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 16.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Hello,',
                  style: FlutterFlowTheme.of(context).displaySmall.override(
                        fontFamily: 'Outfit',
                        color: Color(0xFF14181B),
                        fontSize: 36.0,
                        fontWeight: FontWeight.normal,
                      ),
                ),
                SizedBox(
                  height: 50.0,
                  child: VerticalDivider(
                    width: 40.0,
                    thickness: 2.0,
                    color: Color(0x00FFFFFF),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/vnimc_1.png',
                    width: 220.0,
                    height: 73.0,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 0.0, 0.0),
            child: AuthUserStreamWidget(
              builder: (context) => Text(
                valueOrDefault(currentUserDocument?.userName, ''),
                style: FlutterFlowTheme.of(context).displaySmall.override(
                      fontFamily: 'BrittanyExtraBold',
                      color: Colors.black,
                      fontSize: 40.0,
                      fontWeight: FontWeight.w800,
                      useGoogleFonts: false,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
