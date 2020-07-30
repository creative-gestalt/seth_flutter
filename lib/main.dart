import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:seth_flutter/injection.dart';
import 'package:seth_flutter/presentation/core/app_widget.dart';
import 'package:seth_flutter/routes.dart';
//import 'package:seth_flutter/src/blocs/quote_bloc.dart';
//import 'package:seth_flutter/src/screens/splash/intro_screen.dart';
//import 'package:seth_flutter/src/theme/colors.dart';
//import 'package:seth_flutter/src/utils/quote_repository.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(SethApp());
}
