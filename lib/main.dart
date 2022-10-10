import 'package:doctor_consultation_app/view/categories_doctor_consultation.dart';
import 'package:doctor_consultation_app/view/detail_doctor_consultations.dart';
import 'package:doctor_consultation_app/view/home_doctor_consultation.dart';
import 'package:doctor_consultation_app/view/info_doctor_consultation.dart';
import 'package:doctor_consultation_app/view/bottom_navigation_bar.dart';
import 'package:doctor_consultation_app/widgets/container_doctor_image_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/box.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.indigo,
      ),
      debugShowCheckedModeBanner: false,
      home:  InfoDoctorConsultation(),
    );
  }
}
