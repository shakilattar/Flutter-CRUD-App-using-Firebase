import 'package:flutter/material.dart';
import './update_student_page.dart';

class ListStudentPage extends StatefulWidget {
  const ListStudentPage({super.key});

  @override
  State<ListStudentPage> createState() => _ListStudentPageState();
}

class _ListStudentPageState extends State<ListStudentPage> {
  deleteUser(id) {
    print('User Deleted $id');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Table(
          border: TableBorder.all(),
          columnWidths: const <int, TableColumnWidth>{
            1: FixedColumnWidth(140),
          },
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            TableRow(
              children: [
                TableCell(
                  child: Container(
                    color: Colors.greenAccent,
                    child: const Center(
                      child: Text(
                        'Name',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Container(
                    color: Colors.greenAccent,
                    child: const Center(
                      child: Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Container(
                    color: Colors.greenAccent,
                    child: const Center(
                      child: Text(
                        'Action',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                const TableCell(
                  child: Center(
                    child: Text(
                      'Test1',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                const TableCell(
                  child: Center(
                    child: Text(
                      'test1@test.com',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                TableCell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => UpdateStudentPage(
                                id: '',
                              ),
                            ),
                          );
                        },
                        icon: const Icon(
                          Icons.edit,
                          color: Colors.orange,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          deleteUser(1);
                        },
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
