import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'weight_equivalent_model.dart';
export 'weight_equivalent_model.dart';

class WeightEquivalentWidget extends StatefulWidget {
  const WeightEquivalentWidget({Key? key}) : super(key: key);

  @override
  _WeightEquivalentWidgetState createState() => _WeightEquivalentWidgetState();
}

class _WeightEquivalentWidgetState extends State<WeightEquivalentWidget> {
  late WeightEquivalentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WeightEquivalentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container();
  }
}
