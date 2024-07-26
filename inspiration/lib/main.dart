import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:share/share.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inspirational Quotes',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> quotes = [
    "The only way to do great work is to love what you do. – Steve Jobs",
    "To be, or not to be, that is the question. – William Shakespeare",
    "Believe you can and you're halfway there. – Theodore Roosevelt",
    "Success is not final, failure is not fatal: It is the courage to continue that counts. – Winston Churchill",
    "The best way to predict the future is to create it. – Peter Drucker",
    "What lies behind us and what lies before us are tiny matters compared to what lies within us. – Ralph Waldo Emerson",
    "You miss 100% of the shots you don’t take. – Wayne Gretzky",
    "The only limit to our realization of tomorrow is our doubts of today. – Franklin D. Roosevelt",
    "I have not failed. I've just found 10,000 ways that won't work. – Thomas Edison",
    "In the end, we will remember not the words of our enemies, but the silence of our friends. – Martin Luther King Jr.",
    "The purpose of our lives is to be happy. – Dalai Lama",
    "Life is what happens when you're busy making other plans. – John Lennon",
    "It does not matter how slowly you go as long as you do not stop. – Confucius",
    "You must be the change you wish to see in the world. – Mahatma Gandhi",
    "The journey of a thousand miles begins with one step. – Lao Tzu",
    "The future belongs to those who believe in the beauty of their dreams. – Eleanor Roosevelt",
    "Do not watch the clock. Do what it does. Keep going. – Sam Levenson",
    "Keep your face always toward the sunshine—and shadows will fall behind you. – Walt Whitman",
    "What you get by achieving your goals is not as important as what you become by achieving your goals. – Zig Ziglar",
    "Act as if what you do makes a difference. It does. – William James",
    "Hardships often prepare ordinary people for an extraordinary destiny. – C.S. Lewis",
    "The best revenge is massive success. – Frank Sinatra",
    "To handle yourself, use your head; to handle others, use your heart. – Eleanor Roosevelt",
    "It is never too late to be what you might have been. – George Eliot",
    "The only thing we have to fear is fear itself. – Franklin D. Roosevelt",
    "The only person you are destined to become is the person you decide to be. – Ralph Waldo Emerson",
    "Do not go where the path may lead, go instead where there is no path and leave a trail. – Ralph Waldo Emerson",
    "Dream big and dare to fail. – Norman Vaughan",
    "Don’t wait. The time will never be just right. – Napoleon Hill",
    "Start where you are. Use what you have. Do what you can. – Arthur Ashe",
    "Everything you’ve ever wanted is on the other side of fear. – George Addair",
    "Believe in yourself and all that you are. Know that there is something inside you that is greater than any obstacle. – Christian D. Larson",
    "You are never too old to set another goal or to dream a new dream. – C.S. Lewis",
    "A person who never made a mistake never tried anything new. – Albert Einstein",
    "What we achieve inwardly will change outer reality. – Plutarch",
    "Go confidently in the direction of your dreams. Live the life you have imagined. – Henry David Thoreau",
    "Life is 10% what happens to us and 90% how we react to it. – Charles R. Swindoll",
    "Change your thoughts and you change your world. – Norman Vincent Peale",
    "The only way to achieve the impossible is to believe it is possible. – Charles Kingsleigh",
    "Opportunities don't happen, you create them. – Chris Grosser",
    "The only limit to our realization of tomorrow is our doubts of today. – Franklin D. Roosevelt",
    "Your time is limited, so don’t waste it living someone else’s life. – Steve Jobs",
    "Don’t be afraid to give up the good to go for the great. – John D. Rockefeller",
    "You can’t use up creativity. The more you use, the more you have. – Maya Angelou",
    "I am not a product of my circumstances. I am a product of my decisions. – Stephen R. Covey",
    "The only way to discover the limits of the possible is to go beyond them into the impossible. – Arthur C. Clarke",
    "If you want to lift yourself up, lift up someone else. – Booker T. Washington",
    "Our greatest glory is not in never falling, but in rising every time we fall. – Confucius",
    "The power of imagination makes us infinite. – John Muir",
    "Success usually comes to those who are too busy to be looking for it. – Henry David Thoreau",
    "Don’t count the days, make the days count. – Muhammad Ali",
    "Strive not to be a success, but rather to be of value. – Albert Einstein",
    "Do what you can with all you have, wherever you are. – Theodore Roosevelt",
    "Success is not how high you have climbed, but how you make a positive difference to the world. – Roy T. Bennett",
    "Limitations live only in our minds. But if we use our imaginations, our possibilities become limitless. – Jamie Paolinetti",
    "You have within you right now, everything you need to deal with whatever the world can throw at you. – Brian Tracy",
    "Happiness is not something ready-made. It comes from your own actions. – Dalai Lama",
    "With the new day comes new strength and new thoughts. – Eleanor Roosevelt",
    "The only place where success comes before work is in the dictionary. – Vidal Sassoon",
    "The best preparation for tomorrow is doing your best today. – H. Jackson Brown Jr.",
    "If you want to live a happy life, tie it to a goal, not to people or things. – Albert Einstein",
    "Don’t watch the clock; do what it does. Keep going. – Sam Levenson",
    "Success is not the key to happiness. Happiness is the key to success. If you love what you are doing, you will be successful. – Albert Schweitzer",
    "Perseverance is not a long race; it is many short races one after the other. – Walter Elliot",
    "You don't have to be great to start, but you have to start to be great. – Zig Ziglar",
    "I find that the harder I work, the more luck I seem to have. – Thomas Jefferson",
    "Your life does not get better by chance, it gets better by change. – Jim Rohn",
    "If you cannot do great things, do small things in a great way. – Napoleon Hill",
    "Motivation is what gets you started. Habit is what keeps you going. – Jim Rohn",
    "The only way to do great work is to love what you do. – Steve Jobs",
    "You are never too old to set another goal or to dream a new dream. – C.S. Lewis",
    "The only person you are destined to become is the person you decide to be. – Ralph Waldo Emerson",
    "We may encounter many defeats but we must not be defeated. – Maya Angelou",
    "The future belongs to those who believe in the beauty of their dreams. – Eleanor Roosevelt",
    "You miss 100% of the shots you don't take. – Wayne Gretzky",
    "I attribute my success to this: I never gave or took any excuse. – Florence Nightingale",
    "I am not a product of my circumstances. I am a product of my decisions. – Stephen R. Covey",
    "Don't be pushed around by the fears in your mind. Be led by the dreams in your heart. – Roy T. Bennett",
    "Believe in yourself and all that you are. Know that there is something inside you that is greater than any obstacle. – Christian D. Larson",
    "The future depends on what you do today. – Mahatma Gandhi",
    "Do something wonderful, people may imitate it. – Albert Schweitzer",
    "If you cannot do great things, do small things in a great way. – Napoleon Hill",
    "The secret of getting ahead is getting started. – Mark Twain",
    "Don’t let yesterday take up too much of today. – Will Rogers",
    "We generate fears while we sit. We overcome them by action. – Dr. Henry Link",
    "The more you praise and celebrate your life, the more there is in life to celebrate. – Oprah Winfrey",
    "What you get by achieving your goals is not as important as what you become by achieving your goals. – Zig Ziglar",
    "Success is not in what you have, but who you are. – Bo Bennett",
    "Your time is limited, don’t waste it living someone else’s life. – Steve Jobs",
    "Act as if what you do makes a difference. It does. – William James",
    "I have learned over the years that when one's mind is made up, this diminishes fear. – Rosa Parks",
    "What lies behind us and what lies before us are tiny matters compared to what lies within us. – Ralph Waldo Emerson",
    "Don’t let the fear of losing be greater than the excitement of winning. – Robert Kiyosaki",
    "If you want to achieve greatness stop asking for permission. – Anonymous",
    "The only person you are destined to become is the person you decide to be. – Ralph Waldo Emerson",
    "To accomplish great things, we must not only act, but also dream; not only plan, but also believe. – Anatole France",
    "The best way to predict the future is to create it. – Peter Drucker",
    "The question isn’t who is going to let me; it’s who is going to stop me. – Ayn Rand",
    "The best way to find yourself is to lose yourself in the service of others. – Mahatma Gandhi",
    "You only live once, but if you do it right, once is enough. – Mae West",
    "If you are not willing to risk the usual, you will have to settle for the ordinary. – Jim Rohn",
    "Go confidently in the direction of your dreams. Live the life you have imagined. – Henry David Thoreau",
    "Believe in yourself and all that you are. Know that there is something inside you that is greater than any obstacle. – Christian D. Larson",
    "Success is not the key to happiness. Happiness is the key to success. If you love what you are doing, you will be successful. – Albert Schweitzer",
    "Hardships often prepare ordinary people for an extraordinary destiny. – C.S. Lewis",
    "The only limit to our realization of tomorrow is our doubts of today. – Franklin D. Roosevelt",
    "Do what you can, with what you have, where you are. – Theodore Roosevelt",
    "Your time is limited, don’t waste it living someone else’s life. – Steve Jobs",
    "To handle yourself, use your head; to handle others, use your heart. – Eleanor Roosevelt",
    "Act as if what you do makes a difference. It does. – William James",
    "The best revenge is massive success. – Frank Sinatra",
    "The best preparation for tomorrow is doing your best today. – H. Jackson Brown Jr.",
    "If you want to lift yourself up, lift up someone else. – Booker T. Washington",
    "The best way to predict the future is to create it. – Peter Drucker",
    "Believe you can and you're halfway there. – Theodore Roosevelt",
    "You miss 100% of the shots you don’t take. – Wayne Gretzky",
    "Start where you are. Use what you have. Do what you can. – Arthur Ashe",
    "Dream big and dare to fail. – Norman Vaughan",
    "Perseverance is not a long race; it is many short races one after the other. – Walter Elliot",
    "Great things are done by a series of small things brought together. – Vincent Van Gogh",
    "I find that the harder I work, the more luck I seem to have. – Thomas Jefferson",
    "Do one thing every day that scares you. – Eleanor Roosevelt",
    "Success is not how high you have climbed, but how you make a positive difference to the world. – Roy T. Bennett",
    "The only person you are destined to become is the person you decide to be. – Ralph Waldo Emerson",
    "The only limit to our realization of tomorrow is our doubts of today. – Franklin D. Roosevelt",
    "You can’t use up creativity. The more you use, the more you have. – Maya Angelou",
    "Believe in yourself and all that you are. Know that there is something inside you that is greater than any obstacle. – Christian D. Larson",
    "Life is 10% what happens to us and 90% how we react to it. – Charles R. Swindoll",
    "Success is not in what you have, but who you are. – Bo Bennett",
    "It does not matter how slowly you go as long as you do not stop. – Confucius",
    "The best way to predict the future is to invent it. – Alan Kay",
  ];

  String? QuoteOfTheDay;
  List<String> FavoriteQuotes = [];
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _loadQuote();
    _loadFavoriteQuotes();
  }

  void _loadQuote() async {
    final prefs = await SharedPreferences.getInstance();
    final now = DateTime.now();
    final lastSavedDate = prefs.getString('lastSavedDate');
    final savedQuote = prefs.getString('QuoteOfTheDay');

    if (lastSavedDate == null || lastSavedDate != now.toString().substring(0, 10)) {
      final random = Random();//genrates random quote from list
      currentIndex = random.nextInt(quotes.length);
      QuoteOfTheDay = quotes[currentIndex];
      prefs.setString('QuoteOfTheDay', QuoteOfTheDay!);
      prefs.setString('lastSavedDate', now.toString().substring(0, 10));
    } else {
      QuoteOfTheDay = savedQuote;
      currentIndex = quotes.indexOf(QuoteOfTheDay!);
    }

    setState(() {});
  }

  void _nextQuote() {
    setState(() {
      currentIndex = (currentIndex + 1) % quotes.length;
      QuoteOfTheDay = quotes[currentIndex];
    });
  }

  void _shareQuote() {
    Share.share(QuoteOfTheDay!);
  }

  void _toggleFavorite() async {
    final prefs = await SharedPreferences.getInstance();
    if (FavoriteQuotes.contains(QuoteOfTheDay)) {
      FavoriteQuotes.remove(QuoteOfTheDay);
    } else {
      FavoriteQuotes.add(QuoteOfTheDay!);
    }
    prefs.setStringList('FavoriteQuotes', FavoriteQuotes);
    setState(() {});
  }

  void _loadFavoriteQuotes() async {
    final prefs = await SharedPreferences.getInstance();
    FavoriteQuotes = prefs.getStringList('FavoriteQuotes') ?? [];
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inspiring Quotes'),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FavoriteQuotesScreen(FavoriteQuotes: FavoriteQuotes)),
              ).then((value) => _loadFavoriteQuotes());
            },
          ),
        ],
      ),
      body: QuoteOfTheDay == null
          ? Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(22.0),
                    ),
                    padding: const EdgeInsets.all(22.0),
                    child: Text(
                      QuoteOfTheDay!,
                      style: TextStyle(
                        fontSize: 26.0,
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 22.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(Icons.share),
                        onPressed: _shareQuote,
                      ),
                      IconButton(
                        icon: Icon(
                          FavoriteQuotes.contains(QuoteOfTheDay) ? Icons.favorite : Icons.favorite_border,
                        ),
                        onPressed: _toggleFavorite,
                      ),
                    ],
                  ),
                  SizedBox(height: 22.0),
                  ElevatedButton(
                    onPressed: _nextQuote,
                    child: Text("Next Quote"),
                  ),
                ],
              ),
            ),
    );
  }
}

class FavoriteQuotesScreen extends StatelessWidget {
  final List<String> FavoriteQuotes;

  FavoriteQuotesScreen({required this.FavoriteQuotes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Quotes'),
      ),
      body: ListView.builder(
        itemCount: FavoriteQuotes.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(9.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(22.0),
              ),
              padding: const EdgeInsets.all(22.0),
              child: Text(
                FavoriteQuotes[index],
                style: TextStyle(
                  fontSize: 20.0,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          );
        },
      ),
    );
  }
}
