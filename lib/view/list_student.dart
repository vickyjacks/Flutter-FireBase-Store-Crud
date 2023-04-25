import 'package:crud_firebase/view/update_student.dart';
import 'package:flutter/material.dart';

class ListStudent extends StatefulWidget {
  const ListStudent({Key? key}) : super(key: key);

  @override
  State<ListStudent> createState() => _ListStudentState();
}

class _ListStudentState extends State<ListStudent> {
  deleteUser(id){
    print("UserID${id}");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Table(
            border: TableBorder.all(),
            columnWidths: <int, TableColumnWidth>{1: FixedColumnWidth(140)},
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              TableRow(children: [
                TableCell(
                    child: Container(
                  color: Colors.greenAccent,
                  child: Center(
                    child: Text(
                      "Name",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                )),
                TableCell(
                    child: Container(
                  color: Colors.greenAccent,
                  child: Center(
                    child: Text(
                      "Email",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                )),
                TableCell(
                    child: Container(
                  color: Colors.greenAccent,
                  child: Center(
                    child: Text(
                      "Action",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                )),
              ]),
              TableRow(children: [
                TableCell(
                    child: Container(
                  child: Center(
                    child: Text(
                      "Name",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                )),
                TableCell(
                    child: Container(
                  child: Center(
                    child: Text(
                      "Name",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                )),
                TableCell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>UpdateStudent()));
                        }, icon: Icon(Icons.edit,size: 18,color: Colors.green,)),
                        IconButton(onPressed: (){
                          deleteUser(
                            1
                          );
                        }, icon: Icon(Icons.delete,size: 18,color: Colors.red,))
                      ],
                    ))
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
