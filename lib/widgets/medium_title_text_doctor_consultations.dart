
import 'package:doctor_consultation_app/const/const_doctor_consultation.dart';
import 'package:flutter/material.dart';

class MediumTitleTextDoctorConsultation extends StatelessWidget {
  const MediumTitleTextDoctorConsultation({
    Key? key,
    required this.textTitle, required this.color,
  }) : super(key: key);

  final String textTitle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(textTitle,style: Theme.of(context).textTheme.titleLarge?.copyWith(color: color),);
  }
}