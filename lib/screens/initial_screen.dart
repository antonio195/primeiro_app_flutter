import 'package:flutter/material.dart';
import 'package:meu_primeiro_projeto_flutter/widgets/task_widget.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.task_alt_outlined),
        title: const Text("Tarefas"),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(milliseconds: 500),
        child: ListView(
          children: const [
            Task(
              nome: 'Aprender Flutter',
              urlImage: 'assets/images/dash.png',
              dificuldade: 3,
            ),
            Task(
              nome: 'Andar de bike',
              urlImage: 'assets/images/bike.webp',
              dificuldade: 1,
            ),
            Task(
              nome: 'Ler um livro',
              urlImage: 'assets/images/livro.jpg',
              dificuldade: 3,
            ),
            Task(
              nome: 'Meditar',
              urlImage: 'assets/images/meditar.jpeg',
              dificuldade: 5,
            ),
            Task(
              nome: 'Jogar',
              urlImage: 'assets/images/jogar.jpg',
              dificuldade: 1,
            ),
            SizedBox(
              height: 80,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
