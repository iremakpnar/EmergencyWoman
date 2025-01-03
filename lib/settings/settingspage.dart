import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      color: Color(0xFFFFCDD2),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.only(top: 45.0, left: 20.0, right: 20.0),
                height: MediaQuery.of(context).size.height / 4.3,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                color: Color(0xff622c4f),
                borderRadius: BorderRadius.vertical(
                bottom: Radius.elliptical(
                MediaQuery.of(context).size.width, 105.0)),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 6.5),
                  child: Material(
                    elevation: 10.0,
                    borderRadius: BorderRadius.circular(60),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: Image.asset(
                        "images/settings.png",
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 70.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Ayarlar",
                        style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  ),
              )
          ],
        ),
          SizedBox(height: 100),
          ListTile(
            leading: Icon(Icons.password, color: Color(0xff622c4f),),
            title: Text("Şifre Değiştirme"),
            /*
              onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PasswordChnagePage()),
              );
            },*/
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(Icons.person, color: Color(0xff622c4f),),
            title: Text("Profil Fotoğrafı Ayarları"),
            /*
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileChangePage()),
              );
            }, */
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(Icons.location_on, color: Color(0xff622c4f),),
            title: Text("İzinler"),
            /*
              onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PremissionPage()),
              );
            },*/
          ),
      ],
    ),
  ),
  );
  }
}
