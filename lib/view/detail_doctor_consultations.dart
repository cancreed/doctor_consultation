import 'package:doctor_consultation_app/const/const_doctor_consultation.dart';
import 'package:doctor_consultation_app/widgets/Container_small_icon.dart';
import 'package:doctor_consultation_app/widgets/command_text_doctor_consultation.dart';
import 'package:doctor_consultation_app/widgets/extra_small_context.dart';
import 'package:doctor_consultation_app/widgets/medium_title_text_doctor_consultations.dart';
import 'package:doctor_consultation_app/widgets/tittle_text_doctor_consultation.dart';
import 'package:flutter/material.dart';

class DetailDoctorConsultation extends StatefulWidget {
  DetailDoctorConsultation({super.key});

  @override
  State<DetailDoctorConsultation> createState() =>
      _DetailDoctorConsultationState();
}

class _DetailDoctorConsultationState extends State<DetailDoctorConsultation>
    with TickerProviderStateMixin {
      double _edgeInsetsRightLeftTopIcon =10;
      double _elevatedButtonContainer =14;
  double _containerHeightBig = 1.2;

  double _containerHeightSmall = 6;

  double _conteinerwidhtSmall = 3;

  double _cardHeight = 5;

  double _containerLineWidht = 180;

  double _ContainerLineHeight = 16;
  late final TabController _tabController;
  static List<Tab> _tabBarList = [
    Tab(
      child:Center(child: Text(ConstDoctorConsultation.mon,textAlign: TextAlign.center,style: TextStyle(fontSize: 20),))
                  ),
                 
      
    Tab(
      child:Center(child: Text(ConstDoctorConsultation.tue,textAlign: TextAlign.center,style: TextStyle(fontSize: 20)))
    ),
    Tab(
      child: Center(child: Text(ConstDoctorConsultation.wed,textAlign: TextAlign.center,style: TextStyle(fontSize: 20)))
    ),
    Tab(
      child:Center(child: Text(ConstDoctorConsultation.thu,textAlign: TextAlign.center,style: TextStyle(fontSize: 20)))
    ),
    Tab(
      child: Center(child: Text(ConstDoctorConsultation.fri,textAlign: TextAlign.center,style: TextStyle(fontSize: 20)))
    ),
  ];

  
  static get text => null;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabBarList.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _tabBarList.length,
        child: Scaffold(
          backgroundColor: ConstDoctorConsultation.colorIndigo400,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ConstDoctorConsultation.sizedboxHeight80,
                Padding(
                  padding: ConstDoctorConsultation.edgeINsetsDetailTopIconText,
                  child: _RowTopIconAndTitle(),
                ),
                ConstDoctorConsultation.sizedboxHeight40,
                Container(
                  width: MediaQuery.of(context).size.width,
                  height:
                      MediaQuery.of(context).size.height / _containerHeightBig,
                  decoration: BoxDecoration(
                      color: ConstDoctorConsultation.colorWhite,
                      borderRadius: ConstDoctorConsultation.borderRadiusonly50),
                  child: Padding(
                    padding: ConstDoctorConsultation.edgeInsetsDetail,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _RowInContainerIMageText(context),
                        ConstDoctorConsultation.sizedboxHeight10,
                        _SizedBoxContainerInCard(context),
                        ConstDoctorConsultation.sizedboxHeight10,
                        _DetailTitleAndText(),
                        ConstDoctorConsultation.sizedboxHeight10,
                        _DetailTitleANdTextUnderSecond(),
                         ConstDoctorConsultation.sizedboxHeight10,
                        _TabbarDetail(),
                        ConstDoctorConsultation.sizedBoxheight30,
                      _ContainerButtonDetailBottom(context)
                       
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Container _ContainerButtonDetailBottom(BuildContext context) {
    return Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height/14,
                      decoration: BoxDecoration(gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 1.0],
            colors: [
              ConstDoctorConsultation.colorIndigo,
              ConstDoctorConsultation.extraLightPink
            ],),
            borderRadius: ConstDoctorConsultation.borderRadius25),
            child: Center(
              child: Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.save_alt_outlined,color: ConstDoctorConsultation.colorWhite,),
                  MediumTitleTextDoctorConsultation(textTitle: ConstDoctorConsultation.bookAppoitment, color: ConstDoctorConsultation.colorWhite)
                ],
              ),
            ),
                    );
  }
  TabBar _TabbarDetail() {
    return TabBar(
                      tabs: _tabBarList,labelPadding: EdgeInsets.only(right: 20,left: 20),
                      isScrollable: true,
                      unselectedLabelColor: ConstDoctorConsultation.colorIndigo,
                      labelColor: ConstDoctorConsultation.colorWhite,
                      controller: _tabController,
                      indicator: BoxDecoration(
                          color: ConstDoctorConsultation.colorIndigo,
                          borderRadius: ConstDoctorConsultation.borderRadius15),
                    );
  }

  Column _DetailTitleANdTextUnderSecond() {
    return Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.access_time_rounded,
                              color: ConstDoctorConsultation.colorIndigo,
                            ),
                            Text(
                              ConstDoctorConsultation.workingHours,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ],
                    );
  }

  Column _DetailTitleAndText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MediumTitleTextDoctorConsultation(
                textTitle: ConstDoctorConsultation.aboutDoctor,
                color: ConstDoctorConsultation.colorBlack),
            TextCommandDoctorConsultation(
              text: ConstDoctorConsultation.seeReviews,
              color: ConstDoctorConsultation.colorIndigo,
              textAlign: TextAlign.center,
            )
          ],
        ),
        TextCommandDoctorConsultation(
          text: ConstDoctorConsultation.detailPageContext,
          color: ConstDoctorConsultation.colorGrey,
          textAlign: TextAlign.start,
        )
      ],
    );
  }

  SizedBox _SizedBoxContainerInCard(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / _cardHeight,
      child: Card(
        shape: RoundedRectangleBorder(
            side: BorderSide(color: ConstDoctorConsultation.colorIndigo),
            borderRadius: ConstDoctorConsultation.borderRadius15),
        child: Padding(
          padding: ConstDoctorConsultation.edgeInsetsDetail,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ContainerSmallIcon(
                      color: ConstDoctorConsultation.colorIndigo,
                      icon: Icon(
                        Icons.people,
                        color: ConstDoctorConsultation.lightgreen,
                      )),
                  ExtraSmallContext(
                      text: ConstDoctorConsultation.experience,
                      color: ConstDoctorConsultation.colorGrey),
                  Row(
                    children: [
                      MediumTitleTextDoctorConsultation(
                        textTitle: ConstDoctorConsultation.downloadk1,
                        color: ConstDoctorConsultation.colorIndigo,
                      ),
                      Icon(
                        Icons.add,
                        size: 20,
                        color: ConstDoctorConsultation.colorIndigo,
                      )
                    ],
                  )
                ],
              ),
              _ContainerLineBlack(context),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ContainerSmallIcon(
                      color: ConstDoctorConsultation.colorIndigo,
                      icon: Icon(
                        Icons.people,
                        color: ConstDoctorConsultation.lightgreen,
                      )),
                  ExtraSmallContext(
                      text: ConstDoctorConsultation.patients,
                      color: ConstDoctorConsultation.colorGrey),
                  Row(
                    children: [
                      MediumTitleTextDoctorConsultation(
                        textTitle: ConstDoctorConsultation.years5,
                        color: ConstDoctorConsultation.colorIndigo,
                      ),
                      Icon(
                        Icons.add,
                        size: 20,
                        color: ConstDoctorConsultation.colorIndigo,
                      )
                    ],
                  )
                ],
              ),
              _ContainerLineBlack(context),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ContainerSmallIcon(
                      color: ConstDoctorConsultation.colorsAmber,
                      icon: Icon(
                        Icons.people,
                        color: ConstDoctorConsultation.colorIndigo,
                      )),
                  ExtraSmallContext(
                      text: ConstDoctorConsultation.rating,
                      color: ConstDoctorConsultation.colorGrey),
                  MediumTitleTextDoctorConsultation(
                    textTitle: ConstDoctorConsultation.years5,
                    color: ConstDoctorConsultation.colorsAmber,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _ContainerLineBlack(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / _containerLineWidht,
      height: MediaQuery.of(context).size.height / _ContainerLineHeight,
      color: ConstDoctorConsultation.colorBlack,
    );
  }

  Row _RowTopIconAndTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.arrow_back,
          color: ConstDoctorConsultation.colorWhite,
        ),
        TittleTextDoctorConsultation(
            text: ConstDoctorConsultation.doctorDetailText,
            color: ConstDoctorConsultation.colorWhite),
        Icon(
          Icons.category,
          color: ConstDoctorConsultation.colorWhite,
        )
      ],
    );
  }

  Row _RowInContainerIMageText(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width / _conteinerwidhtSmall,
          height: MediaQuery.of(context).size.height / _containerHeightSmall,
          decoration: BoxDecoration(
              color: ConstDoctorConsultation.extraLightRed,
              borderRadius: ConstDoctorConsultation.borderRadius25),
          child: Image.asset(ConstDoctorConsultation.womanDoctor),
        ),
        ConstDoctorConsultation.sizedboxHWidht10,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TittleTextDoctorConsultation(
                text: ConstDoctorConsultation.drSeamle,
                color: ConstDoctorConsultation.colorBlack),
            TextCommandDoctorConsultation(
              text: ConstDoctorConsultation.drInfo,
              color: ConstDoctorConsultation.colorRed,
              textAlign: TextAlign.center,
            ),
            ConstDoctorConsultation.sizedBoxheight20,
            Row(
              children: [
                ContainerSmallIcon(
                    color: ConstDoctorConsultation.purpleLight,
                    icon: Icon(
                      Icons.call,
                      color: ConstDoctorConsultation.colorIndigo400,
                    )),
                ConstDoctorConsultation.sizedboxHWidht20,
                ContainerSmallIcon(
                    color: ConstDoctorConsultation.extraLightPink,
                    icon: Icon(
                      Icons.video_camera_front_outlined,
                      color: ConstDoctorConsultation.colorRed,
                    )),
                ConstDoctorConsultation.sizedboxHWidht20,
                ContainerSmallIcon(
                    color: ConstDoctorConsultation.lightgreen,
                    icon: Icon(
                      Icons.message,
                      color: ConstDoctorConsultation.elevatebButtonRGB,
                    )),
              ],
            )
          ],
        )
      ],
    );
  }
}
