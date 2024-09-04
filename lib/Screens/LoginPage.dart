import 'package:chat/Screens/SignUpScreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

TextEditingController emailcontroller = TextEditingController();
TextEditingController passwordcontroller = TextEditingController();

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
              child: Image.asset("assets/images/Rectangle 590.png")),
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
                          child: Text("Login",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 25),
                           height: 42,
                           width: 230,
                           decoration: BoxDecoration(
                            border: Border.all(color: Color.fromRGBO(237, 237, 237, 1)),borderRadius: BorderRadius.circular(7)
                           ),  
                          child: TextField(
                          controller: emailcontroller,
                          decoration: InputDecoration(
                            icon: Icon(Icons.person),
                            hintText: "example@gmail.com"
                            // hoverColor: Color.fromRGBO(92, 90, 90, 1)
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
                          controller: passwordcontroller,
                          obscureText: true,
                          decoration: InputDecoration(
                           icon: Icon(Icons.lock),
                           hintText: "Password",
                           suffix:  IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye))
                          ),
                         ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 100),
                          child: TextButton(onPressed: (){}, child: Text("Forget Password?",style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),)),
                        ),
                         Container(
                          margin: EdgeInsets.only(top: 15),
                           height: 42,
                           width: 230,
                           child: TextButton(onPressed: (){}, child: Text("Login",style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),)),
                           decoration: BoxDecoration(
                             color: Color.fromRGBO(236, 37, 120, 1),
                            border: Border.all(color: Color.fromRGBO(237, 237, 237, 1)),borderRadius: BorderRadius.circular(7)
                           ),),
                           Padding(padding: EdgeInsets.only(top: 7)),
                           Text("Or",style: TextStyle(color: Color.fromRGBO(236, 37, 120, 1),),),
                           Container(
                            padding: EdgeInsets.only(top: 7),
                            child: Image.asset("assets/images/Frame 18.png"),
                           )  
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30,top: 10),
                    child: TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));
                    }, child: Text("Don’t have an account?",style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1),fontWeight: FontWeight.w600,fontSize: 16),)),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 25),
                    child: TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));
                    }, child: Text("Register",style: TextStyle(color: Color.fromRGBO(236, 37, 120, 1),fontSize: 18,fontWeight: FontWeight.w800),)),
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