import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

double sumWasteEntrys(List<WasteCounterRecord> argumentWasteCounter) {
  // sum up wasteweight entries of the wastecounter collection
  double sum = 0;
  for (WasteCounterRecord record in argumentWasteCounter) {
    sum += record.wasteWeight;
  }
  return sum;
}

double sumUserWasteEntrys(
  String userID,
  List<WasteCounterRecord> dataset,
) {
  double sum = 0;
  for (WasteCounterRecord record in dataset) {
    if (record.userID == userID) {
      sum += record.wasteWeight;
    }
  }
  return sum;
}

double sumCO2Entrys(List<WasteCounterRecord> dataset) {
  // sum up Co2 entries of the wastecounter collection
  double sum = 0;
  for (WasteCounterRecord record in dataset) {
    sum += record.savedCO2;
  }
  return sum;
}

double sumUserCO2Entrys(
  String userID,
  List<WasteCounterRecord> dataset,
) {
  double sum = 0;
  for (WasteCounterRecord record in dataset) {
    if (record.userID == userID) {
      sum += record.savedCO2;
    }
  }
  return sum;
}
