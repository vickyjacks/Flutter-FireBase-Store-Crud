import 'package:flutter/material.dart';

class UpdateStudent extends StatefulWidget {
  const UpdateStudent({Key? key}) : super(key: key);

  @override
  State<UpdateStudent> createState() => _UpdateStudentState();
}

class _UpdateStudentState extends State<UpdateStudent> {

  final _formKey = GlobalKey<FormState>();
  updateUser(){

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Update Student"),
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
                  initialValue: "Ankit",
                  onChanged: (value){

                  },
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
                  initialValue: "gmail.com",
                  onChanged: (value){

                  },
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
                  initialValue: "*******",
                  onChanged: (value){

                  },
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
                        updateUser();
                        Navigator.pop(context);
                      }
                    }, child: Text("Update")),
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
