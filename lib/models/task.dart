class Task {
  String taskTitle;
  bool isComplete;
  Task({this.taskTitle, this.isComplete});
  toggleTask() {
    this.isComplete = !this.isComplete;
  }
}
