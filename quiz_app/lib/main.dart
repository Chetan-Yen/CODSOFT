import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final quizzes = [
      Quiz(
        title: 'General Knowledge',
        color: Colors.lightBlueAccent,
        questions: [
          Question(questionText: 'What is the capital of France?', options: ['Berlin', 'Madrid', 'Paris', 'Rome'], correctOptionIndex: 2),
          Question(questionText: 'What is 2 + 3?', options: ['3', '4', '5', '6'], correctOptionIndex: 2),
          Question(questionText: 'Which planet is known as the Red Planet?', options: ['Earth', 'Mars', 'Jupiter', 'Saturn'], correctOptionIndex: 1),
          Question(questionText: 'What is the largest ocean on Earth?', options: ['Atlantic Ocean','Indian Ocean', 'Arctic Ocean', 'Pacific Ocean'], correctOptionIndex: 3),
          Question(questionText: 'Who wrote "To Kill a Mockingbird"?', options: ['Harper Lee', 'Mark Twain', 'Ernest Hemingway', 'F. Scott Fitzgerald'], correctOptionIndex: 0),
          Question(questionText: 'What is the chemical symbol for gold?', options: [ 'Ag','Pb', 'Fe','Au'], correctOptionIndex: 3),
          Question(questionText: 'Which element has the atomic number 1?', options: ['Helium', 'Oxygen', 'Hydrogen', 'Carbon'], correctOptionIndex: 2),
          Question(questionText: 'What is the hardest natural substance on Earth?', options: ['Gold', 'Diamond', 'Iron','Platinum'], correctOptionIndex: 1),
          Question(questionText: 'What year did World War I begin?', options: ['1912','1914', '1916', '1918'], correctOptionIndex: 1),
          Question(questionText: 'Which country is the largest by land area?', options: ['China','USA', 'Canada', 'Russia'], correctOptionIndex: 3),
        ],
      ),
      Quiz(
        title: 'Science',
        color: Colors.green,
        questions: [
          Question(questionText: 'What is the chemical symbol for water?', options: ['H2O', 'O2', 'CO2', 'H2SO4'], correctOptionIndex: 0),
          Question(questionText: 'What planet is known as the Red Planet?', options: ['Earth', 'Mars', 'Jupiter', 'Saturn'], correctOptionIndex: 1),
          Question(questionText: 'How many bones are in the human body?', options: ['206', '205', '208', '210'], correctOptionIndex: 0),
          Question(questionText: 'What gas do plants absorb from the atmosphere?', options: ['Oxygen', 'Carbon Dioxide', 'Nitrogen', 'Hydrogen'], correctOptionIndex: 1),
          Question(questionText: 'What is the powerhouse of the cell?', options: ['Nucleus', 'Mitochondria','Ribosome', 'Endoplasmic Reticulum'], correctOptionIndex: 1),
          Question(questionText: 'What is the most common element in the Earth\'s crust?', options: ['Iron', 'Oxygen', 'Silicon', 'Aluminum'], correctOptionIndex: 1),
          Question(questionText: 'What organ is responsible for pumping blood throughout the body?', options: ['Lung','Kidney', 'Heart', 'Liver'], correctOptionIndex: 2),
          Question(questionText: 'What is the smallest unit of life?', options: ['Cell', 'Tissue', 'Organ', 'System'], correctOptionIndex: 0),
          Question(questionText: 'What is the chemical symbol for sodium?', options: ['Na', 'S', 'N', 'So'], correctOptionIndex: 0),
          Question(questionText: 'Which planet is known as the "Giant Red Spot"?', options: ['Mars', 'Saturn', 'Neptune', 'Jupiter'], correctOptionIndex: 3),
        ],
      ),
      Quiz(
        title: 'History',
        color: Colors.red,
        questions: [
          Question(questionText: 'Who was the first President of the United States?', options: ['Thomas Jefferson', 'Abraham Lincoln', 'George Washington', 'John Adams'], correctOptionIndex: 2),
          Question(questionText: 'In which year did the Titanic sink?', options: ['1905', '1910','1912', '1915'], correctOptionIndex: 2),
          Question(questionText: 'Who was the famous queen of Ancient Egypt?', options: ['Cleopatra', 'Nefertiti','Hatshepsut', 'Tiy'], correctOptionIndex: 0),
          Question(questionText: 'What was the main cause of World War II?', options: ['Economic Depression', 'Political Tensions','Treaty of Versailles', 'Cold War'], correctOptionIndex: 2),
          Question(questionText: 'Who was the leader of the Soviet Union during World War II?', options: ['Joseph Stalin', 'Vladimir Lenin', 'Leon Trotsky', 'Nikita Khrushchev'], correctOptionIndex: 0),
          Question(questionText: 'In which battle was Napoleon Bonaparte defeated?', options: ['Waterloo', 'Austerlitz', 'Trafalgar', 'Borodino'], correctOptionIndex: 0),
          Question(questionText: 'Who discovered America?', options: ['Leif Erikson', 'Christopher Columbus', 'Ferdinand Magellan','James Cook'], correctOptionIndex: 1),
          Question(questionText: 'What was the name of the first manned moon landing mission?', options: ['Apollo 11', 'Apollo 12', 'Apollo 13', 'Apollo 14'], correctOptionIndex: 0),
          Question(questionText: 'Who was the first woman to win a Nobel Prize?', options: ['Marie Curie', 'Rosalind Franklin','Ada Lovelace', 'Barbara McClintock'], correctOptionIndex: 0),
          Question(questionText: 'Which empire was ruled by Genghis Khan?', options: ['Ottoman Empire','Roman Empire','Mongol Empire', 'Byzantine Empire'], correctOptionIndex: 2),
        ],
      ),
      Quiz(
        title: 'Geography',
        color: Colors.teal,
        questions: [
          Question(questionText: 'What is the capital of Australia?', options: ['Sydney', 'Melbourne','Canberra', 'Brisbane'], correctOptionIndex: 2),
          Question(questionText: 'Which country is known as the Land of the Rising Sun?', options: ['China', 'South Korea','Japan', 'Thailand'], correctOptionIndex: 2),
          Question(questionText: 'Which desert is the largest in the world?', options: ['Sahara','Gobi', 'Kalahari', 'Antarctic'], correctOptionIndex: 3),
          Question(questionText: 'What river is the longest in the world?', options: ['Amazon', 'Nile','Yangtze', 'Mississippi'], correctOptionIndex: 1),
          Question(questionText: 'Which is the smallest country in the world?', options: ['San Marino', 'Monaco', 'Vatican City', 'Liechtenstein'], correctOptionIndex: 2),
          Question(questionText: 'Which continent is known as the Dark Continent?', options: ['Asia', 'Africa', 'Europe','Australia'], correctOptionIndex: 1),
          Question(questionText: 'What is the largest island in the world?', options: ['Greenland', 'New Guinea', 'Borneo', 'Madagascar'], correctOptionIndex: 0),
          Question(questionText: 'Which ocean is the largest?', options: ['Atlantic Ocean', 'Indian Ocean','Southern Ocean', 'Pacific Ocean'], correctOptionIndex: 3),
          Question(questionText: 'Which country has the most islands?', options: ['Sweden', 'Canada', 'Indonesia', 'Norway'], correctOptionIndex: 1),
          Question(questionText: 'What mountain range separates Europe and Asia?', options: ['Andes', 'Rockies', 'Ural','Himalayas'], correctOptionIndex: 2),
        ],
      ),
      Quiz(
        title: 'Aviation',
        color: Colors.purpleAccent,
        questions: [
          Question(questionText: 'What is the fastest commercial jet aircraft?', options: ['Boeing 747','Concorde','Airbus A380','Boeing 787'], correctOptionIndex: 1),
          Question(questionText: 'What is the main purpose of the black box in an aircraft?', options: ['Navigation','Record flight data','Communication', 'Engine control'], correctOptionIndex: 1),
          Question(questionText: 'Who was the first person to fly solo across the Atlantic Ocean?', options: ['Charles Lindbergh','Amelia Earhart', 'Orville Wright', 'Howard Hughes'], correctOptionIndex: 0),
          Question(questionText: 'What does the term "jet lag" refer to?', options: ['Exhaustion from flying', 'Time zone confusion', 'Loss of cabin pressure', 'Air turbulence'], correctOptionIndex: 1),
          Question(questionText: 'What is the largest passenger aircraft in the world?', options: ['Boeing 777', 'Airbus A380', 'Boeing 787','Airbus A350'], correctOptionIndex: 1),
          Question(questionText: 'What does the acronym FAA stand for?', options: ['Federal Aviation Authority', 'Federal Aeronautics Agency', 'Flight Aeronautics Administration', 'Federal Airline Association'], correctOptionIndex: 0),
          Question(questionText: 'What is a "go-around" in aviation?', options: ['A mid-air collision avoidance', 'A maneuver to avoid turbulence', 'A procedure to abort landing and climb away', 'A quick descent for emergency landing'], correctOptionIndex: 2),
          Question(questionText: 'What is the most common type of aircraft engine?', options: ['Jet engine','Turbo-prop engine', 'Piston engine', 'Rocket engine'], correctOptionIndex: 0),
          Question(questionText: 'Which pilot is known for their pioneering solo flight across the Atlantic?', options: ['Howard Hughes','Amelia Earhart','Charles Lindbergh', 'Bessie Coleman'], correctOptionIndex: 2),
          Question(questionText: 'What is the primary purpose of a winglet on an aircraft?', options: ['Increase fuel efficiency', 'Enhance aerodynamic performance', 'Provide additional lift', 'Reduce noise'], correctOptionIndex: 1),
        ],
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz App'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(18.0),
        itemCount: quizzes.length,
        itemBuilder: (context, index) {
          final quiz = quizzes[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 9.0),
            child: Container(
              color: quiz.color,
              child: ListTile(
                title: Text(quiz.title, style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuizScreen(quiz: quiz),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class QuizScreen extends StatefulWidget {
  final Quiz quiz;

  const QuizScreen({Key? key, required this.quiz}) : super(key: key);

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int _currentQuestionIndex = 0;
  int _score = 0;
  List<int> _selectedOptions = [];

  void _answerQuestion(int selectedOptionIndex) {
    if (widget.quiz.questions[_currentQuestionIndex].correctOptionIndex == selectedOptionIndex) {
      setState(() {
        _score++;
      });
    }
    setState(() {
      _selectedOptions.add(selectedOptionIndex);
      if (_currentQuestionIndex < widget.quiz.questions.length - 1) {
        _currentQuestionIndex++;
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen(
              score: _score,
              totalQuestions: widget.quiz.questions.length,
              questions: widget.quiz.questions,
              selectedOptions: _selectedOptions,
            ),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final question = widget.quiz.questions[_currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.quiz.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                border: Border.all(color: Colors.blue, width: 3),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                question.questionText,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 22),
            Expanded(
              child: ListView.builder(
                itemCount: question.options.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 9.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(18),
                        minimumSize: const Size.fromHeight(53),
                      ),
                      onPressed: () => _answerQuestion(index),
                      child: Text(question.options[index]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ResultScreen extends StatelessWidget {
  final int score;
  final int totalQuestions;
  final List<Question> questions;
  final List<int> selectedOptions;

  const ResultScreen({
    Key? key,
    required this.score,
    required this.totalQuestions,
    required this.questions,
    required this.selectedOptions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Results'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your Score: $score / $totalQuestions',
                style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 22),
              for (int i = 0; i < questions.length; i++)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 9.0),
                  child: Container(
                    padding: const EdgeInsets.all(18.0),
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      border: Border.all(color: Colors.blue, width: 3),
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Q${i + 1}: ${questions[i].questionText}',
                          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 12),
                        for (int j = 0; j < questions[i].options.length; j++)
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5.0),
                            child: Text(
                              '${j + 1}. ${questions[i].options[j]}',
                              style: TextStyle(
                                color: j == questions[i].correctOptionIndex
                                    ? Colors.green
                                    : j == selectedOptions[i]
                                        ? Colors.red
                                        : Colors.black,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        const SizedBox(height: 12),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class Quiz {
  final String title;
  final Color color;
  final List<Question> questions;

  Quiz({required this.title, required this.color, required this.questions});
}

class Question {
  final String questionText;
  final List<String> options;
  final int correctOptionIndex;

  Question({
    required this.questionText,
    required this.options,
    required this.correctOptionIndex,
  });
}
