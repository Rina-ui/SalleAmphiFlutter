import 'package:flutter/material.dart';

import '../data/utilisateurList.dart';
import '../modal/user.dart';

class Detail extends StatelessWidget {
  final User user;
  const Detail({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Contact Profil'),
          backgroundColor: Colors.indigo,
        ),
      backgroundColor: Colors.indigo,
      body: Column(

        children: [
          Expanded(
            flex: 1,
              child: Center(
                child: CircleAvatar(
                  radius: 100,
                  child: Text(user.nom[0],
                    style: TextStyle(fontSize: 120, fontWeight: FontWeight.bold),
                  ),
                  backgroundColor: user.color,

                ),
              )

          ),


          Expanded(
            flex: 1,
              child: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                            child: Icon(Icons.phone, size: 30,),
                            backgroundColor: Colors.indigo,
                            radius: 35,
                          ),
                          CircleAvatar(
                            child: Icon(Icons.message_outlined, size: 30,),
                            backgroundColor: Colors.indigo,
                            radius: 35,
                          ),
                          CircleAvatar(
                            child: Icon(Icons.email, size: 30,),
                            backgroundColor: Colors.indigo,
                            radius: 35,
                          ),
                        ],
                      ),
                    ),

                    Divider(),

                    Row(
                      children: [
                        Text('Contact',
                        style: TextStyle(fontSize: 25,
                            fontWeight: FontWeight.bold,
                        ),
                        ),


                      ],
                    ),

                    Column(
                      children: [
                        ListTile(
                          leading: Text('Behance:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                          title: Text(user.numero.toString()),

                        ),
                        ListTile(
                          leading: Text('Email:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                          title: Text(user.email)
                        ),
                        ListTile(
                          leading: Text('Post:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                            title: Text(user.post)
                        ),
                        ListTile(
                          leading: Text('Email:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                            title: Text(user.email)
                        )
                      ],
                    ),

                  ],
                ),


              )
          )
        ],
      ),


    )
    );
  }
}
