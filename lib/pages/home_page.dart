import 'package:face_recognition_app/pages/choose_or_capture.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin:EdgeInsets.only(top: 100) ,child: Container(height:250,child: Image.asset('lib/assets/face.png')),
          ),
          Container(
            margin:EdgeInsets.only(bottom: 50) ,
            child: Center(
              child: Column(
                children: [

                  SizedBox(height: 20,),
                  Container(
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) =>ChooseOrCapture()));
                    },
                        child: Text('Recognize',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold ),),
                        style:ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple
                            ,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),))
                    ),
                    width: 350,
                    height: 50,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
