import 'package:emergencywoman/utils/todolist_settings.dart';
import 'package:flutter/material.dart';

class Todolist extends StatefulWidget {

  @override
  State<Todolist> createState() => _TodolistState();
}

class _TodolistState extends State<Todolist> {

  final _controller = TextEditingController();
  List toDoList = [
    ['YGK Mobil Uygulama Geliştirme', false],
    ['Kadınlar Toplantısına Katıl', false],
    ['Flutter Öğren', false],
  ];

  void checkBoxChanged(int index){
    setState(() {
      toDoList[index][1]  =! toDoList[index][1];
    });
  }


  void saveNewTask(){
    setState(() {
      toDoList.add([_controller.text, false]);
      _controller.clear();
    });
  }

  void deleteTask(int index){
    setState(() {
      toDoList.removeAt(index);
    });
  }


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
                            "images/to_do_list.png",
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
                          "Yapılacaklar Listesi",
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
            const SizedBox(height: 20.0,),
            Expanded(
                child: ListView.builder(itemCount: toDoList.length,
                    itemBuilder: (BuildContext context, index){
                  return TodoListSettings(
                    taskName: toDoList[index][0],
                    taskCompleted: toDoList[index][1],
                    onChanged: (value) => checkBoxChanged(index),
                    deleteFunction: (contex) => deleteTask(index),
                  );
            },),
            ),
          ],
        ),

      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Expanded(child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: 'Yapılacaklar Ögesi Ekleyin',
                  filled: true,
                  fillColor: Color(0xFFebddff),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xFFB39DDBFF),
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xFFB39DDBFF),
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            ),
            FloatingActionButton(
              backgroundColor: Color(0xFFebddff),
              onPressed: saveNewTask,
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),

    );
  }
}

