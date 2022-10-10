
import 'package:doctor_consultation_app/const/const_doctor_consultation.dart';
import 'package:flutter/material.dart';

class mediumContextTextDoctorConultation extends StatelessWidget {
  const mediumContextTextDoctorConultation({
    Key? key,
    required this.textCommand,
  }) : super(key: key);

  final String textCommand;

  @override
  Widget build(BuildContext context) {
    return Text(textCommand,style: Theme.of(context).textTheme.titleMedium?.copyWith(color: ConstDoctorConsultation.colorRed),);
  }
}

