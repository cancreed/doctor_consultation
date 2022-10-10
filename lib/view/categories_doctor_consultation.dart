



import 'package:doctor_consultation_app/const/const_doctor_consultation.dart';
import 'package:doctor_consultation_app/view/detail_doctor_consultations.dart';
import 'package:doctor_consultation_app/widgets/command_text_doctor_consultation.dart';
import 'package:doctor_consultation_app/widgets/extra_small_context.dart';
import 'package:doctor_consultation_app/widgets/medium_context_text_doctor_consultation.dart';
import 'package:doctor_consultation_app/widgets/medium_title_text_doctor_consultations.dart';
import 'package:doctor_consultation_app/widgets/tittle_text_doctor_consultation.dart';
import 'package:flutter/material.dart';

class CategoriesDoctorConsultation extends StatelessWidget {
  CategoriesDoctorConsultation({super.key});


 double _sizeBoxContainerWihtg = 1.2;
 double _sizeBoxContainerHeight = 3.8;
 double _sizedBoxIconAndTitleWidht = 4;
 double _sizedBoxRowDateTextWidht = 7;
  double _sizedBoxRowDateTextHeight =14;
  double _sizedBoxTopContainer = 3.5;
  double _iconSize = 20;
  double _buttonWidht = 2.5;
  double _rowCarInImageWidht = 6;
double _rowCarInImageHeight = 12;  



  
  
  
  static BuildContext? get context => null;@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: ConstDoctorConsultation.edgeInsetsCategories,
        child: SingleChildScrollView(
          child: Column(
            children: [
              _RowTopIconAndTitle(context),
        ConstDoctorConsultation.sizedBoxheight20,
              _RowDateTextICon(context),
              ConstDoctorConsultation.sizedBoxheight30,
             _containerCardDoctor(context),
             _containerCardDoctor(context)
            ],
          ),
        ),
      ),
    );
  }

Container _containerCardDoctor(BuildContext context) {
  return Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height /_sizedBoxTopContainer,
            decoration: BoxDecoration(color: ConstDoctorConsultation.colorGrey350,borderRadius: ConstDoctorConsultation.borderRadius15),
         child: Stack(
          children: [
            Center(
              child: Container(
                 width: MediaQuery.of(context).size.width /_sizeBoxContainerWihtg,
              height: MediaQuery.of(context).size.height /_sizeBoxContainerHeight,
              decoration: BoxDecoration(color: ConstDoctorConsultation.colorWhite ,borderRadius: ConstDoctorConsultation.borderRadius15),
             child: Column(
              children: [
                Padding(
                  padding:  ConstDoctorConsultation.edgeInsetsOnlyCategoriesCardPadding,
                  child: _RowCardInImage(context),
                  
                ),
              
                Padding(
                  padding:  ConstDoctorConsultation.edgeInsetsOnlyCategoriesCardPadding,
                  child: _rowCardInIconAndText(),
                ),
                Padding(
                  padding: ConstDoctorConsultation.edgeInsetsOnlyCategoriesCardPadding,
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width/_buttonWidht,
                        child: ElevatedButton(onPressed: () {}, child: Text(ConstDoctorConsultation.cancel,style: TextStyle(color: ConstDoctorConsultation.colorRed),),
                        style: ElevatedButton.styleFrom(primary: ConstDoctorConsultation.extraLightRed,shape: RoundedRectangleBorder(borderRadius:ConstDoctorConsultation.borderRadius15))),
                      ),
                       SizedBox(width: MediaQuery.of(context).size.width /_buttonWidht,
                         child: ElevatedButton(onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => DetailDoctorConsultation(),));
                         }, child: Text(ConstDoctorConsultation.reschedule,style: TextStyle(color: ConstDoctorConsultation.colorWhite),),
                      style: ElevatedButton.styleFrom(primary: ConstDoctorConsultation.colorIndigo400, shape: RoundedRectangleBorder(borderRadius:ConstDoctorConsultation.borderRadius15),),
                    
                         ),
                       )
                    ],
                  ),
                )

              ],
             ),
              ),
            )
          ],
         ),
          );
}

