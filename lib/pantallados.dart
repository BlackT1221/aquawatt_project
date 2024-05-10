import 'package:flutter/material.dart';
import 'homescreen.dart';
import 'datos.dart';
import 'tips.dart';

class PantallaDos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

            ],
          ),
        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.logout),
                onPressed: () async {
                  await showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('¿Desea cerrar sesión?'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(builder: (context) => HomeScreen()),
                                    (Route<dynamic> route) => false,
                              );
                            },
                            child: Text('Sí'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('No'),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {

                },
              ),
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () {

                },
              ),
              IconButton(
                icon: Icon(Icons.lightbulb),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Tips()),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.person),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Datos()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
