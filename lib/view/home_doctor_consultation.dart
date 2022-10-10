import 'package:doctor_consultation_app/const/const_doctor_consultation.dart';
import 'package:doctor_consultation_app/view/categories_doctor_consultation.dart';
import 'package:doctor_consultation_app/widgets/Container_small_icon.dart';
import 'package:doctor_consultation_app/widgets/command_text_doctor_consultation.dart';
import 'package:doctor_consultation_app/widgets/container_doctor_image_info.dart';
import 'package:doctor_consultation_app/widgets/elevated_button_middle.dart';
import 'package:flutter/material.dart';

class HomeDoctorConsultation extends StatelessWidget {
  const HomeDoctorConsultation({
    super.key,
  });
  final double _top = 60;
  final String _containerCommand =
      'early protection for family\n& friends health';
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(ConstDoctorConsultation.homeTopImage),
                Positioned(
                  top: _top,
                  right: 15,
                  left: 15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _RowTopLeftIconAndText(context),
                      _RowRightIcon(context),
                    ],
                  ),
                ),
                _PaddingTextField(),
                _PaddingImageOnButton(context)
              ],
            ),
            Padding(
              padding: ConstDoctorConsultation.edgeInsetsShowBottom,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _ContainerGradientTitleImage(context),
                  ConstDoctorConsultation.sizedboxHeight15,
                  _RowIconsndTextButton(),
                  ConstDoctorConsultation.sizedboxHeight15,
                  _TextTittleGradientHome(context),
                  ConstDoctorConsultation.sizedboxHeight15,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: _RowHomeDoctorInfoCard(context),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Row _RowHomeDoctorInfoCard(context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CategoriesDoctorConsultation(),
                ));
          },
          child: ContainerDoctorSmall(
            colorIndigo: ConstDoctorConsultation.colorIndigo,
            colorRed: ConstDoctorConsultation.colorRed,
            textCommand: ConstDoctorConsultation.drInfo,
            textTitle: ConstDoctorConsultation.drName,
            image: ConstDoctorConsultation.womanDoctor,
          ),
        ),
        ConstDoctorConsultation.sizedboxHWidht10,
        ContainerDoctorSmall(
            colorIndigo: ConstDoctorConsultation.colorIndigo,
            colorRed: ConstDoctorConsultation.colorRed,
            textCommand: ConstDoctorConsultation.drInfo,
            textTitle: ConstDoctorConsultation.drName,
            image: ConstDoctorConsultation.womanDoctor),
        ConstDoctorConsultation.sizedboxHWidht10,
        ContainerDoctorSmall(
          colorIndigo: ConstDoctorConsultation.colorIndigo,
          colorRed: ConstDoctorConsultation.colorRed,
          textCommand: ConstDoctorConsultation.drInfo,
          textTitle: ConstDoctorConsultation.drName,
          image: ConstDoctorConsultation.womanDoctor,
        ),
      ],
    );
  }

  Container _ContainerGradientTitleImage(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 5,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: ConstDoctorConsultation.borderRadius25,
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                ConstDoctorConsultation.colorIndigo,
                Color.fromARGB(255, 232, 156, 155),
              ])),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(ConstDoctorConsultation.containerTitle,
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(color: ConstDoctorConsultation.colorWhite)),
                ConstDoctorConsultation.sizedboxHeight10,
                Text(_containerCommand,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: ConstDoctorConsultation.colorWhite70)),
                ConstDoctorConsultation.sizedboxHeight15,
                ElevatedButton(
                    onPressed: () {},
                    child: Text(ConstDoctorConsultation.learnMore),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius:
                              ConstDoctorConsultation.borderRadius15)),
                    ))
              ],
            ),
          ),
          Image.asset(
            ConstDoctorConsultation.womanDoctor,
            width: MediaQuery.of(context).size.width / 3,
            height: MediaQuery.of(context).size.height / 3,
            fit: BoxFit.fill,
          )
        ],
      ),
    );
  }

  Text _TextTittleGradientHome(BuildContext context) {
    return Text(ConstDoctorConsultation.tittleDoctors,
        style: Theme.of(context).textTheme.headline6?.copyWith(
            foreground: Paint()
              ..shader = LinearGradient(colors: [
                ConstDoctorConsultation.pinkAccent,
                ConstDoctorConsultation.deepPurpleAccent,
                ConstDoctorConsultation.colorRed,
              ]).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))
                  as Shader?));
  }

  Row _RowIconsndTextButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            ElevatedButtonMiddle(
                icon: Icon(Icons.cable_rounded),
                color: ConstDoctorConsultation.darkBlue),
            ConstDoctorConsultation.sizedboxHeight5,
            TextCommandDoctorConsultation(
              text: ConstDoctorConsultation.middleButtondoctor,
              color: ConstDoctorConsultation.colorBlack,
              textAlign: TextAlign.center,
            )
          ],
        ),
        Column(children: [
          ElevatedButtonMiddle(
              icon: Icon(Icons.point_of_sale),
              color: ConstDoctorConsultation.lightRed),
          ConstDoctorConsultation.sizedboxHeight5,
          TextCommandDoctorConsultation(
            text: ConstDoctorConsultation.middleButtonlab,
            color: ConstDoctorConsultation.colorBlack,
            textAlign: TextAlign.center,
          )
        ]),
        Column(
          children: [
            ElevatedButtonMiddle(
                icon: Icon(Icons.medical_services_outlined),
                color: ConstDoctorConsultation.colorRed),
            ConstDoctorConsultation.sizedboxHeight5,
            TextCommandDoctorConsultation(
              text: ConstDoctorConsultation.middleButtonambulance,
              color: ConstDoctorConsultation.colorBlack,
              textAlign: TextAlign.center,
            ),
          ],
        ),
        Column(
          children: [
            ElevatedButtonMiddle(
                icon: Icon(Icons.medication_liquid_outlined),
                color: ConstDoctorConsultation.elevatebButtonRGB),
            TextCommandDoctorConsultation(
              text: ConstDoctorConsultation.middleButtonpharm,
              color: ConstDoctorConsultation.colorBlack,
              textAlign: TextAlign.center,
            ),
          ],
        )
      ],
    );
  }

  Padding _PaddingImageOnButton(BuildContext context) {
    return Padding(
      padding: ConstDoctorConsultation.edgeInsetsButton,
      child: ElevatedButtonMiddle(
        color: ConstDoctorConsultation.colorIndigo400,
        icon: Icon(Icons.sort_outlined),
      ),
    );
  }

  Padding _PaddingTextField() {
    return Padding(
      padding: ConstDoctorConsultation.edgeInsetsTextField,
      child: TextField(
        decoration: InputDecoration(
          prefixIcon:
              Icon(Icons.search, color: ConstDoctorConsultation.colorBlack),
          fillColor: ConstDoctorConsultation.colorWhite,
          filled: true,
          border: OutlineInputBorder(
              borderRadius: ConstDoctorConsultation.borderRadius15),
          label: Text(ConstDoctorConsultation.search,
              style: TextStyle(color: ConstDoctorConsultation.colorBlack)),
          hintText: ConstDoctorConsultation.search,
        ),
      ),
    );
  }

  Row _RowRightIcon(BuildContext context) {
    return Row(
      children: [
        ContainerSmallIcon(
          color: Color.fromARGB(255, 237, 234, 234),
          icon: Icon(Icons.notifications_active_outlined,
              color: ConstDoctorConsultation.colorIndigo400),
        )
      ],
    );
  }

  Row _RowTopLeftIconAndText(BuildContext context) {
    return Row(
      children: [
        _HomeProfileavatar(context),
        ConstDoctorConsultation.sizedboxHWidht10,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              ConstDoctorConsultation.hiText,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: ConstDoctorConsultation.colorWhite,
                  ),
            ),
            Text(ConstDoctorConsultation.jonathanTavly,
                style: Theme.of(context).textTheme.headline6?.copyWith(
                      color: ConstDoctorConsultation.colorWhite,
                    ))
          ],
        ),
      ],
    );
  }

  Container _HomeProfileavatar(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 12,
      width: MediaQuery.of(context).size.width / 6,
      decoration: BoxDecoration(
          color: ConstDoctorConsultation.colorBlack,
          borderRadius: ConstDoctorConsultation.borderRadius50),
      child: ClipRRect(
          borderRadius: ConstDoctorConsultation.borderRadius50,
          child: Image.asset(
            ConstDoctorConsultation.homeProfileImage,
            fit: BoxFit.cover,
          )),
    );
  }
}
