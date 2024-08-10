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
import '/auth/firebase_auth/auth_util.dart';

String returnlowest(
  double carbs,
  double protiens,
  double fiber,
  double sugars,
  double fat,
) {
  // a function that takes thr values of carbs,protiens,fiber,sugars,fat and returns the nutrient that as the lowest value
  List<double> nutrients = [carbs, protiens, fiber, sugars, fat];
  double lowest = nutrients.reduce(math.min);
  if (lowest == carbs) {
    return 'carbs';
  } else if (lowest == protiens) {
    return 'proteins';
  } else if (lowest == fiber) {
    return 'fiber';
  } else if (lowest == sugars) {
    return 'sugars';
  } else {
    return 'fat';
  }
}
