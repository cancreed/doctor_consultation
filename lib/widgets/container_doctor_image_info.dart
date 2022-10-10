
import 'package:doctor_consultation_app/const/const_doctor_consultation.dart';
import 'package:doctor_consultation_app/widgets/container_extra_small.dart';
import 'package:doctor_consultation_app/widgets/medium_context_text_doctor_consultation.dart';
import 'package:doctor_consultation_app/widgets/medium_title_text_doctor_consultations.dart';
import 'package:flutter/material.dart';

class ContainerDoctorSmall extends StatelessWidget {
  const ContainerDoctorSmall({
    Key? key,
    required Color colorIndigo,
    required Color colorRed, required this.textTitle, required this.textCommand, required this.image,
  }) : _colorIndigo = colorIndigo, _colorRed = colorRed, super(key: key);

  final Color _colorIndigo;
  final Color _colorRed;
  final String textTitle;
  final String textCommand ;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(width: MediaQuery.of(context).size.width /2,
    height: MediaQuery.of(context).size.height /3.5,
    decoration: BoxDecoration(color: Colors.purple[50],borderRadius: ConstDoctorConsultation.borderRadius15),
    
      child: Stack(
        children: [
          Positioned(
            bottom: 0,right: 0,left: 0,
            child: Image.asset(image)),
            Positioned(
              bottom: 0, right: 0, left: 0,
              child: Image.asset(ConstDoctorConsultation.doctorStack,fit: BoxFit.fill,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height /7,)),
            Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Center(
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                             ContainerExtraSmallIcon(icon: Icon(Icons.photo_camera_front,color: _colorIndigo,)),
                             ContainerExtraSmallIcon(icon: Icon(Icons.message_outlined,color: _colorRed,))
            
            ],),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40,left: 20),
                child: Column(mainAxisAlignment: MainAxisAlignment.end,crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MediumTitleTextDoctorConsultation(textTitle: textTitle, color: ConstDoctorConsultation.colorBlack,),
                   mediumContextTextDoctorConultation(textCommand: textCommand)
                  ],
                ),
              )
         
            
        ],
      ),
    );
  }
}
