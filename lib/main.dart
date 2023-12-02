import 'package:flutter/material.dart';
import 'variables.dart';
import 'operations.dart';
import 'numbers.dart';
import 'images.dart';
import 'tools.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  build(BuildContext context) {
    return const MaterialApp(home: Calcule());
  }
}

class Calcule extends StatefulWidget {
  const Calcule({super.key});
  @override
  State<Calcule> createState() => _CalculeState();
}

class _CalculeState extends State<Calcule> {
  @override
  build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: Title(
            color: Colors.black,
            child: const Text(
              'Calcule',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 40),
            ),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Colors.redAccent,
        ),
        body:
            //!super.Column
            Column(
          children: [
            //!Column/Container1
            Container(
                margin: const EdgeInsets.only(top: 20, right: 10, left: 10),
                decoration: BoxDecoration(
                    color: Colors.white12,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white38, width: 5)),
                child:
                    //?Column/Container1/Column
                    Column(children: [
                  //#Column/Container1/Column/SizedBox1
                  SizedBox(
                      height: 90,
                      child:
                          //#Column/Container1/Column/SizedBox1/Container
                          Container(
                              alignment: Alignment.centerLeft,
                              child: Text(result.toString(),
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: resultfontsize)))),
                  //#Column/Container1/Column/Divider
                  const Divider(
                    height: 10,
                  ),
                  //#Column/Container1/Column/Row
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //#Column/Container1/Column/Row/Container
                        Container(
                          height: 70,
                          alignment: Alignment.centerLeft,
                          child: Text(text,
                              style: TextStyle(
                                  color: Colors.white, fontSize: textfontSize)),
                        )
                      ])
                ])),
            //!Column/Spacer
            const Spacer(),
            //!Column/Row
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              MaterialButton(
                  splashColor: Colors.blueAccent.shade700,
                  color: Colors.blue,
                  height: 80,
                  minWidth: 230,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () {
                    setState(() {
                      ac();
                    });
                  },
                  child: const Text('AC',
                      style: TextStyle(
                          fontSize: 50, fontWeight: FontWeight.w600))),
              MaterialButton(
                  splashColor: Colors.blueAccent.shade700,
                  color: Colors.blue,
                  height: 80,
                  minWidth: 140,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () {
                    setState(() {
                      deletf();
                    });
                  },
                  child: Image.asset(
                    images.delet,
                    height: 40,
                  ))
            ]),

            //!Column/Divider
            const Divider(height: 14, color: Colors.transparent),
            //!Column/Column
            Column(children: [
              //!Column/Column/Row1
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //Column/Column/Row1/MaterialButton1
                  MaterialButton(
                      splashColor: Colors.blue,
                      height: 80,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Colors.blueAccent.shade700,
                      onPressed: () {
                        setState(() {
                          one();
                        });
                      },
                      child: const Text('1',
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.w600))),
                  //Column/Column/Row1/MaterialButton2
                  MaterialButton(
                      splashColor: Colors.blue,
                      height: 80,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Colors.blueAccent.shade700,
                      onPressed: () {
                        setState(() {
                          two();
                        });
                      },
                      child: const Text('2',
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.w600))),
                  //Column/Column/Row1/MaterialButton3
                  MaterialButton(
                      splashColor: Colors.blue,
                      height: 80,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Colors.blueAccent.shade700,
                      onPressed: () {
                        setState(() {
                          three();
                        });
                      },
                      child: const Text('3',
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.w600))),
                  //Column/Column/Row1/MaterialButton4
                  MaterialButton(
                      splashColor: Colors.blueAccent.shade700,
                      height: 80,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Colors.blue,
                      //!divis
                      onPressed: () {
                        setState(() {
                          divisf();
                        });
                      },
                      child: const Text('/',
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.w600)))
                ],
              ), //!Column/Column/Divider
              const Divider(height: 14, color: Colors.transparent),
              //!Column/Column/Row2
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //Column/Column/Row2/MaterialButton1
                  MaterialButton(
                      splashColor: Colors.blue,
                      height: 80,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Colors.blueAccent.shade700,
                      onPressed: () {
                        setState(() {
                          four();
                        });
                      },
                      child: const Text('4',
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.w600))),
                  //Column/Column/Row2/MaterialButton2
                  MaterialButton(
                      splashColor: Colors.blue,
                      height: 80,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Colors.blueAccent.shade700,
                      onPressed: () {
                        setState(() {
                          five();
                        });
                      },
                      child: const Text('5',
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.w600))),
                  //Column/Column/Row2/MaterialButton3
                  MaterialButton(
                      splashColor: Colors.blue,
                      height: 80,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Colors.blueAccent.shade700,
                      onPressed: () {
                        setState(() {
                          six();
                        });
                      },
                      child: const Text('6',
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.w600))),
                  //Column/Column/Row2/MaterialButton4
                  MaterialButton(
                      splashColor: Colors.blueAccent.shade700,
                      height: 80,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Colors.blue,
                      onPressed: () {
                        //!foit
                        setState(() {
                          foitf();
                        });
                      },
                      child: const Text('x',
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.w600)))
                ],
              ),
              //!Column/Column/Divider
              const Divider(height: 14, color: Colors.transparent),
              //!Column/Column/Row3
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //Column/Column/Row3/MaterialButton1
                  MaterialButton(
                      splashColor: Colors.blue,
                      height: 80,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Colors.blueAccent.shade700,
                      onPressed: () {
                        setState(() {
                          seven();
                        });
                      },
                      child: const Text('7',
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.w600))),
                  //Column/Column/Row3/MaterialButton2
                  MaterialButton(
                      splashColor: Colors.blue,
                      height: 80,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Colors.blueAccent.shade700,
                      onPressed: () {
                        setState(() {
                          eight();
                        });
                      },
                      child: const Text('8',
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.w600))),
                  //Column/Column/Row3/MaterialButton3
                  MaterialButton(
                      splashColor: Colors.blue,
                      height: 80,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Colors.blueAccent.shade700,
                      onPressed: () {
                        setState(() {
                          nine();
                        });
                      },
                      child: const Text('9',
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.w600))),
                  //Column/Column/Row3/MaterialButton4
                  MaterialButton(
                      splashColor: Colors.blueAccent.shade700,
                      height: 80,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Colors.blue,
                      onPressed: () {
                        //!moin
                        setState(() {
                          moinf();
                        });
                      },
                      child: const Text('-',
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.w600)))
                ],
              ),
              //!Column/Column/Dvider
              const Divider(height: 14, color: Colors.transparent),
              //!Column/Column/Row4
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //Column/Column/Row4/MaterialButton1
                  MaterialButton(
                      splashColor: Colors.blueAccent.shade700,
                      height: 80,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Colors.blue,
                      onPressed: () {
                        setState(() {
                          point();
                        });
                      },
                      child: const Text('.',
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.w600))),
                  //Column/Column/Row4/MaterialButton2
                  MaterialButton(
                      splashColor: Colors.blue,
                      height: 80,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Colors.blueAccent.shade700,
                      onPressed: () {
                        setState(() {
                          zero();
                        });
                      },
                      child: const Text('0',
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.w600))),
                  //Column/Column/Row4/MaterialButton3
                  MaterialButton(
                      splashColor: Colors.blueAccent.shade700,
                      height: 80,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: egale == true ? Colors.deepOrange : Colors.blue,
                      onPressed: () {
                        //!egale
                        setState(() {
                          egalef();
                        });
                      },
                      child: const Text('=',
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.w600))),
                  //Column/Column/Row4/MaterialButton4
                  MaterialButton(
                      splashColor: Colors.blueAccent.shade700,
                      height: 80,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Colors.blue,
                      onPressed: () {
                        //!pluse
                        setState(() {
                          plusf();
                        });
                      },
                      child: const Text('+',
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.w600)))
                ],
              ),
              const Divider(height: 25, color: Colors.transparent),
            ]),
          ],
        ));
  }
}
