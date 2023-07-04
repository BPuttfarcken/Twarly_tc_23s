import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  double _TotalWasteCounter = 3;
  double get TotalWasteCounter => _TotalWasteCounter;
  set TotalWasteCounter(double _value) {
    _TotalWasteCounter = _value;
  }

  List<DocumentReference> _AppStateWasteCounterReference = [];
  List<DocumentReference> get AppStateWasteCounterReference =>
      _AppStateWasteCounterReference;
  set AppStateWasteCounterReference(List<DocumentReference> _value) {
    _AppStateWasteCounterReference = _value;
  }

  void addToAppStateWasteCounterReference(DocumentReference _value) {
    _AppStateWasteCounterReference.add(_value);
  }

  void removeFromAppStateWasteCounterReference(DocumentReference _value) {
    _AppStateWasteCounterReference.remove(_value);
  }

  void removeAtIndexFromAppStateWasteCounterReference(int _index) {
    _AppStateWasteCounterReference.removeAt(_index);
  }

  void updateAppStateWasteCounterReferenceAtIndex(
    int _index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _AppStateWasteCounterReference[_index] =
        updateFn(_AppStateWasteCounterReference[_index]);
  }

  String _SchriftzugGruen = '';
  String get SchriftzugGruen => _SchriftzugGruen;
  set SchriftzugGruen(String _value) {
    _SchriftzugGruen = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
