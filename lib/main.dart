import 'package:flutter/material.dart';

import '../utils/global.dart';

void main() => runApp(const StepperExampleApp());

class StepperExampleApp extends StatefulWidget {
  const StepperExampleApp({super.key});

  @override
  State<StepperExampleApp> createState() => _StepperExampleAppState();
}

class _StepperExampleAppState extends State<StepperExampleApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text(
            'Flutter Stepper Demo',
            style: TextStyle(color: Colors.white),
          ),
          toolbarHeight: 70,
        ),
        body: StepperExample(),
      ),
    );
  }
}

class StepperExample extends StatefulWidget {
  const StepperExample({super.key});

  @override
  State<StepperExample> createState() => _StepperExampleState();
}

class _StepperExampleState extends State<StepperExample> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          setState(() {
            if(isgrid)
            {
              isgrid = false;
            }
            else
            {
              isgrid = true;
            }
          });
        },
        child: Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ),
      body: Stepper(
        physics: const BouncingScrollPhysics(),
        currentStep: selectedIndex,
        onStepCancel: () {
          setState(() {
            if (selectedIndex > 0) {
              setState(() {
                selectedIndex--;
              });
            } else {
              selectedIndex = 2;
            }
          });
        },
        onStepContinue: () {
          setState(() {
            if (selectedIndex != 2) {
              setState(() {
                selectedIndex++;
              });
            }
          });
        },
        onStepTapped: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        type: isgrid?StepperType.horizontal:StepperType.vertical,
        steps: [
          Step(
              stepStyle: StepStyle(
                  color: Colors.blue, indexStyle: TextStyle(color: Colors.white)),
              title: Text(
                'Account',
                style: TextStyle(fontSize: 15),
              ),
              isActive: selectedIndex == 0,
              content: TextField(
                cursorColor: Colors.blue.shade700,
                controller: txtAcc,
                decoration: InputDecoration(hintText: 'Account '),
              )),
          Step(
              stepStyle: StepStyle(
                  color: Colors.blue, indexStyle: TextStyle(color: Colors.white)),
              title: Text('Address', style: TextStyle(fontSize: 15)),
              isActive: selectedIndex == 1,
              content: TextField(
                cursorColor: Colors.blue.shade700,
                controller: txtAdd,
                decoration: InputDecoration(hintText: 'Address '),
              )),
          Step(
              stepStyle: StepStyle(
                  color: Colors.blue, indexStyle: TextStyle(color: Colors.white)),
              title: Text('Mobile Number', style: TextStyle(fontSize: 15)),
              isActive: selectedIndex == 2,
              content: TextField(
                cursorColor: Colors.blue.shade700,
                controller: txtMob,
                decoration: InputDecoration(
                    hintText: 'Mobile Number',
                    hintStyle: TextStyle(color: Colors.grey)),
              )),
        ],
      ),
    ));
  }
}
