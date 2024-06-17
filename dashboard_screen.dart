import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Header section with user greeting
          Container(
            padding: EdgeInsets.all(16.0),
            color: Colors.deepPurple,
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/profile_picture.png'),
                  radius: 30.0,
                ),
                SizedBox(width: 10.0),
                Text(
                  'Hello Thomas',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.0),
          // Quick Actions section
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              padding: EdgeInsets.all(16.0),
              children: [
                _buildQuickAction('Bills', Icons.receipt, Colors.blue),
                _buildQuickAction('Disconnect', Icons.power_off, Colors.red),
                _buildQuickAction('Transfer', Icons.swap_horiz, Colors.orange),
                _buildQuickAction('Services', Icons.build, Colors.green),
                _buildQuickAction('Complaints', Icons.report, Colors.purple),
                _buildQuickAction('Update', Icons.update, Colors.teal),
                _buildQuickAction('Connect', Icons.link, Colors.brown),
                _buildQuickAction('Outage', Icons.warning, Colors.yellow),
              ],
            ),
          ),
          // Gas info section
          Container(
            padding: EdgeInsets.all(16.0),
            color: Colors.grey[200],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Gas | SA1234567',
                  style: TextStyle(color: Colors.black54, fontSize: 16.0),
                ),
                Text(
                  'Last Month',
                  style: TextStyle(color: Colors.black54, fontSize: 16.0),
                ),
              ],
            ),
          ),
          // Bills section
          ListTile(
            leading: Icon(Icons.receipt, color: Colors.deepPurple),
            title: Text('Bills'),
            subtitle: Text('20 Jan 2020'),
            trailing: Text(
              '433',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.deepPurple),
            ),
          ),
          // Bottom navigation bar
          BottomNavigationBar(
            selectedItemColor: Colors.deepPurple,
            unselectedItemColor: Colors.grey,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'Dashboard'),
              BottomNavigationBarItem(icon: Icon(Icons.show_chart), label: 'Usage'),
              BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
              BottomNavigationBarItem(icon: Icon(Icons.support), label: 'Support'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildQuickAction(String title, IconData icon, Color color) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: color,
          radius: 30.0,
          child: Icon(icon, size: 30.0, color: Colors.white),
        ),
        SizedBox(height: 10.0),
        Text(
          title,
          style: TextStyle(fontSize: 14.0, color: Colors.black),
        ),
      ],
    );
  }
}
