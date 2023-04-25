import 'package:flutter/material.dart';

class AddStudent extends StatefulWidget {
  const AddStudent({Key? key}) : super(key: key);

  @override
  State<AddStudent> createState() => _AddStudentState();
}

class _AddStudentState extends State<AddStudent> {
  final _formKey = GlobalKey<FormState>();
    var name="";
    var email="";
    var password="";

    final _nameControlller = TextEditingController();
    final _emailControlller = TextEditingController();
    final _passwordControlller = TextEditingController();

  clearText(){
    _nameControlller.clear();
    _emailControlller.clear();
    _passwordControlller.clear();
  }

  addUser(){
    print("add ");
  }
@override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    _nameControlller.dispose();
    _emailControlller.dispose();
    _passwordControlller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add New Student"),

      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                  controller: _nameControlller,
                  validator: (value){
                    if(value==null || value.isEmpty){
                      return "Please enter name";
                    }
                    return null;
                  },
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: "Name",
                    labelStyle: TextStyle(
                    ),
                    border: OutlineInputBorder(

                    ),
                    errorStyle: TextStyle(
                      color: Colors.redAccent,fontSize: 15
                    ),

                  ),


                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                  controller: _emailControlller,
                  validator: (value){
                    if(value==null || value.isEmpty){
                      return "Please enter email";
                    }else if(!value.contains("@")){
                      return "please enter valid email";
                    }
                    return null;
                  },
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(
                    ),
                    border: OutlineInputBorder(

                    ),
                    errorStyle: TextStyle(
                        color: Colors.redAccent,fontSize: 15
                    ),

                  ),


                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                  controller: _passwordControlller,
                  validator: (value){
                    if(value==null || value.isEmpty){
                      return "Please enter password";
                    }
                    return null;
                  },
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(
                    ),
                    border: OutlineInputBorder(

                    ),
                    errorStyle: TextStyle(
                        color: Colors.redAccent,fontSize: 15
                    ),

                  ),


                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: (){
                      if(_formKey.currentState!.validate()){
                        setState(() {
                          name = _nameControlller.text;
                          email = _emailControlller.text;
                          password = _passwordControlller.text;
                          addUser();
                          clearText();
                        });
                      }
                    }, child: Text("Register")),
                    SizedBox(width: 120,),
                    ElevatedButton(onPressed: (){}, child: Text("Cancel"))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
