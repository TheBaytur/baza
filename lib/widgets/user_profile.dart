import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Container(
        color: Colors.white,
        child: Container(          
          width: double.infinity,
          child: Column(            
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Container(               
                width: 100,
                height: 100,
                child: Placeholder(
                  // fallbackHeight: 200,
                  // fallbackWidth: 200,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Vasya Pupkin'),
              SizedBox(
                height: 10,
              ),
              Text('+1 (234) 567-89-00'),
              SizedBox(
                height: 10,
              ),
              Text('New York, USA'),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}