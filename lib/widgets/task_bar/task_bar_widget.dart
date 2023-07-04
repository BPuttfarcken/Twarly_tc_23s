import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'task_bar_model.dart';
export 'task_bar_model.dart';

class TaskBarWidget extends StatefulWidget {
  const TaskBarWidget({Key? key}) : super(key: key);

  @override
  _TaskBarWidgetState createState() => _TaskBarWidgetState();
}

class _TaskBarWidgetState extends State<TaskBarWidget> {
  late TaskBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TaskBarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FlutterFlowIconButton(
          borderColor: Color(0x00FFFFFF),
          borderRadius: 0.0,
          borderWidth: 0.0,
          buttonSize: 50.0,
          fillColor: Color(0x00FFFFFF),
          icon: Icon(
            Icons.receipt_outlined,
            color: Colors.black,
            size: 35.0,
          ),
          onPressed: () async {
            context.pushNamed('Details11EventTicket');
          },
        ),
        FlutterFlowIconButton(
          borderColor: Color(0x00DB1919),
          borderRadius: 20.0,
          borderWidth: 1.0,
          buttonSize: 50.0,
          fillColor: Color(0x00DB1919),
          icon: Icon(
            Icons.account_balance_wallet_outlined,
            color: Colors.black,
            size: 35.0,
          ),
          onPressed: () async {
            context.pushNamed('Wallet');
          },
        ),
        FlutterFlowIconButton(
          borderColor: Color(0x00DB1919),
          borderRadius: 20.0,
          borderWidth: 1.0,
          buttonSize: 50.0,
          fillColor: Color(0x00FFFFFF),
          icon: Icon(
            Icons.location_on_outlined,
            color: Colors.black,
            size: 35.0,
          ),
          onPressed: () async {
            context.pushNamed('VenueMap');
          },
        ),
        FlutterFlowIconButton(
          borderColor: Color(0x00FFFFFF),
          borderRadius: 20.0,
          borderWidth: 1.0,
          buttonSize: 50.0,
          fillColor: Color(0x00FFFFFF),
          icon: Icon(
            Icons.chat_outlined,
            color: Colors.black,
            size: 35.0,
          ),
          onPressed: () {
            print('Chat pressed ...');
          },
        ),
      ],
    );
  }
}
