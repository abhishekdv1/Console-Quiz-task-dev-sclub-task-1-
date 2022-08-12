// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names
import 'dart:io';

import 'questionModel.dart' as quesModel;

class Topic {
  //Sometimes you don't want to allow a parameter to be null and there is no natural default variable.
  List<quesModel.questionModel> loadQues(List<dynamic> data) {
    List<quesModel.questionModel> questList = [];

    for (var question in data) {
      questList.add(quesModel.questionModel(question['Qid'],
          question['question'], question['answer'], question['options']));
    }

    return questList;
  }

  void printQuest(List<quesModel.questionModel> questList) {
    // print(questList.length);
    questList.shuffle();
    int score = 0;
    for (var quest in questList) {
      print("\nQ. ${quest.question}");
      print("Options :");
      int qno = 0;
      quest.options.shuffle();
      for (var opt in quest.options) {
        print(++qno);
        print(opt);
      }
      List<int> optAns = [];
      int numOfOpt = quest.answer.length;
      for (var i = 0; i < numOfOpt; i++) {
        // int opt = int.parse(stdin.readLineSync()!);
        optAns.add(int.parse(stdin.readLineSync()!));
      }
      int j;
      for (j = 1; j < numOfOpt; j++) {
        if (quest.answer[j] != optAns[j]) break;
      }
      if (j == numOfOpt) {
        print("correct ans");
        score += 2;
      } else {
        print("incorrect ans");
      }
    }
    print("You scored ${score}");
  }
}

class GK extends Topic {
  List<dynamic> generalKnowledge = [
    {
      "Qid": 1,
      "question": "December 9 is celebrated as __________.",
      "options": [
        "World Environment Day",
        "International Anti-Corruption Day",
        "World Ozone Day",
        "World Red Cross Day"
      ],
      "answer": [1]
    },
    {
      "Qid": 2,
      "question": "Chandigarh is the capital of which state ?",
      "options": ["Maharashtra", "Punjab", "Haryana", "Uttarakhand"],
      "answer": [1, 2]
    },
    {
      "Qid": 3,
      "question":
          "The headquarters of United Nations Environment Programme (UNEP) is located in __________.",
      "options": ["Brussels", "Geneva", "Kathmandu", "Nairobi"],
      "answer": [3]
    }
  ];

  GK() {
    List<quesModel.questionModel> gkTemp = loadQues(generalKnowledge);
    // print(gkTemp.length);
    printQuest(gkTemp);
  }
}

class DWM extends Topic {
  List<dynamic> dwm = [
    {
      "Qid": 1,
      "question": " Data about data is called ___.",
      "options": ["Table", "Database", "Metadata", "Integration"],
      "answer": [2]
    },
    {
      "Qid": 2,
      "question":
          "The ___ software gives the user the opportunity to look at the data from a variety of different dimensions.",
      "options": [
        "Query tools",
        "Multidimensional Analysis Software",
        "Data Mining Tools",
        "None of the above"
      ],
      "answer": [1]
    },
    {
      "Qid": 3,
      "question":
          "The ___ operation performs a selection on one dimension of the given cube, resulting in a subcube.",
      "options": ["Pivot", "Slice", "Roll-up", "Drill-down"],
      "answer": [1]
    },
  ];

  DWM() {
    List<quesModel.questionModel> dwmTemp = loadQues(dwm);
    // print(dwmTemp.length);
    printQuest(dwmTemp);
  }
}

//git init
//git add
//git commit
//git status