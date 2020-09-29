import 'package:flutter/material.dart';
import 'package:hasta_doctor_randevu_sistemi/widgets/text_style.dart';


class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(74, 150, 169, 1),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center         ,
            children: [
              SizedBox(height: 60),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
              ),
             Expanded(child: ListView(
               children: [
                 ProfileButtonItem(
                   buttonName: "İsim Soyisim",
                   onPress: (){},
                 ),
                 ProfileButtonItem(
                   buttonName: "Yaş",
                   onPress: (){},
                 ),
                 ProfileButtonItem(
                   buttonName: "İstanbul",
                   onPress: (){},
                 ),
                 ProfileButtonItem(
                   buttonName: "Boy",
                   onPress: (){},
                 ),
                 ProfileButtonItem(
                   buttonName: "Kilo",
                   onPress: (){},
                 ),
               ],
             )),
            ],
          ),
        ));
  }
}

class ProfileButtonItem extends StatelessWidget {

  final String buttonName;
  final Function onPress;

  const ProfileButtonItem({this.onPress,this.buttonName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 50,
              child: RaisedButton(
                elevation: 5,
                color: Colors.white,
                shape: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Text(buttonName ?? "Title",style: TextStyles.buttonText,),
                onPressed: onPress,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

