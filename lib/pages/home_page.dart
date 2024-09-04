import 'package:flutter/material.dart';
import 'package:login_app/pages/login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Yousef Home Page", style: TextStyle( color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25,),
        ),
        
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10), 
            child: Container(
              padding: EdgeInsets.all(0), 

              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(999),
              ),

              child: IconButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => LoginPage(),), (route) => false,);
                },
                icon: const Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
              ),

            ),
          ),
        ],
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Hi, There 👋",
            style: TextStyle(fontSize: 40, fontFamily: 'Oswald'),
          ),
          Image.asset("images/welcome.png", width: 400, height: 400)
        ],
      ),
    );
  }
}
