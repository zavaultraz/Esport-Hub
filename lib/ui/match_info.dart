import 'package:flutter/material.dart';

class SportsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Nexa',
      ),
      home: SportsHomePage(),
    );
  }
}

class SportsHomePage extends StatefulWidget {
  @override
  _SportsHomePageState createState() => _SportsHomePageState();
}

class _SportsHomePageState extends State<SportsHomePage> {
  int _selectedIndex = 0; // Track selected tab index
  final PageController _pageController = PageController();

  final List<String> _tabs = ['Schedule', 'Leaderboard', 'Teams'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'MPL ID S14',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
            letterSpacing: 1.1,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        flexibleSpace: ClipRRect(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20), // Adjust the radius as needed
          ),
          child: Container(
            decoration: BoxDecoration(
            color: Colors.blue[900]
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 60, // Adjust height as needed
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _tabs.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                      _pageController.jumpToPage(index);
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10), // Add space between tabs
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: _selectedIndex == index
                              ? Colors.blueAccent
                              : Colors.transparent,
                          width: 3.0,
                        ),
                      ),
                    ),
                    child: Text(
                      _tabs[index],
                      style: TextStyle(
                        color: _selectedIndex == index
                            ? Colors.blueAccent
                            : Colors.blueAccent[400],
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              children: [
                _buildSchedulePage(),
                _buildLeaderboardPage(),
                _buildTeamsPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSchedulePage() {
    final List<Map<String, String>> schedule = [
      {'date': 'Aug 23, 2024', 'match': 'Evos Glory vs Geek Fam'},
      {'date': 'Aug 24, 2024', 'match': 'FNOC vs TLID'},
      {'date': 'Aug 25, 2024', 'match': 'RRQ Hoshi vs Dewa United'},
      {'date': 'Aug 26, 2024', 'match': 'BTR Alpha vs Dewa United'},
      {'date': 'Aug 26, 2024', 'match': 'RRQ Hoshi vs Evos Glory'},
      {'date': 'Aug 27, 2024', 'match': 'Alter Ego vs Rebellion'},
    ];

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.white, Colors.blue[50]!],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: schedule.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 4,
                shadowColor: Colors.blueAccent.withOpacity(0.2),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(16.0),
                  leading: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [Colors.blueAccent, Colors.lightBlueAccent],
                      ),
                    ),
                    child: const Icon(Icons.event, color: Colors.white),
                  ),
                  title: Text(
                    schedule[index]['match']!,
                    style: const TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Text(
                    schedule[index]['date']!,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14,
                    ),
                  ),
                  trailing: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blueAccent.withOpacity(0.1),
                    ),
                    child: const Icon(Icons.arrow_forward_ios,
                        color: Colors.blueAccent),
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          );
        },
      ),
    );
  }

  Widget _buildLeaderboardPage() {
    final List<Map<String, dynamic>> leaderboard = [
      {'rank': 'assets/images/ae.png', 'team': 'Alter Ego', 'points': 8},
      {'rank': 'assets/images/fnoc.png', 'team': 'Fanatic Onic', 'points': 6},
      {'rank': 'assets/images/rrq.png', 'team': 'RRQ Hoshi', 'points': 4},
      {'rank': 'assets/images/evos.png', 'team': 'Evos Glory', 'points': 4},
      {'rank': 'assets/images/btr.png', 'team': 'BTR Alpha', 'points': 3},
      {'rank': 'assets/images/geek.png', 'team': 'Geek Fam', 'points': 3},
      {'rank': 'assets/images/dewa.png', 'team': 'Dewa United', 'points': 1},
      {'rank': 'assets/images/rbl.png', 'team': 'Rebellion E-sport', 'points': -1},
    ];

    return Container(
      decoration: BoxDecoration(
       color: Colors.white
      ),
      child: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: leaderboard.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 4,
                shadowColor: Colors.blueAccent.withOpacity(0.2),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(16.0),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white.withOpacity(0.1),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(leaderboard[index]['rank'].toString()),
                    ),
                  ),
                  title: Text(
                    leaderboard[index]['team']!,
                    style: const TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  trailing: Text(
                    '${leaderboard[index]['points']} pts',
                    style: const TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          );
        },
      ),
    );
  }

  Widget _buildTeamsPage() {
    final List<String> teams = [
      'assets/images/ae.png',
      'assets/images/fnoc.png',
      'assets/images/evos.png',
      'assets/images/btr.png',
      'assets/images/geek.png',
      'assets/images/tlid.png',
      'assets/images/rrq.png',
      'assets/images/dewa.png',
      'assets/images/rbl.png'
    ];

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.white, Colors.blue[50]!],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: GridView.builder(
        padding: const EdgeInsets.all(16.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
        ),
        itemCount: teams.length,
        itemBuilder: (context, index) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 4,
            shadowColor: Colors.blueAccent.withOpacity(0.2),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(teams[index]),
              ),
            ),
          );
        },
      ),
    );
  }
}
