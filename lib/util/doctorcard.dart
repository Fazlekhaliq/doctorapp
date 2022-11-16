import 'package:flutter/material.dart';
class DoctorCard extends StatelessWidget {
  const DoctorCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 12),
      child: Container(

        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),

        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(

                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),

                  ),
                ),
                Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Doctor Fazzlura",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text("Heart Break Specailist",

                    ),
                  ],
                ),


              ],
            ),
            Container(
              padding: EdgeInsets.only(right: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star,color: Colors.orange,),
                  Icon(Icons.star,color: Colors.orange,),
                  Icon(Icons.star,color: Colors.orange,),
                  Icon(Icons.star,color: Colors.orange,),
                  Icon(Icons.star,color: Colors.orange,),

                ],
              ),
            )


          ],
        ),
      ),
    );
  }
}
