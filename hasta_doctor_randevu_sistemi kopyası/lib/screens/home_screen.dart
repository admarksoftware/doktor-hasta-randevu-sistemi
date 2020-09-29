import 'package:flutter/material.dart';
import 'package:hasta_doctor_randevu_sistemi/widgets/text_style.dart';

import 'calendar_today.dart';
import 'doctor_info.dart';
import 'messages.dart';
import 'notification.dart';
import 'profile.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(74, 150, 169, 1),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 50, right: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)))),
                      Expanded(
                          child: Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(74, 150, 169, 1),
                                  borderRadius: BorderRadius.circular(20)))),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20,top: 20,bottom: 60),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Tahsin Büyükşahin",
                                      style: TextStyles.profile),
                                  Text("İstanbul",
                                      style: TextStyles.buttonTitle),
                                ],
                              ))
                        ]),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        ButtonItem(
                          title: "Profil",
                          icon: Icons.person,
                          onPress: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> Profile()));
                          },
                        ),
                        ButtonItem(
                          title: "Mesajlarım",
                          icon: Icons.message,
                          onPress: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> MessagePage()));
                          },
                        ),
                        ButtonItem(
                          title: "Takvim",
                          icon: Icons.calendar_today,
                          onPress: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> CalendarTodayPage()));
                          },
                        ),
                        ButtonItem(
                          title: "Bildirim",
                          icon: Icons.notifications,
                          onPress: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> NotificaftionPage()));
                          },
                        ),
                        ButtonItem(
                          title: "İletişim",
                          icon: Icons.person,
                          onPress: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> DoctorInfo()));
                          },
                        ),
                        ButtonItem(
                          title: "Çıkış Yap",
                          icon: Icons.exit_to_app,
                          onPress: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> NotificaftionPage()));
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final double height;
  final Colors iconColor;
  final Colors titleColor;
  final Function onPress;

  const ButtonItem(
      {this.onPress,
      this.title,
      this.icon,
      this.height,
      this.iconColor,
      this.titleColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: onPress,
            child: Container(
              height: height ?? 50,
              child: Row(
                children: [
                  Icon(icon ?? Icons.person, size: 22, color: Colors.white),
                  SizedBox(width: 10),
                  Text(title ?? "title", style: TextStyles.buttonTitle),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
