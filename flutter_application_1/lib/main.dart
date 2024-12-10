import 'package:flutter/material.dart';

void main(){
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        body:SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.chevron_left,
                        size: 33,

                        ),
                      Text(
                        "Product Detail",
                        style: TextStyle(
                          fontSize: 22,
                        ),
                        ),
                      Icon(
                        Icons.favorite,
                        size: 33, 
                        color: Colors.red,),
              
                    ],),
                    Image.asset(
                      "assets/images/watch.png",
                      width: double.infinity,
                      height: 401,
                      fit: BoxFit.cover,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mi Band 8 Pro",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                          textAlign: TextAlign.left),
                          SizedBox(
                      height: 10,
                    ),
              
                    Text("\$54.00",
                    style: TextStyle(
                      fontSize: 25,
                      color: Color(0xFF00623B),
                    ),),
                    Text("Built for life and made to last, this full-zip corduroy jacket is part of our Nike Life collection. The spacious fit gives you plenty of room to layer underneath, while the soft corduroy keeps it casual and timeless. 00623B lllllllllllllllllllllllllllllllllllllllllll Built for life and made to last, this full-zip corduroy jacket is part of our Nike Life collection. The spacious fit gives you plenty of room to layer underneath, while the soft corduroy keeps it casual and timeless. 00623B lllllllllllllllllllllllllllllllllllllllllll"
                   ,style: TextStyle(
                    fontSize: 15,
                   ), ),
                   SizedBox(height: 20,), //jarak
                   GestureDetector (
                      onTap: () {
                        
                      },
                     child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(
                        vertical: 16,
                      
                      ),
                      child: Center(
                        child: Text(
                          "Add to bag",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      color: Color(0xff00623B),
                      
                     ),
                   )
                      ],
                    ),
                    
                ],
              ),
            ),
          ),
          ),
      ),
    );
  }
}