import 'package:flutter/material.dart';
import 'package:quiz_app/server.dart';

class Question extends StatefulWidget {
  const Question({Key? key}) : super(key: key);

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {


  int no=0;
  String result="";
  List Question = [
    Quiz(question: 'The first President of India is Rajendra Prasad',ans: true),
    Quiz(question: 'The first Prime Minister of India is Mahathma gandhi',ans: false),
    Quiz(question: 'Father Of Nation Is Mahathma Gandhi',ans: true),
    Quiz(question: 'National Animal Of India is Giraffe',ans: false),
    Quiz(question: 'Cricket is the National sport of India',ans: false),
    Quiz(question: 'India does not have any Active Volcanoes',ans: false),
    Quiz(question: ' India is larger than Argentina by land area',ans: true),
    Quiz(question: 'India is the world’s largest producer of bananas',ans: true),



  ];
  void nextqus(){
    if(no<Question.length)
      {
        no++;
      }
  }
  void checkans(bool check){
  if(check==Question[no].ans) {
    result="correct ✔";
  }
  else{
    result="wrong ✘";
  }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Text(
            Question[no].question,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors. black,
              fontSize: 30.0,
            ),
          ),
        ),
        SizedBox(height: 50),
        TextButton(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors. white),
            backgroundColor :MaterialStateProperty.all<Color>(Colors. green),
          ),
          onPressed: () {
            setState(() {
              checkans(true);
              nextqus();
            });
          },
          child: Text('True'),
        ),
        SizedBox(height: 20),
        TextButton(
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              backgroundColor :MaterialStateProperty.all<Color>(Colors.red)
          ),
          onPressed: () {
            setState(() {
              checkans(false);
              nextqus();
            });
          },
          child: Text(' False'),
        ),
        SizedBox(height: 120,),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5),
          width: 450,
          alignment: Alignment.bottomCenter,
          decoration: const BoxDecoration(color:Colors.black),
          child: Row(
            children: [
              Text(result,
            style: TextStyle(
              color: Colors. white,))


            ],
          )
        )
      ]),
    );
  }
}

