import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text ('Home'),// AppBar
      ),
        body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height:40),
          const CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage ('assets/images/my.jpg'),
          ),
          const SizedBox(height:10),
          const Text(
            style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600),
          'Andrii Akatiev',
          ),
          const SizedBox(height: 10),
          const Text(
            'Flutter Developer',
                style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 10),
          Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
          style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
    ),
      ),
      );
  }
}
