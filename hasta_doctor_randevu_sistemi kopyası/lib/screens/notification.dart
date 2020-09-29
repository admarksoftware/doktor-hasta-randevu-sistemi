import 'package:flutter/material.dart';
import 'package:hasta_doctor_randevu_sistemi/widgets/text_style.dart';


class NotificaftionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bildirimler",style: TextStyle(color: Colors.black)),centerTitle: true,backgroundColor: Colors.white),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext,index){
          return NotificationItem();
        },
      ),
    );
  }
}


class NotificationItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color:Color.fromRGBO(74, 150, 169, 1),
            borderRadius: BorderRadius.circular(20)),
        child: ListTile(title: Text("Bildirim Başlığı",style: TextStyles.buttonTitle),
       subtitle: Text("Açıklama",style: TextStyles.subtitle),
        ),
      ),
    );
  }
}
