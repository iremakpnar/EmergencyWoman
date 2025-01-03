import 'package:flutter/material.dart';
import 'package:emergencywoman/settings/notificationpage.dart';
import 'package:emergencywoman/settings/settingspage.dart';
import 'package:emergencywoman/settings/todolist.dart';
import 'package:provider/provider.dart';


class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  // Gece modu kontrolü için bir state tanımlayalım
  bool isNightMode = false;

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
                            "images/woman.png",
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
                          "Nilay",
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
              leading: Icon(Icons.notifications, color: Color(0xff622c4f),),
              title: Text("Bildirimler"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationsPage()),
                );
              },
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.note_alt_outlined, color: Color(0xff622c4f),),
              title: Text("To-Do List"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Todolist()),
                );
              },
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.settings, color: Color(0xff622c4f),),
              title: Text("Ayarlar"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsPage()),
                );
              },
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(isNightMode ? Icons.dark_mode : Icons.light_mode, color: Color(0xff622c4f)),
              title: Text("Gece Modu"),
              trailing: Switch(
                value: isNightMode,
                onChanged: (value) {
                  setState(() {
                    isNightMode = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
