import 'package:flutter/material.dart';
import '../screens/filter_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  Widget buidListTile(IconData icon, String text, Function() tapHandler) {
    return ListTile(
      leading: Icon(icon, size: 25),
      title: Text(
        text,
        style: const TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 25,
            fontWeight: FontWeight.bold),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        Container(
          height: 120,
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          alignment: Alignment.bottomLeft,
          color: Theme.of(context).colorScheme.secondary,
          child: const Text(
            'Cooking Up!',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 30,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        buidListTile(Icons.restaurant_menu, 'Meals', () {
          Navigator.of(context).pushReplacementNamed('/');
        }),
        buidListTile(Icons.settings, 'Settings', () {
          Navigator.of(context).pushReplacementNamed(FilterScreen.routeName);
        }),
      ],
    ));
  }
}
