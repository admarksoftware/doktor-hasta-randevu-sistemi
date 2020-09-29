import 'package:flutter/material.dart';
import 'package:hasta_doctor_randevu_sistemi/widgets/text_style.dart';

class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(74, 150, 169, 1),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 60, bottom: 50, right: 10, left: 10),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Text("Hasta Şikayeti",style: TextStyles.buttonTitle),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 300,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Expanded(
                                child: ListView.builder(
                                    itemCount: 1,
                                    itemBuilder: (context, index) {
                                      return Row(
                                        children: [
                                          Expanded(
                                            child: Container(
                                                height: 200,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    color: Colors.white),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    children: [
                                                      Text("Hasta Şikayeti"),
                                                    ],
                                                  ),
                                                )),
                                          ),
                                        ],
                                      );
                                    }),
                              ),
                              SizedBox(height: 10),
                              Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "Şikayetiniz"
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white12),
                      ),
                    ),
                  ),
                  Text("Doctorun Cevabı",style: TextStyles.buttonTitle),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white60),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
