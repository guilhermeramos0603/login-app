import 'package:app/controllers/home_controller.dart';
import 'package:app/repositories/home_repository_imp.dart';
import 'package:app/service/prefs_service.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeController _controller = HomeController(HomeRepositoryImp());

  @override
  void initState() {
    super.initState();
    _controller.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Posts'),
        actions: [
          IconButton(
              onPressed: () {
                PrefsService.logout();
                Navigator.of(context)
                    .pushNamedAndRemoveUntil('/loginScreen', (_) => true);
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: _controller.posts,
        builder: (_, list, __) {
          return ListView.separated(
            separatorBuilder: (_, __) => const Divider(),
            itemCount: list.length,
            itemBuilder: (_, index) => ListTile(
              onTap: () {
                Navigator.of(context)
                    .pushNamed('/detailsScreen', arguments: list[index]);
              },
              leading: Text(list[index].id.toString()),
              title: Text(list[index].title),
              trailing: const Icon(Icons.arrow_forward),
            ),
          );
        },
      ),
    );
  }
}
