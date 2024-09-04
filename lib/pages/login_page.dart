import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:login_app/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey=GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPass=true;  
  
  @override
  void initState() {
    super.initState();

    emailController.addListener(() {
      setState(() {}); 
    });
    passwordController.addListener(() {
      setState(() {}); 
    });
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,

      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
      ),

      
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // top
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 48,
                  ),
                ),

                SizedBox(
                  height: 20,
                ),

                Text(
                  "sign in to enter yousef page",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          // center
          Expanded(
            flex: 5,
            child: Row(
              children: [

                // center left
                Container(
                  width: 12,
                  decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.only(topRight: Radius.circular(12),bottomRight: Radius.circular(12)),),
                ),

                const SizedBox(
                  width: 17,
                ),

                // center right
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20),

                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 191, 221, 246),
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12), topLeft: Radius.circular(12),),
                    ),

                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          // email field
                          TextFormField(
                            validator: (value) {
                              if(value!.isEmpty){
                                return "Email can't be empty";
                              }
                              else{
                                
                                return null;
                              }
                            },
                            controller: emailController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(color: Colors.black,),
                                
                              ),
                              prefixIcon: emailController.text.isEmpty ? Icon(Icons.email) : null,
                              prefixIconColor: Colors.black,
                              hintText: "Enter your Email",
                              label: Text("Email"),
                              labelStyle: TextStyle(color: Colors.black),
                            ),                        
                      
                          ),

                          const SizedBox(
                            height: 20,
                          ),

                          // password field
                          TextFormField(
                            validator: (value) {
                              if(value!.isEmpty){
                                return "Password can't be empty";
                              }
                              else if(value.length<6){
                                return "Password length must be at least 6";
                              }
                              else{
                                return null;
                              }
                            },
                            obscureText: isPass,
                            controller: passwordController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(color: Colors.black,),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(color: Colors.black,),
                              ),
                              prefixIcon: passwordController.text.isEmpty ? Icon(Icons.password) : null,
                              prefixIconColor: Colors.black,
                              suffixIcon: GestureDetector(
                                child: isPass ? Icon(Icons.remove_red_eye) : Icon(Icons.remove_red_eye_outlined),
                                onTap: (){
                                  setState(() {
                                    isPass=!isPass;
                                  });
                                },
                              ),
                              suffixIconColor: Colors.black,
                              hintText: "Enter your Password",
                              label: Text("Password"),
                              labelStyle: TextStyle(color: Colors.black),
                            ),
                          ),

                          const SizedBox(
                            height: 20,
                          ),

                          // login button
                          Row(
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {
                                    if(_formKey.currentState!.validate()){
                                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => HomePage(),), (route) => false,);
                                    }
                                    
                                  },
                                  child: Text("Login", style: TextStyle(color: Colors.white),),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    padding: EdgeInsets.all(17),
                      
                                  ),
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(
                            height: 15,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Text("Forget Password ?", style: TextStyle(color: const Color.fromARGB(255, 39, 120, 186)),),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          // bottom
          Column(
            children: [
              const Center(
                child: Text("Or Login With"),
              ),

              const SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  // facebook
                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Color(0xFF1877F2),
                      border: Border.all(
                        width: 2,
                        color: Color(0xFF1877F2),
                      ),
                      borderRadius: BorderRadius.circular(999),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(LineIcons.facebookF,color: Colors.white, size: 32,),
                    ),
                  ),

                  // google
                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(218, 255, 255, 255),
                      border: Border.all(
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(999),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(LineIcons.googlePlus, color: Color(0xFFDB4437), size: 32,),
                    ),
                  ),

                  // twitter
                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(999),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(LineIcons.twitter, color: Color(0xFF1DA1F2), size: 32,),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 16,
              ),
      
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account ? "),
                    GestureDetector(
                      onTap: () {},
                      child: Text("Create new account", style: TextStyle(color: const Color.fromARGB(255, 39, 120, 186)),),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
