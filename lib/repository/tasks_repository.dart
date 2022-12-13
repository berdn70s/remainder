import 'package:remainder/repository/project_friends.dart';

class TasksRepository{
  final List<Task> task=[
    Task("Functional Req1", Friend("Ahmet", "Yalın"), DateTime.now()),
    Task("Functional Req2", Friend("Mehmet", "Çakıcı"), DateTime.now().subtract(Duration(days: 1))),
  ];

}

class Task{
  String content;
  Friend creator;
  DateTime createdTime;

  Task(this.content, this.creator, this.createdTime);
}
