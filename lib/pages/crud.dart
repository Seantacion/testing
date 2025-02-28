import 'package:flutter/material.dart';

class UserListScreen extends StatefulWidget {
  @override
  _UserListScreenState createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  List<Map<String, String>> users = [
    {'name': 'Budi Santoso', 'address': 'Jakarta'},
    {'name': 'Siti Aminah', 'address': 'Bandung'},
    {'name': 'Rizky Maulana', 'address': 'Surabaya'},
  ];

  final TextEditingController nameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  int? selectedIndex; // Untuk edit data

  void _showFormDialog({String? name, String? address, int? index}) {
    nameController.text = name ?? '';
    addressController.text = address ?? '';
    selectedIndex = index;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(index == null ? 'Tambah Pengguna' : 'Edit Pengguna'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Nama'),
              ),
              TextField(
                controller: addressController,
                decoration: InputDecoration(labelText: 'Alamat'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Batal'),
            ),
            ElevatedButton(
              onPressed: () {
                if (nameController.text.isNotEmpty &&
                    addressController.text.isNotEmpty) {
                  setState(() {
                    if (selectedIndex == null) {
                      // Tambah data
                      users.add({
                        'name': nameController.text,
                        'address': addressController.text,
                      });
                    } else {
                      // Edit data
                      users[selectedIndex!] = {
                        'name': nameController.text,
                        'address': addressController.text,
                      };
                    }
                  });
                  Navigator.pop(context);
                }
              },
              child: Text(index == null ? 'Tambah' : 'Simpan'),
            ),
          ],
        );
      },
    );
  }

  void _deleteUser(int index) {
    setState(() {
      users.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CRUD Flutter')),
      body: users.isEmpty
          ? Center(child: Text('Belum ada data'))
          : ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(users[index]['name']!),
                  subtitle: Text(users[index]['address']!),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.edit, color: Colors.blue),
                        onPressed: () => _showFormDialog(
                          name: users[index]['name'],
                          address: users[index]['address'],
                          index: index,
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.delete, color: Colors.red),
                        onPressed: () => _deleteUser(index),
                      ),
                    ],
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showFormDialog(),
        child: Icon(Icons.add),
      ),
    );
  }
}
