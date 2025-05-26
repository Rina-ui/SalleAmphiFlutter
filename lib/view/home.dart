import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

import '../data/utilisateurList.dart';
import 'detail.dart';

class Home extends StatelessWidget {
   const Home({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'All Contact',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),
                  ),
                  Icon(Icons.logout)
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: SearchBar(
                        elevation: WidgetStatePropertyAll(0),
                        leading: Icon(
                            Icons.search),
                            hintText: 'Search',
                      )
                  ),
                  SizedBox(width: 10,),
                  Icon(RemixIcons.sort_alphabet_desc),
                ],
              ),
            ),
            Divider(),

            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Divider();
                },
                itemCount: listUser.length,
                itemBuilder: (context, index) {

                  return GestureDetector(
                    child: ListTile(
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundColor: listUser[index].color,
                              child: Text(
                                  listUser[index].nom[0],
                                  style: const TextStyle(color: Colors.white, fontSize: 20)
                              )
                            ),
                            title: Text(listUser[index].nom, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, ),),
                            subtitle: Text(listUser[index].post, style: TextStyle(fontSize: 10),),
                            trailing: Row(
                             mainAxisSize: MainAxisSize.min,
                             children: [
                               Icon(Icons.call),
                               SizedBox(width: 10,),
                               Icon(Icons.email),
                             ],

                             )
                    ),

                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Detail(user: listUser[index],)
                          )
                      );
                    },

                  );
                },
              ),
            ),
          ],
        ),
      ),
    );

  }
}





//scaffold joue le role d'une base pour mettre tout notre appli
//le leading permet de mettre un element au debut
//le trailing permet de mettre un element a la fin
