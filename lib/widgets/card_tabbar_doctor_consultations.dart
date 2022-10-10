
import 'package:doctor_consultation_app/const/const_doctor_consultation.dart';
import 'package:doctor_consultation_app/widgets/medium_title_text_doctor_consultations.dart';
import 'package:flutter/material.dart';

class CardTabbarDetail extends StatelessWidget {
  const CardTabbarDetail({
    Key? key,
   required this.text, required this.color,
  }) : super(key: key);
final String text;
final Color color;
  

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 100,
    height: 300,
      child: Card(
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: ConstDoctorConsultation.colorIndigo),
                          borderRadius:
                              ConstDoctorConsultation.borderRadius15),
                      child: Column(
                        children: [
                          MediumTitleTextDoctorConsultation(textTitle: text, color: color,),
                             MediumTitleTextDoctorConsultation(textTitle: text, color: color,),

                          
                        ],
                      )
                    ),
    );
  }
}