Row _rowCardInIconAndText() {
  return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.date_range_rounded,color: ConstDoctorConsultation.colorIndigo400,size: _iconSize,),
        ExtraSmallContext(text: ConstDoctorConsultation.doctorDate, color: ConstDoctorConsultation.colorIndigo400,)
                        ],
                      ),
                      Row(children: [
                        Icon(Icons.timer,size:_iconSize,color: ConstDoctorConsultation.colorRed,),
                        ExtraSmallContext(text: ConstDoctorConsultation.doctorHour, color: ConstDoctorConsultation.colorRed,)
                      ],),
                      Row(
                        children: [
                          Icon(Icons.check_circle_outline_outlined,color: ConstDoctorConsultation.colorGreen,),
                          ExtraSmallContext(text: ConstDoctorConsultation.confirmed, color: ConstDoctorConsultation.colorIndigo400)
                        ],
                      )
                    ],
                  );
}

Row _RowCardInImage(BuildContext context) {
  return Row(
                    children: [
                     
                         Container(
                          width: MediaQuery.of(context).size.width /_rowCarInImageWidht,
                          height: MediaQuery.of(context).size.height /_rowCarInImageHeight,
                          decoration: BoxDecoration(borderRadius: ConstDoctorConsultation.borderRadius15,color: ConstDoctorConsultation.purpleLight),
                          child: Image.asset(ConstDoctorConsultation.womanDoctor,fit: BoxFit.fill,),
                        
                        
                      ),
                      
                      ConstDoctorConsultation.sizedboxHWidht10,
                      _CardRowInColumn(),
                  
                    ],
                  );
}

Column _CardRowInColumn() {
  return Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MediumTitleTextDoctorConsultation(textTitle: ConstDoctorConsultation.drSeamle, color: ConstDoctorConsultation.colorBlack,),
                              mediumContextTextDoctorConultation(textCommand: ConstDoctorConsultation.drInfo),
                              Row(
                                children: [
                                  Icon(Icons.star,color: ConstDoctorConsultation.colorsAmber),
                                  TextCommandDoctorConsultation(text: ConstDoctorConsultation.point, color: ConstDoctorConsultation.colorBlack, textAlign: TextAlign.start,)
                                ],
                              )
                        ],
                      );
}

  Row _RowDateTextICon(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / _sizedBoxRowDateTextWidht,
                    height: MediaQuery.of(context).size.height / _sizedBoxRowDateTextHeight,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: ConstDoctorConsultation.colorIndigo),
                          borderRadius:
                              ConstDoctorConsultation.borderRadius15),
                      child: Icon(
                        Icons.date_range_outlined,
                        color: ConstDoctorConsultation.colorRed,
                      ),
                    ),
                  ),
               ConstDoctorConsultation.sizedboxHWidht10,
                  Text(
                    ConstDoctorConsultation.numberDate,
                    style: Theme.of(context).textTheme.headline3?.copyWith(
                        color: ConstDoctorConsultation.colorBlack,
                        fontWeight: FontWeight.bold),
                  ),
                 ConstDoctorConsultation.sizedboxHWidht10,
                  Column(
                    children: [
                      TextCommandDoctorConsultation(text: ConstDoctorConsultation.tuesday, color: ConstDoctorConsultation.colorGrey, textAlign: TextAlign.center,),
                    Text(ConstDoctorConsultation.may2022,style: Theme.of(context).textTheme.titleMedium?.copyWith(color: ConstDoctorConsultation.colorBlack),),
                    
                    ],
                  ),

                ],
              ),
              Row(
                children: [
                  TextCommandDoctorConsultation(text:ConstDoctorConsultation.upcoming , color: ConstDoctorConsultation.colorIndigo, textAlign: TextAlign.center,),
                  Icon(Icons.arrow_drop_down,color: ConstDoctorConsultation.colorIndigo,)
                ],
              )
            ],
            
          );
  }

  Row _RowTopIconAndTitle(BuildContext context) {
    return Row(
            children: [
              Icon(
                Icons.arrow_back,
                color: ConstDoctorConsultation.colorIndigo,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / _sizedBoxIconAndTitleWidht,
              ),
              Center(
                  child: TittleTextDoctorConsultation(
                      text: ConstDoctorConsultation.appoitment,
                      color: ConstDoctorConsultation.colorIndigo)),
            ],
          );
  }
}
