
import 'package:doctor_consultation_app/const/const_doctor_consultation.dart';
import 'package:flutter/material.dart';

class ContainerSmallIcon extends StatelessWidget {
  const ContainerSmallIcon({
    Key? key,  required this.color,  required this.icon,
  }) : super(key: key);
  final Widget icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width /10,
      height: MediaQuery.of(context).size.height /20,
      decoration: BoxDecoration(color: color,borderRadius: ConstDoctorConsultation.borderRadius50),
      child: icon,
    );
  }
}