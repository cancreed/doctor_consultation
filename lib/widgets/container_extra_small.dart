
import 'package:doctor_consultation_app/const/const_doctor_consultation.dart';
import 'package:flutter/material.dart';

class ContainerExtraSmallIcon extends StatelessWidget {
  const ContainerExtraSmallIcon({
    Key? key,    required this.icon,
  }) : super(key: key);
  final Widget icon;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width /11.5,
      height: MediaQuery.of(context).size.height /23,
      decoration: BoxDecoration(color: ConstDoctorConsultation.colorWhite,borderRadius: ConstDoctorConsultation.borderRadius50),
      child: icon,
    );
  }
}