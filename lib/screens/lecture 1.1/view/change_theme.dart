import 'package:flutter/material.dart';

class ChangeTheme extends StatelessWidget {
  const ChangeTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(Icons.arrow_back_ios_new,size: 28,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(Icons.add_circle_outline_outlined,size: 28,),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              CircleAvatar(
                radius: 80,
              ),
              SizedBox(height: 5,),
              Text('Vishal Keshri',style: TextStyle(
                fontSize: 30,
              ),),
              Row(
                children: [
                  Row(
                    children: [
                      SizedBox(height: 50,),
                      Icon(Icons.dark_mode),
                      SizedBox(width: 10,),
                      Text('Light Theme',style: TextStyle(
                        fontSize: 20,
                      ),),
                    ],
                  )
                ],
              )
            ],
          ),
        )
      ),
    );
  }
}
