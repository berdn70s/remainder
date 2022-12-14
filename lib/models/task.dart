import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:remainder/models/person.dart';

class Task{
  String content;
  String description;
  List<Person> whoToDo;
  bool? isItDone;

  Task(this.content, this.description, this.whoToDo, {this.isItDone});


  Map<String, dynamic> toMap() {
    return {
      'content': content,
      'description': description,
      'whoToDo': whoToDo,
      //'createdTime': createdTime,
      //'dueTime': dueTime,
    };
  }

  Task.fromMap(Map<String, dynamic> taskMap)
      : content = taskMap["content"],
        description = taskMap["description"],
        whoToDo = taskMap["whoToDo"],
        isItDone = taskMap["isItDone"];

  Task.fromDocumentSnapshot(DocumentSnapshot<Map<String, dynamic>> doc)
      : content = doc.data()!["content"],
        description = doc.data()!["description"],
        whoToDo = doc.data()?["whoToDo"] == null
            ? null
            : doc.data()?["whoToDo"].cast<Person>(),
        isItDone =doc.data()!["isItDone"];

}