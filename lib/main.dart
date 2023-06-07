import 'package:flutter/material.dart';
import './quiz_brain.dart';

void main() {
  runApp(Ujian());
}

class Ujian extends StatelessWidget {
  const Ujian({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UjianPage(),
    );
  }
}

class UjianPage extends StatefulWidget {
  const UjianPage({super.key});

  @override
  State<UjianPage> createState() => _UjianPageState();
}

class _UjianPageState extends State<UjianPage> {
  QuizBrain quizBrain = QuizBrain();

  List<Widget> skorKeeper = [];

  void cekJawaban(jawaban) {
    setState(() {
      if (quizBrain.getJawaban == jawaban) {
        skorKeeper.add(Icon(
          Icons.check,
          color: Colors.green,
        ));
      } else {
        skorKeeper.add(Icon(
          Icons.close,
          color: Colors.red,
        ));
      }
      if (quizBrain.selesai == true) {
        quizBrain.reset();
      } else {
        quizBrain.nextPertanyaan();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade800,
        // appBar: AppBar(
        //   title: Text('Ujian App'),
        // ),
        body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                        quizBrain.getPertanyaan(),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextButton(
                      onPressed: () {
                        cekJawaban(true);
                      },
                      child: Text(
                        'Salah',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: TextButton.styleFrom(backgroundColor: Colors.red),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextButton(
                      onPressed: () {
                        cekJawaban(true);
                      },
                      child: Text(
                        'Benar',
                        style: TextStyle(color: Colors.white),
                      ),
                      style:
                          TextButton.styleFrom(backgroundColor: Colors.green),
                    ),
                  ),
                ),
                Row(
                  children: skorKeeper,
                )
              ]),
        ));
  }
}
