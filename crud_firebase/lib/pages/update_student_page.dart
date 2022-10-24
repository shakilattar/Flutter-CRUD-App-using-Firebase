import 'package:flutter/material.dart';

class UpdateStudentPage extends StatefulWidget {
  const UpdateStudentPage({super.key, required this.id});
  final String id;

  @override
  State<UpdateStudentPage> createState() => _UpdateStudentPageState();
}

class _UpdateStudentPageState extends State<UpdateStudentPage> {
  final _formKey = GlobalKey<FormState>();

  updateUser() {
    print('user updated');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Student'),
      ),
      body: Form(
        key: _formKey,
        //getting specific data by id
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: ListView(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                  initialValue: 'test1',
                  autofocus: false,
                  onChanged: (value) => {},
                  decoration: const InputDecoration(
                    labelText: 'Name : ',
                    labelStyle: TextStyle(fontSize: 20),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Name';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                  initialValue: 'test1@test.com',
                  autofocus: false,
                  onChanged: (value) => {},
                  decoration: const InputDecoration(
                    labelText: 'Email : ',
                    labelStyle: TextStyle(fontSize: 20),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Email';
                    } else if (!value.contains('@')) {
                      return 'Please Enter Valid Email';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                  initialValue: '123456',
                  autofocus: false,
                  onChanged: (value) => {},
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password : ',
                    labelStyle: TextStyle(fontSize: 20),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Password';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // return true if form is valid otherwise returns false
                        if (_formKey.currentState!.validate()) {
                          updateUser();
                          Navigator.pop(context);
                        }
                      },
                      child: const Text(
                        'Update',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
                      child: const Text(
                        'Reset',
                        style: TextStyle(fontSize: 18),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
