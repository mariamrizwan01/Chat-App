import 'package:chat/Screens/LoginPage.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

TextEditingController fullnamecontroller = TextEditingController();
TextEditingController email1controller = TextEditingController();
TextEditingController password1controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      width: MediaQuery.of(context).size.width,
      height:  MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
          Container(
              child: Image.asset("assets/images/rectangle.png")),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 50,top: 100),
                    child: Image.asset("assets/images/logo.png",
                    color: Colors.white,
                    ),
                  ),
                  Container(
                 margin: EdgeInsets.only(left: 50,top: 10),
                child: Text("Deliver Favourite Food",style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),fontSize: 20,fontWeight: FontWeight.w600),)),
                  Container(
                    margin: EdgeInsets.only(left: 40,top: 35),
                    height: 380,
                    width: 280,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.25),),
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Text("Signup",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 25),
                           height: 42,
                           width: 230,
                           decoration: BoxDecoration(
                            border: Border.all(color: Color.fromRGBO(237, 237, 237, 1)),borderRadius: BorderRadius.circular(7)
                           ),  
                          child: TextField(
                          controller: fullnamecontroller,
                          decoration: InputDecoration(
                            icon: Icon(Icons.person),
                            hintText: "Name"
                          ),
                         ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 25),
                           height: 42,
                           width: 230,
                           decoration: BoxDecoration(
                            border: Border.all(color: Color.fromRGBO(237, 237, 237, 1)),borderRadius: BorderRadius.circular(7)
                           ),  
                          child: TextField(
                          controller: fullnamecontroller,
                          decoration: InputDecoration(
                            icon: Icon(Icons.email),
                            hintText: "example@gmail.com"
                          ),
                         ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 25),
                           height: 42,
                           width: 230,
                           decoration: BoxDecoration(
                            border: Border.all(color: Color.fromRGBO(237, 237, 237, 1)),borderRadius: BorderRadius.circular(7)
                           ),  
                          child: TextField(
                          controller: email1controller,
                          obscureText: true,
                          decoration: InputDecoration(
                           icon: Icon(Icons.lock),
                           hintText: "Password",
                           suffix:  IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye))
                          ),
                         ),
                        ),
                         Container(
                          margin: EdgeInsets.only(top: 20),
                           height: 42,
                           width: 230,
                           child: TextButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                           }, child: Text("Signup",style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),)),
                           decoration: BoxDecoration(
                             color: Color.fromRGBO(236, 37, 120, 1),
                            border: Border.all(color: Color.fromRGBO(237, 237, 237, 1)),borderRadius: BorderRadius.circular(7)
                           ),),   
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30,top: 10),
                    child: TextButton(onPressed: (){}, child: Text("Already have an account?",style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1),fontWeight: FontWeight.w600,fontSize: 16),)),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 25),
                    child: TextButton(onPressed: (){}, child: Text("Signup",style: TextStyle(color: Color.fromRGBO(236, 37, 120, 1),fontSize: 18,fontWeight: FontWeight.w800),)),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10,left: 25),
                    child: Image.asset("assets/images/line.jpg"))  
                ],
              ),
          ],
        ),
      ),
      ),
    );
  }
}