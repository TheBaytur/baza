import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  List<MenuRowData> firstMenuRow = [
    MenuRowData(icon: Icons.settings, text: 'Settings', color: Colors.blue),
    MenuRowData(icon: Icons.payment, text: 'Payment', color: Colors.green),
    MenuRowData(
      icon: Icons.history,
      text: 'Ride History',
      color: Colors.orange,
    ),
    MenuRowData(icon: Icons.support, text: 'Support', color: Colors.red),
    MenuRowData(icon: Icons.info, text: 'About', color: Colors.purple),
  ];
  List<MenuRowData> secondMenuRow = [
    MenuRowData(
      icon: Icons.language,
      text: 'Language',
      color: Colors.deepPurpleAccent,
    ),
    MenuRowData(icon: Icons.settings, text: 'Settings', color: Colors.teal),
    MenuRowData(icon: Icons.logout, text: 'Logout', color: Colors.black),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: Text('Settings')),
      body: Container(
        color: Colors.grey[200],
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _UserInfo(),
              SizedBox(height: 20),
              _MenuWidget(menuRow: firstMenuRow),
              SizedBox(height: 20),
              _MenuWidget(menuRow: secondMenuRow),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuRowData {
  final IconData icon;
  final String text;
  final Color color;

  MenuRowData({required this.icon, required this.text, required this.color});
}

class _MenuWidget extends StatelessWidget {
  final List<MenuRowData> menuRow;

  const _MenuWidget({Key? key, required this.menuRow}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,

      child: Column(
        children: menuRow.map((data) => _MenuWidgetRow(data: data)).toList(),
      ),
    );
  }
}

class _MenuWidgetRow extends StatelessWidget {
  final MenuRowData data;

  const _MenuWidgetRow({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Icon(data.icon, color: data.color),
          SizedBox(width: 10),
          Expanded(child: Text(data.text, style: TextStyle(fontSize: 18))),
          Icon(Icons.chevron_right_sharp),
        ],
      ),
    );
  }
}

class _UserInfo extends StatelessWidget {
  const _UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
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
