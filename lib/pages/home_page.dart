import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:s10_qrscanner/pages/pages.dart';
import 'package:s10_qrscanner/providers/ui_provider.dart';
import 'package:s10_qrscanner/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text('Historial'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.delete_forever),
          )
        ],
      ),
      body: _HomePageBody(),
      bottomNavigationBar: const CustomNavigationBar(),
      floatingActionButton: const ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);

    final currentIndex = uiProvider.selectedMenuOpt;

    switch (currentIndex) {
      case 0:
        return const MapsPage();

      case 1:
        return const DirectionsPage();

      default:
        return const MapsPage();
    }
  }
}
