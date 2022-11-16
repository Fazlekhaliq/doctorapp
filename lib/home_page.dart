import 'package:doctorapp/util/category.dart';
import 'package:doctorapp/util/doctorcard.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_month),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.message),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person_pin),label: ''),


          ],
        ),
        body: Column(
          children:  [
            //appbar
            Padding(
              padding: const EdgeInsets.only(left: 12.0,top: 20),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text("Hello,",
                          style: TextStyle(
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold,
                          ),
                      ),
                      Text("Giovanny",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Icon(Icons.notification_add),
                  ),


                ],
              ),
            ),



            //search
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(

                padding: EdgeInsets.all(12),
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: TextField(

                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search here...",

                  ),
                ),
              ),
            ),

            //card
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                
                height: 170,
                width: 350,
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(16),
              ),
                child: Column(
                  children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(

                          child: Container(
                            height: 50,
                           width: 50,
                           decoration: BoxDecoration(
                             color: Colors.white,

                             shape: BoxShape.circle,
                           ),
                            child: Image.asset("assets/image/2.jpg",fit: BoxFit.cover,


                            ),
                          ),
                         borderRadius: BorderRadius.circular(16),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 50.0),
                          child: Column(

                            children: [
                              Text("You're invited to join Live ",
                                style: TextStyle(
                                  color: Colors.white,

                                ),
                              ),

                              Row(
                                children: [
                                  Text("Stream with ",
                                    style: TextStyle(
                                      color: Colors.white,

                                    ),
                                  ),

                                  Text("Dr.Fazzli",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,

                                    ),
                                  ),

                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Icon(Icons.add,color: Colors.white,),
                        ),
                      ],
                    ),
                  ),
                   Padding(
                     padding: const EdgeInsets.all(12.0),
                     child: Container(

                       height: 2,
                       decoration: BoxDecoration(
                         color: Colors.grey,

                       ),
                     ),
                   ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("120k People join Live Streaming !",
                          style: TextStyle(
                            color: Colors.white,
                          ),),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(

                              children: [
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),


              ),
            ),


            // category
         Container(
           height: 100,
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: ListView(
               scrollDirection: Axis.horizontal,
               children: [
                 CatPage(),
                 CatPage(),
                 CatPage(),
                 CatPage(),




               ],
             ),
           ),
         ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Viruse"),
                  Text("Druge"),
                  Text("power"),
                  Text("other"),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("Our Doctor",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    color: Colors.red,
                  ),
                ),
                Text("See all",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,

                    color: Colors.black,
                  ),
                ),
              ],),
            ),


            //other card
            Container(
              height: 140,
              child: ListView(

                children: [
                 DoctorCard(),
                  DoctorCard(),
                  DoctorCard(),
                  DoctorCard(),


                 

                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
