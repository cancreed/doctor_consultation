import 'package:doctor_consultation_app/const/const_doctor_consultation.dart';
import 'package:doctor_consultation_app/view/home_doctor_consultation.dart';
import 'package:doctor_consultation_app/view/bottom_navigation_bar.dart';
import 'package:doctor_consultation_app/widgets/tittle_text_doctor_consultation.dart';
import 'package:flutter/material.dart';

class ShowBottomSheet extends StatelessWidget {
   ShowBottomSheet({super.key});
  double _elevatedButtonHeight =16;

  @override
  Widget build(BuildContext context) {
    return 
    
    
    
    
    
    
    
    Scaffold(
      backgroundColor: ConstDoctorConsultation.colorIndigo,
      body: Padding(
        padding: ConstDoctorConsultation.edgeInsetsShowBottom,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                   
                   ConstDoctorConsultation.sizedBoxheight20,
                  _TittleTextTop(),
                  ConstDoctorConsultation.sizedBoxheight20,
                  _textFieldEMAil(),
                  ConstDoctorConsultation.sizedBoxheight30,
                  _TextFieldPassword(),],
              ),
              ConstDoctorConsultation.sizedboxHeight80,
              _SizedBoxElevatedButton(context)
            ],
          ),
        ),
      ),
    );
  }

  TittleTextDoctorConsultation _TittleTextTop() => TittleTextDoctorConsultation(text: ConstDoctorConsultation.registerEdgeUs, color: ConstDoctorConsultation.colorWhite);

  SizedBox _SizedBoxElevatedButton(BuildContext context) {
    return SizedBox(width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height /_elevatedButtonHeight,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Center(
                      child: Text(
                    ConstDoctorConsultation.signIn,
                    style: TextStyle(color: ConstDoctorConsultation.colorBlack),
                  )),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ConstDoctorConsultation.colorWhite,
                      shape: RoundedRectangleBorder(
                          borderRadius: ConstDoctorConsultation.borderRadius25))),
            );
  }

  TextField _TextFieldPassword() {
    return TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search,
                        color: ConstDoctorConsultation.colorBlack),
                    fillColor: ConstDoctorConsultation.colorWhite,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: ConstDoctorConsultation.borderRadius15),
                   
                    hintText: ConstDoctorConsultation.password,
                  ),
                controller: TextEditingController(),
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                );
  }

  TextField _textFieldEMAil() {
    return TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search,
                        color: ConstDoctorConsultation.colorBlack),
                    fillColor: ConstDoctorConsultation.colorWhite,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: ConstDoctorConsultation.borderRadius15),
                    label: Text(ConstDoctorConsultation.mail,
                        style: TextStyle(
                            color: ConstDoctorConsultation.colorBlack)),
                    hintText: ConstDoctorConsultation.mail,
                  ),
                );
  }
}
