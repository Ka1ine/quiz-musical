import 'package:flutter/material.dart';
import 'music_screen.dart';

class InitialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column( 
        children: [
          SizedBox(height: 0.0),
          Image(
            image: AssetImage('lib/assets/logo.png'),
          ),
          SizedBox(height: 0),
          Text('Quiz Musical', style: TextStyle(
            fontSize: 35, 
            fontWeight: FontWeight.w900,
            color: Color.fromRGBO(60, 148, 255, 1)
            ),
          ),
          SizedBox(height: 120),
          FlatButton(
            onPressed: (){
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => MusicScreen()),
              );
            },
            child: Text(
              'Começar', 
              style: TextStyle(
                fontSize: 20, 
                fontWeight: FontWeight.w800
              ),
            ),
            color: Color(0xffFB3A7E),
            textColor: Color(0xffffffff),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                6,
              ),
            ),
            padding: EdgeInsets.fromLTRB(80, 11, 80, 11,),
          ),
        ],
      ),
    );
  }
}