
import 'package:doctor_consultation_app/const/const_doctor_consultation.dart';
import 'package:flutter/material.dart';

class ElevatedButtonMiddle extends StatelessWidget {
  const ElevatedButtonMiddle({
    Key? key, required this.icon, required this.color,
  }) : super(key: key);
  final Widget icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height / 14,
        width: MediaQuery.of(context).size.width / 7,
        child: ElevatedButton(
          onPressed: () {},
          child: icon,
          style: ElevatedButton.styleFrom(
              primary: color, shape: RoundedRectangleBorder(borderRadius: ConstDoctorConsultation.borderRadius15),
              shadowColor: ConstDoctorConsultation.colorBlack),
        ));
  }
}
