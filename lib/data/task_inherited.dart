import 'package:flutter/material.dart';
import 'package:meu_primeiro_projeto_flutter/widgets/task_widget.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  final List<Task> taskList = [
    const Task(
      nome: 'Aprender Flutter',
      urlImage: 'assets/images/dash.png',
      dificuldade: 3,
    ),
    const Task(
      nome: 'Andar de bike',
      urlImage: 'assets/images/bike.webp',
      dificuldade: 1,
    ),
    const Task(
      nome: 'Ler um livro',
      urlImage: 'assets/images/livro.jpg',
      dificuldade: 3,
    ),
    const Task(
      nome: 'Meditar',
      urlImage: 'assets/images/meditar.jpeg',
      dificuldade: 5,
    ),
    const Task(
      nome: 'Jogar',
      urlImage: 'assets/images/jogar.jpg',
      dificuldade: 1,
    )
  ];

  void newTask(String name, String photo, int difficulty) {
    taskList.add(Task(nome: name, urlImage: photo, dificuldade: difficulty));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited old) {
    return old.taskList.length != taskList.length;
  }
}
