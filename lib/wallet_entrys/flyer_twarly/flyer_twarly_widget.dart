import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'flyer_twarly_model.dart';
export 'flyer_twarly_model.dart';

class FlyerTwarlyWidget extends StatefulWidget {
  const FlyerTwarlyWidget({Key? key}) : super(key: key);

  @override
  _FlyerTwarlyWidgetState createState() => _FlyerTwarlyWidgetState();
}

class _FlyerTwarlyWidgetState extends State<FlyerTwarlyWidget> {
  late FlyerTwarlyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FlyerTwarlyModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 0.0, 0.0),
              child: Text(
                'Flyer: Twarley',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            SizedBox(
              height: 60.0,
              child: VerticalDivider(
                width: 140.0,
                thickness: 0.0,
                color: Color(0x00FFFFFF),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/3a9k2_3.png',
                width: 50.0,
                height: 50.0,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                child: Text(
                  'Introducing Twerly: The Mobile App Revolutionizing Waste Reduction at Exhibitions and Fairs\n\nIn today\'s environmentally conscious world, reducing waste and promoting sustainability have become crucial goals for businesses and individuals alike. Recognizing the need for an innovative solution, we present Twerly—a cutting-edge mobile application designed to revolutionize waste reduction at exhibitions and fairs.\n\nTwerly serves as a comprehensive platform that empowers event organizers, exhibitors, and attendees to actively participate in creating greener and more sustainable events. By leveraging the power of technology, this user-friendly app offers a range of features aimed at minimizing waste generation and encouraging responsible consumption.',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
              ),
            ),
            SizedBox(
              height: 100.0,
              child: VerticalDivider(
                width: 20.0,
                thickness: 1.0,
                color: Color(0x00FFFFFF),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  'https://picsum.photos/seed/238/600',
                  width: 100.0,
                  height: 258.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
