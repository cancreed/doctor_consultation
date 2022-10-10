
import 'package:doctor_consultation_app/const/const_doctor_consultation.dart';
import 'package:flutter/material.dart';

class TextCommandDoctorConsultation extends StatelessWidget {
  const TextCommandDoctorConsultation({
    Key? key, required this.text, required this.color, required this.textAlign,
  }) : super(key: key);
final String text;
final Color color;
final TextAlign textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(text,textAlign: textAlign, style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: color,fontSize: 16));
  }
}
