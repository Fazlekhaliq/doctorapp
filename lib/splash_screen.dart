import 'package:flutter/material.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Complate",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),

                ),
                SizedBox(height: 10,),
                Text("Health",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 10,),
                Text("Solution",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),),
                SizedBox(height: 10,),
                Text("protection for femaly health",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 10,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [


                    Image.asset("assets/image/3.png",
                    height: 400,),
                  ],
                ),
                SizedBox(height: 10,),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, "HomePage");
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 30,vertical: 16),

                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(12),
                      shape: BoxShape.rectangle,
                    ),

                      child: Text("Get Started",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
