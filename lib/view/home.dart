import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

class Home extends StatelessWidget {
   const Home({super.key});

  final List<Contact> contacts = const [
    Contact('Alice', 'Engineer', Colors.blue),
    Contact('Bob', 'Designer', Colors.green),
    Contact('Charlie', 'Manager', Colors.orange),
    Contact('Diana', 'Developer', Colors.purple),
    Contact('Eve', 'Tester', Colors.red),
  ];

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
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  final contact = contacts[index];
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: contact.color,
                      child: Text(
                        contact.name[0],  // <-- affiche la 1ère lettre
                        style: const TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    title: Text(
                      contact.name,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(contact.role),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.call),
                        SizedBox(width: 10),
                        Icon(Icons.message_outlined),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );

            // ListTile(
            //   leading: CircleAvatar(radius: 30,),
            //   title: Text('QWERT', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, ),),
            //   subtitle: Text('Engineer', style: TextStyle(fontSize: 10),),
            //   trailing: Row(
            //     mainAxisSize: MainAxisSize.min,
            //     children: [
            //       Icon(Icons.call),
            //       SizedBox(width: 10,),
            //       Icon(Icons.email),
            //     ],
            //
            //   )
            // ),


  }
}

class Contact{
  final String name;
  final String role;
  final Color color;


  const Contact(this.name, this.role, this.color);

}

//scaffold joue le role d'une base pour mettre tout notre appli
//le leading permet de mettre un element au debut
//le trailing permet de mettre un element a la fin
