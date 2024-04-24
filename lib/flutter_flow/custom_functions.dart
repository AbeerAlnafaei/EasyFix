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

bool? showSearchResult(
  String? textSearchFor,
  String? textSearchIn,
) {
  if (textSearchFor == null || textSearchIn == null) {
    return true; // or true depending on your logic when either is null
  }
  return textSearchIn.toLowerCase().contains(textSearchFor.toLowerCase());
}
