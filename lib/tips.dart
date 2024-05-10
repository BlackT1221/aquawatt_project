import 'package:flutter/material.dart';

class Tips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tips'),
      ),
      body: ListView(
        children: [
          _buildTip(
            'Título del Tip 1',
            'Subtítulo del Tip 1',
            'assets/tip1.jpg',
          ),
          _buildTip(
            'Título del Tip 2',
            'Subtítulo del Tip 2',
            'assets/tip2.jpg',
          ),
          // Agrega más tips según sea necesario
        ],
      ),
    );
  }

  Widget _buildTip(String title, String subtitle, String imagePath) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage(imagePath),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      onTap: () {

      },
    );
  }
}
