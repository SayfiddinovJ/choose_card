import 'package:flutter/material.dart';
class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  Color firstColor = Colors.blue;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cards'),
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50,horizontal: 10),
          child: Column(

            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: firstColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                  child: Column(children: [
                    Row(children: [
                      Text('HUMO'),
                      Spacer(),
                      Text('Johnny Depp'),
                    ],),
                    Spacer(),
                    Center(child: Text("30 000.0 so'm"),),
                    Spacer(),
                    Row(children: [
                      Text('12/24'),
                      Spacer(),
                      Text('**** 1234'),
                    ],)
                  ],),
                ),
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  buttons(Colors.blue),
                  const SizedBox(width: 5,),
                  buttons(Colors.red),
                  const SizedBox(width: 5,),
                  buttons(Colors.yellow),
                  const SizedBox(width: 5,),
                  buttons(Colors.green),
                  const SizedBox(width: 5,),
                  buttons(Colors.purple),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buttons(Color color){
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
      ),
      onPressed: () {
        setState(() {
          firstColor = color;
        });
      },
      child: const Text(''),
    );
  }
}
