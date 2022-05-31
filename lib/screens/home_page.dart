import 'package:flutter/material.dart';
import 'package:flutter_playground/services/json_placeholder_service.dart';

import '../controllers/home_controller.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController(JsonPlaceholderService());

  @override
  void initState() {
    super.initState();
    controller.fetchAllToDo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
        ),
        body: AnimatedBuilder(
          animation: controller,
          builder: (context, widget) {
            return ListView.builder(
              itemCount: controller.to_dos.length,
              itemBuilder: ((context, index) {
                final to_do = controller.to_dos[index];
                return ListTile(
                  title: Text(to_do.title),
                );
              }),
            );
          },
        ));
  }
}
