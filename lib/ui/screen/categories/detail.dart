import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: "DetailBookRoute")
class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting Detail'),
      ),
      body: ListView(
        children: [
          const Text(
              'Enim quis adipisicing est nostrud est consectetur id id cillum elit. Adipisicing labore commodo et irure elit sit adipisicing. Eu amet incididunt Lorem dolore. Irure ut incididunt labore pariatur excepteur reprehenderit cupidatat consequat cupidatat tempor amet. Veniam Lorem fugiat velit mollit ea ullamco ad officia mollit eu fugiat ipsum tempor. Aute nisi deserunt culpa Lorem ad.'),
          const SizedBox(height: 20.0),
        ] +
            List.generate(4, (index) {
              return ListTile(
                title: Text('Setting $index'),
                onTap: () {

                },
              );
            }) +
            [
              const SizedBox(
                height: 400.0,
                child: AutoRouter(),
              ),
            ],
      ),
    );
  }
  }
