import 'package:flutter/material.dart';
import 'package:cannabusadmin/providers/app_states.dart';
import 'package:cannabusadmin/providers/products_provider.dart';
import 'package:cannabusadmin/providers/beautys_provider.dart';
import 'package:cannabusadmin/providers/medicinals_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cannabusadmin/screens/dashboard.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider.value(value: AppState()),
      ChangeNotifierProvider.value(value: ProductProvider()),
      ChangeNotifierProvider.value(value: BeautyProvider()),
      ChangeNotifierProvider.value(value: MedicinalProvider()),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    ),
  ));
}
