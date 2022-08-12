class questionModel {
  late int Qid;
  List<dynamic> answer =
      []; //late is used for variables that may be initialised later on at run time.
  late String question;
  late final List<String> options;

  questionModel(this.Qid, this.question, this.answer, this.options);
}
