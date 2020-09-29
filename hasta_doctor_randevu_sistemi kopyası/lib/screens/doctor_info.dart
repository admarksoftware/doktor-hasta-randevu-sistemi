import 'package:flutter/material.dart';
import 'package:hasta_doctor_randevu_sistemi/widgets/text_style.dart';

class DoctorInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(74, 150, 169, 1),
        body: Column(children: [
          SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Expanded(
                flex: 2,
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Dr. Tahsin Büyükşahin",
                                  style: TextStyles.profile,
                                  textAlign: TextAlign.start),
                              Text("Estetisyen",
                                  style: TextStyles.subtitle,
                                  textAlign: TextAlign.start),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(children: [
                            Expanded(
                                child: Container(
                              height: 50,
                              width: 50,
                              child: Center(
                                  child:
                                      Icon(Icons.mail, color: Colors.orange)),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.orange[100]),
                            )),
                            SizedBox(width: 10),
                            Expanded(
                                child: Container(
                              height: 50,
                              width: 50,
                              child: Center(
                                  child:
                                      Icon(Icons.phone, color: Colors.orange)),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.yellow[300]),
                            )),
                            SizedBox(width: 10),
                            Expanded(
                                child: Container(
                              height: 50,
                              width: 50,
                              child: Center(
                                  child: Icon(Icons.camera_alt,
                                      color: Colors.yellow)),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.orange),
                            )),
                          ]),
                        ),
                      ],
                    ),
                  ),
                  height: 150,
                  width: 150,
                ),
              ),
            ]),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hakkımda Yazısı", style: TextStyles.subtitle),
                    SizedBox(height: 10),
                    Text(
                        "Estetik, sanatla, güzellikle ve tatla ilgilenen felsefe dalıdır. Estetik eski Yunanca'da 'Aisthesis' sözcüğünden gelmektedir. Anlamı duymak algılamak demektir. Güzelliğin oluşturulması ve değerlendirilmesiyle ilgilenir. Duygu ve beğeninin yargılanması olarak da geçen duyusal-duygusal değerleri inceler.",
                        style: TextStyles.about),
                  ]),
            ),
          ),
          Expanded(
              flex: 4,
              child: Column(children: [
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white12),
                            height: 300,
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                      child: Row(
                                    children: [
                                      Expanded(
                                          child: Column(children: [
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Expanded(
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,

                                                    children: [
                                                      Icon(Icons.location_on),
                                                    ],
                                                  )),
                                              Expanded(
                                                  flex: 4,
                                                  child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                    Text("Adres",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                                                    SizedBox(height: 10),
                                                    Text("Adress Açıklaması",style: TextStyles.about)
                                                  ]))
                                            ],
                                          ),
                                        ),
                                            Expanded(
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Icon(Icons.update),
                                                        ],
                                                      )),
                                                  Expanded(
                                                      flex: 4,
                                                      child: Column(
                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                        Text("Çalışma Saatleri",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                                                        SizedBox(height: 10),
                                                        Text("Çalışma Saati Ekle",style: TextStyles.about)
                                                      ]))
                                                ],
                                              ),
                                            ),
                                      ])),
                                    ],
                                  )),
                                ],
                              ),
                            )),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white12),
                            height: 300,
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                      child: Center(child: Text("Google Map"))),
                                ],
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
              ]))
        ]));
  }
}
