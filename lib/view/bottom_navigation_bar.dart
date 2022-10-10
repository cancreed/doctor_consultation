import 'package:doctor_consultation_app/const/const_doctor_consultation.dart';
import 'package:doctor_consultation_app/view/categories_doctor_consultation.dart';
import 'package:doctor_consultation_app/view/detail_doctor_consultations.dart';
import 'package:doctor_consultation_app/view/home_doctor_consultation.dart';
import 'package:doctor_consultation_app/view/show_bottomm_sheet.dart';
import 'package:flutter/material.dart';



class BottomNAvigationBarView extends StatefulWidget {
  const BottomNAvigationBarView({super.key});

  @override
  State<BottomNAvigationBarView> createState() => _BottomNAvigationsBarState();
}

class _BottomNAvigationsBarState extends State<BottomNAvigationBarView> {
int _selectedIndex = 0;

List<Widget> _bottomList =[
HomeDoctorConsultation(),
DetailDoctorConsultation(),
CategoriesDoctorConsultation(),


];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 
      bottomNavigationBar: BottomNavigationBar(iconSize: 30 ,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: ConstDoctorConsultation.colorIndigo,
      unselectedItemColor: ConstDoctorConsultation.colorGrey,
currentIndex: _selectedIndex,
onTap: (int index) {
  setState(() {
    _selectedIndex = index;
  });
  
},

       items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: ' '),
              BottomNavigationBarItem(icon: Icon(Icons.zoom_in),label: ' '),
               BottomNavigationBarItem(icon: Icon(Icons.paste),label: ' '),
              BottomNavigationBarItem(icon: GestureDetector(
                onTap: () {
                showModalBottomSheet(
        backgroundColor: ConstDoctorConsultation.colorIndigo,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25))),
        context: context,
        builder: (context) => Padding(
              padding: ConstDoctorConsultation.edgeInsetsDetail,
              child:ShowBottomSheet()
            ));
                },
                child: Icon(Icons.emoji_people_outlined,)),label: ' '),
      ]),
      body: _bottomList.elementAt(_selectedIndex),
    );
  }
}