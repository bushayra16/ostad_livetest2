import 'package:flutter/material.dart';

void main() {
  runApp( const MaterialApp(
    home:  TextStylingApp())
  );
    
}

class TextStylingApp extends StatefulWidget {
  const TextStylingApp({super.key});

  @override
  State<TextStylingApp> createState() => _TextStylingAppState();
}

class _TextStylingAppState extends State<TextStylingApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Styling App', style: TextStyle(fontSize: 10),),
      ),
      body: Center ( child: 
      Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Flutter Text Styling', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          SizedBox(height: 15,),
          Text('Experiment with text styles', style: TextStyle(fontSize: 13, fontStyle: FontStyle.italic ) ,),
          SizedBox(height: 5,),
          TextButton(onPressed: (){
                        showDialog(context: context, builder: (context){
                          return AlertDialog(
                            title: Text('You clicked the button!.', style: TextStyle(fontSize: 11),),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero) ,
                          );
                        });
                      },
                      child: Text('Click Me', style: TextStyle(fontSize: 11)),
                      ),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Welcome to', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                          SizedBox(width: 2,),
                          Text(' Flutter!', style: TextStyle(color: Colors.blue,fontSize: 12, fontWeight: FontWeight.bold),)
                        ],
                      ),
        ],
      )),
    );
  }
}