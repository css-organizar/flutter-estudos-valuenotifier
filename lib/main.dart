import 'package:flutter/material.dart';
import 'package:flutter_estudos_valuenotifier/main_controller.dart';
import 'package:flutter_estudos_valuenotifier/pessoa_entity.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    ),
  );
}

class HomeView extends StatefulWidget {
  final String title = "HomeView";

  const HomeView({Key? key}) : super(key: key);
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  MainController controller = MainController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ValueListenableBuilder<PessoaEntity>(
              valueListenable: controller.pessoa,
              builder: (context, value, widget) {
                return Text(
                  value.nome ?? '',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                controller.setNomePessoa(DateTime.now().toString());
              },
              child: Text(
                'Click',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
