import 'package:flutter/material.dart';

class ScoreScreen extends StatelessWidget {
  int result;
  int maximum;

  ScoreScreen({Key key, @required this.result, @required this.maximum}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /*automaticallyImplyLeading: false => para tirar o botão de voltar*/
        backgroundColor: Color(0xff3E96FF),
        title: Text('Score'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                SizedBox(height: 113,),
                Text(
                  'VOCÊ ACERTOU', 
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 120),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      '$result', 
                      style: TextStyle(
                        fontSize: 100, 
                        fontWeight: FontWeight.w800, 
                        color: Color(0xffFB3A7E)
                      ),
                    ),
                    Text(
                      '/$maximum',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff374952),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 87,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.25),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(0, -1),
                )
              ],
            ),
            child: Center(
              child: FlatButton(
                onPressed: () {
                  Navigator.popUntil(context, (route) => route.isFirst);
                }, 
                child: Text(
                  'Jogar novamente', 
                  style: TextStyle(fontSize: 16.5),
                ),
                color: Color(0xffA052FF),
                textColor: Color(0xfff7f7f7),
                padding: EdgeInsets.fromLTRB(60, 11, 60, 11),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}