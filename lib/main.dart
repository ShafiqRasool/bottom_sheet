import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Sheet Implementation"),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              const Text("double click on the screen",style: TextStyle(fontSize: 30),),
              GestureDetector(
                onDoubleTap: (){
                      showModalBottomSheet(context: context,
                          elevation: 10,
                          shape:const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              topLeft: Radius.circular(10)
                            )
                          ) ,
                          builder: ((context) {
                            return Container(
                              child: Wrap(
                                children: const [
                                  ListTile(
                                    leading: Icon(Icons.home),
                                    title: Text("Home"),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.bookmark),
                                    title: Text("Bookmark"),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.settings),
                                    title: Text("Settings"),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.logout),
                                    title: Text("Logout"),
                                  ),
                                ],
                              ),
                            );
                          }
                          )
                      );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
