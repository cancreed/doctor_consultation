import 'package:doctor_consultation_app/const/const_doctor_consultation.dart';
import 'package:doctor_consultation_app/widgets/command_text_doctor_consultation.dart';
import 'package:doctor_consultation_app/widgets/tittle_text_doctor_consultation.dart';
import 'package:flutter/material.dart';

import 'bottom_navigation_bar.dart';

class InfoDoctorConsultation extends StatelessWidget {
   InfoDoctorConsultation({super.key});
  double _floatActionButtonIconSize = 50;

  get floatingActionButton => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Image.asset(
            ConstDoctorConsultation.infoImage,
            fit: BoxFit.fill,
          ),
          ConstDoctorConsultation.sizedboxHeight40,
          TittleTextDoctorConsultation(
            text: ConstDoctorConsultation.infoTextTittle, color: ConstDoctorConsultation.colorBlack,
          ),
          ConstDoctorConsultation.sizedboxHeight10,
          Center(
            child: TextCommandDoctorConsultation(
              text: ConstDoctorConsultation.infoTextCommand, color: ConstDoctorConsultation.colorGrey, textAlign: TextAlign.center,
            ),
          ),
        ]),
      ),
      floatingActionButton:FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNAvigationBarView(),));
        },
        backgroundColor:ConstDoctorConsultation.colorIndigo400,
        child: Icon(
          Icons.arrow_forward_rounded,
          size: _floatActionButtonIconSize
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  
}
