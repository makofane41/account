import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({ Key? key }) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
 
 //form key
  final _formKey = GlobalKey<FormState>();

  // Text Edit controller for the form property
  final firstNameController = new TextEditingController();
  final lastNameController = new TextEditingController();
  final emailAddressController = new TextEditingController();
  final cellNoController = new TextEditingController();
  final ageController = new TextEditingController();
  final passwordController = new TextEditingController();
  final confirmPasswordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    
    //firstName field
    final firstName = TextFormField(
      autofocus: false,
      controller: firstNameController,
      keyboardType: TextInputType.name,
      onSaved: (value){
        firstNameController.text=value!;
      },
      textInputAction: TextInputAction.next,
      //decoration
      decoration: InputDecoration(
        prefixIcon:Icon(Icons.person),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "First name",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),

    );



    //lastName field
    final lastName = TextFormField(
      autofocus: false,
      controller: lastNameController,
      keyboardType: TextInputType.name,
      onSaved: (value){
        lastNameController.text=value!;
      },
      textInputAction: TextInputAction.next,
      //decoration
      decoration: InputDecoration(
        prefixIcon:Icon(Icons.person),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Last name",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),

    );




    //emailAddress field
    final emailAddressField= TextFormField(
      autofocus: false,
      controller: emailAddressController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value){
       emailAddressController.text=value!;
      },
      textInputAction: TextInputAction.next,
      //decoration
      decoration: InputDecoration(
        prefixIcon:Icon(Icons.email),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email Address",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),

    );


     //cellNo field
    final cellNo = TextFormField(
      autofocus: false,
      controller: cellNoController ,
      keyboardType: TextInputType.number,
      onSaved: (value){
       cellNoController.text=value!;
      },
      textInputAction: TextInputAction.next,
      //decoration
      decoration: InputDecoration(
        prefixIcon:Icon(Icons.contact_phone),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Cellphone Number",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),

    );


  //age field
    final age = TextFormField(
      autofocus: false,
      controller: ageController ,
      keyboardType: TextInputType.number,
      onSaved: (value){
       ageController.text=value!;
      },
      textInputAction: TextInputAction.next,
      //decoration
      decoration: InputDecoration(
        prefixIcon:Icon(Icons.person_add),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Age",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),

    );




    //password field
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      //validator
      onSaved: (value){
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.next,
      //decoration 
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),


      ),
    );

//password field
    final confirmPasswordField = TextFormField(
      autofocus: false,
      controller: confirmPasswordController ,
      //validator
      onSaved: (value){
        confirmPasswordController.text = value!;
      },
      textInputAction: TextInputAction.done,
      //decoration 
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Confirm password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
),
);

    //login button
    final signUpButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.blue,
      child:MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 20),
        minWidth: MediaQuery.of(context).size.width,

        onPressed: (){},
        child:Text("SignUp",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize:20,color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
    );


  return Scaffold(
     appBar: AppBar(
       title: const Text('Register an Account'),),
      backgroundColor: Colors.white,
      body: Center(
        child:SingleChildScrollView(
         child: Container(
          color: Colors.white,
           child:Padding(
             padding: const EdgeInsets.all(36.0),
           child: Form(
             key: _formKey,
              child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 25),
                  firstName,
                  SizedBox(height: 25),
                  lastName,
                  SizedBox(height: 25),
                  emailAddressField,
                  SizedBox(height: 25),
                  cellNo,
                  SizedBox(height: 25),
                  age,
                  SizedBox(height: 25),
                  passwordField,
                  SizedBox(height: 25),
                  confirmPasswordField,
                  SizedBox(height:35),
                  signUpButton,
                  SizedBox(height:15),
                  
                ],
            ),
          ),
           ),
          ),
        ),
      ),
      
    );
  }
}