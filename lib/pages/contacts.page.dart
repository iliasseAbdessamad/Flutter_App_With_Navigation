import 'package:flutter/material.dart';
import 'package:my_app/widgets/mydrawer.widget.dart';

class ContactsPage extends StatelessWidget {
  final List<Map<String, String>> contacts = [
    {
      'name': 'Yassine Moussa',
      'email': 'yassine@gmail.com',
      'phone': '0611223344'
    },
    {
      'name': 'Asmae Marwa',
      'email': 'asmae@gmail.com',
      'phone': '0711223344'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(title: const Text("Contacts")),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          final contact = contacts[index];
          final initials = contact['name']!.split(' ').map((e) => e[0]).join();

          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.deepOrange,
                child: Text(
                  initials,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              title: Text(contact['name']!),
              subtitle: Text("${contact['email']}\n${contact['phone']}"),
              isThreeLine: true,
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
              },
            ),
          );
        },
      ),
    );
  }
}
