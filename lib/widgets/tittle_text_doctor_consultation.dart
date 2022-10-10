
import 'package:doctor_consultation_app/const/const_doctor_consultation.dart';
import 'package:flutter/material.dart';

class TittleTextDoctorConsultation extends StatelessWidget {
  const TittleTextDoctorConsultation({
    Key? key, required this.text, required this.color,
  }) : super(key: key);
final String text;
final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.headline5?.copyWith(color: color,fontWeight: FontWeight.bold),);
  }
}