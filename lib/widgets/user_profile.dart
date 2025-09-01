import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: Container(
        color: Colors.white,
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _UserInfo(),
            ],
          ),
        ),
      ),
    );
  }
}

class _UserInfo extends StatelessWidget {
  const _UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 20),
                _AvatarWidget(),
                SizedBox(height: 20),
                _UserNameWidget(),
                SizedBox(height: 10),
                _UserPhoneWidget(),
                SizedBox(height: 10),
                _UserAddressWidget(),
                SizedBox(height: 10),
        ],
      ),
    );
  }
}

class _UserAddressWidget extends StatelessWidget {
  const _UserAddressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'New York, USA',
      style: TextStyle(color: Colors.grey, fontSize: 15),
    );
  }
}

class _UserPhoneWidget extends StatelessWidget {
  const _UserPhoneWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '+1 (234) 567-89-00',
      style: TextStyle(color: Colors.grey, fontSize: 16),
    );
  }
}

class _UserNameWidget extends StatelessWidget {
  const _UserNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Vasya Pupkin',
      style: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}



class _AvatarWidget extends StatelessWidget {
  const _AvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: Placeholder(
        // fallbackHeight: 200,
        // fallbackWidth: 200,
      ),
    );
  }
}
