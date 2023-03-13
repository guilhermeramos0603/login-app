import 'package:app/models/post_model.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PostModel args = ModalRoute.of(context)!.settings.arguments as PostModel;
    return Scaffold(
      appBar: AppBar(title: Text('Post: ${args.id}')),
      body: Container(
        padding: const EdgeInsets.all(28),
        child: Column(children: [
          Text(
            args.title,
            style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
          const SizedBox(height: 20),
          Text(
            args.body,
            style: const TextStyle(fontSize: 22),
          ),
        ]),
      ),
    );
  }
}
