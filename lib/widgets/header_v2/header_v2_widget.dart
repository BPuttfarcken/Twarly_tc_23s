import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'header_v2_model.dart';
export 'header_v2_model.dart';

class HeaderV2Widget extends StatefulWidget {
  const HeaderV2Widget({
    Key? key,
    String? wastecounter,
    String? transfervalue,
  })  : this.wastecounter = wastecounter ?? '5',
        this.transfervalue = transfervalue ?? '15',
        super(key: key);

  final String wastecounter;
  final String transfervalue;

  @override
  _HeaderV2WidgetState createState() => _HeaderV2WidgetState();
}

class _HeaderV2WidgetState extends State<HeaderV2Widget> {
  late HeaderV2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeaderV2Model());
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
        color: Color(0xFFD8D8D8),
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
                  borderColor: Colors.black,
                  borderRadius: 10.0,
                  borderWidth: 2.0,
                  buttonSize: 40.0,
                  icon: Icon(
                    Icons.celebration_rounded,
                    color: Color(0xFF14181B),
                    size: 25.0,
                  ),
                  onPressed: () async {
                    context.pushNamed('AchievementPage');
                  },
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    'https://firebasestorage.googleapis.com/v0/b/wastelessfest.appspot.com/o/users%2FYn6DyPSfcCerwmKzdWg48Psht122%2Fuploads%2F1688391524751000.PNG?alt=media&token=b540ef98-61d5-4709-882d-5e8706b28b8d',
                    width: 220.0,
                    height: 73.0,
                    fit: BoxFit.fitWidth,
                  ),
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
                        currentUserPhoto,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 0.0, 0.0),
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
                    width: 20.0,
                    thickness: 2.0,
                    color: Color(0x00FFFFFF),
                  ),
                ),
                AuthUserStreamWidget(
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
              ],
            ),
          ),
          Container(
            width: 420.0,
            height: 280.0,
            decoration: BoxDecoration(
              color: Color(0xFFD8D8D8),
            ),
            child: DefaultTabController(
              length: 2,
              initialIndex: 0,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment(0.0, 0),
                    child: TabBar(
                      labelColor: Colors.black,
                      unselectedLabelColor:
                          FlutterFlowTheme.of(context).secondaryText,
                      labelStyle: FlutterFlowTheme.of(context).titleMedium,
                      indicatorColor: Color(0xFF58A778),
                      tabs: [
                        Tab(
                          text: 'Display Waste',
                        ),
                        Tab(
                          text: 'Display Co2',
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 12.0, 20.0, 12.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 189.0,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 5.0,
                                            color: Color(0x34090F13),
                                            offset: Offset(0.0, 2.0),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 8.0, 12.0, 8.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons.group_sharp,
                                                  color: Color(0xFF58A778),
                                                  size: 24.0,
                                                ),
                                                Text(
                                                  'Total waste saved this event',
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleLarge
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            Color(0xFF58A778),
                                                        fontSize: 18.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            Expanded(
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  StreamBuilder<
                                                      List<WasteCounterRecord>>(
                                                    stream:
                                                        queryWasteCounterRecord(
                                                      queryBuilder:
                                                          (wasteCounterRecord) =>
                                                              wasteCounterRecord.where(
                                                                  'WasteWeight',
                                                                  isNotEqualTo:
                                                                      null),
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  AlwaysStoppedAnimation<
                                                                      Color>(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<WasteCounterRecord>
                                                          textWasteCounterRecordList =
                                                          snapshot.data!;
                                                      return Text(
                                                        formatNumber(
                                                          functions.sumWasteEntrys(
                                                              textWasteCounterRecordList
                                                                  .toList()),
                                                          formatType: FormatType
                                                              .decimal,
                                                          decimalType:
                                                              DecimalType
                                                                  .automatic,
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .headlineLarge
                                                            .override(
                                                              fontFamily:
                                                                  'BrittanyExtraBold',
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 30.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                              useGoogleFonts:
                                                                  false,
                                                            ),
                                                      );
                                                    },
                                                  ),
                                                  SizedBox(
                                                    height: 50.0,
                                                    child: VerticalDivider(
                                                      thickness: 0.0,
                                                      color: Color(0x00FFFFFF),
                                                    ),
                                                  ),
                                                  Text(
                                                    'kg',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'BrittanyExtraBold',
                                                          color:
                                                              Color(0xFF727272),
                                                          fontSize: 25.0,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons.person,
                                                  color: Color(0xFF58A778),
                                                  size: 24.0,
                                                ),
                                                Text(
                                                  'You contributed',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            Color(0xFF58A778),
                                                        fontSize: 18.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                StreamBuilder<
                                                    List<WasteCounterRecord>>(
                                                  stream:
                                                      queryWasteCounterRecord(
                                                    queryBuilder:
                                                        (wasteCounterRecord) =>
                                                            wasteCounterRecord
                                                                .where(
                                                                    'WasteWeight',
                                                                    isNotEqualTo:
                                                                        null),
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50.0,
                                                          height: 50.0,
                                                          child:
                                                              CircularProgressIndicator(
                                                            valueColor:
                                                                AlwaysStoppedAnimation<
                                                                    Color>(
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<WasteCounterRecord>
                                                        textWasteCounterRecordList =
                                                        snapshot.data!;
                                                    return Text(
                                                      formatNumber(
                                                        functions
                                                            .sumUserWasteEntrys(
                                                                currentUserUid,
                                                                textWasteCounterRecordList
                                                                    .toList()),
                                                        formatType:
                                                            FormatType.decimal,
                                                        decimalType: DecimalType
                                                            .automatic,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'BrittanyExtraBold',
                                                            color: Colors.black,
                                                            fontSize: 30.0,
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                    );
                                                  },
                                                ),
                                                SizedBox(
                                                  height: 50.0,
                                                  child: VerticalDivider(
                                                    thickness: 0.0,
                                                    color: Color(0x00FFFFFF),
                                                  ),
                                                ),
                                                Text(
                                                  'kg',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'BrittanyExtraBold',
                                                        color:
                                                            Color(0xFF727272),
                                                        fontSize: 25.0,
                                                        fontWeight:
                                                            FontWeight.w800,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 12.0, 20.0, 12.0),
                                        child: Container(
                                          width: double.infinity,
                                          height: 189.0,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 4.0,
                                                color: Color(0x34090F13),
                                                offset: Offset(0.0, 2.0),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 8.0, 12.0, 8.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      Icons.group_rounded,
                                                      color: Color(0xFF58A778),
                                                      size: 24.0,
                                                    ),
                                                    Text(
                                                      'Total waste saved this event',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .titleLarge
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: Color(
                                                                0xFF58A778),
                                                            fontSize: 18.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                                Expanded(
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      StreamBuilder<
                                                          List<
                                                              WasteCounterRecord>>(
                                                        stream:
                                                            queryWasteCounterRecord(
                                                          queryBuilder: (wasteCounterRecord) =>
                                                              wasteCounterRecord.where(
                                                                  'WasteWeight',
                                                                  isNotEqualTo:
                                                                      null),
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 50.0,
                                                                height: 50.0,
                                                                child:
                                                                    CircularProgressIndicator(
                                                                  valueColor:
                                                                      AlwaysStoppedAnimation<
                                                                          Color>(
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                          List<WasteCounterRecord>
                                                              textWasteCounterRecordList =
                                                              snapshot.data!;
                                                          return Text(
                                                            formatNumber(
                                                              functions.sumCO2Entrys(
                                                                  textWasteCounterRecordList
                                                                      .toList()),
                                                              formatType:
                                                                  FormatType
                                                                      .decimal,
                                                              decimalType:
                                                                  DecimalType
                                                                      .automatic,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .headlineLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'BrittanyExtraBold',
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize:
                                                                      30.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w800,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          );
                                                        },
                                                      ),
                                                      SizedBox(
                                                        height: 50.0,
                                                        child: VerticalDivider(
                                                          thickness: 0.0,
                                                          color:
                                                              Color(0x00FFFFFF),
                                                        ),
                                                      ),
                                                      Text(
                                                        'kg',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'BrittanyExtraBold',
                                                              color: Color(
                                                                  0xFF727272),
                                                              fontSize: 25.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                              useGoogleFonts:
                                                                  false,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      Icons.person,
                                                      color: Color(0xFF58A778),
                                                      size: 24.0,
                                                    ),
                                                    Text(
                                                      'You contributed',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: Color(
                                                                0xFF58A778),
                                                            fontSize: 18.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    StreamBuilder<
                                                        List<
                                                            WasteCounterRecord>>(
                                                      stream:
                                                          queryWasteCounterRecord(
                                                        queryBuilder:
                                                            (wasteCounterRecord) =>
                                                                wasteCounterRecord.where(
                                                                    'WasteWeight',
                                                                    isNotEqualTo:
                                                                        null),
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 50.0,
                                                              height: 50.0,
                                                              child:
                                                                  CircularProgressIndicator(
                                                                valueColor:
                                                                    AlwaysStoppedAnimation<
                                                                        Color>(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<WasteCounterRecord>
                                                            textWasteCounterRecordList =
                                                            snapshot.data!;
                                                        return Text(
                                                          formatNumber(
                                                            functions.sumUserCO2Entrys(
                                                                currentUserUid,
                                                                textWasteCounterRecordList
                                                                    .toList()),
                                                            formatType:
                                                                FormatType
                                                                    .decimal,
                                                            decimalType:
                                                                DecimalType
                                                                    .automatic,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'BrittanyExtraBold',
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 30.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w800,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                        );
                                                      },
                                                    ),
                                                    SizedBox(
                                                      height: 50.0,
                                                      child: VerticalDivider(
                                                        thickness: 0.0,
                                                        color:
                                                            Color(0x00FFFFFF),
                                                      ),
                                                    ),
                                                    Text(
                                                      'kg',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'BrittanyExtraBold',
                                                            color: Color(
                                                                0xFF727272),
                                                            fontSize: 25.0,
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
