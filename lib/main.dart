import 'package:bebenang/activity/activity.dart';
import 'package:bebenang/profile/profile.dart';
import 'package:bebenang/search/search.dart';
import 'package:flutter/material.dart';

void main() => runApp(const BottomNavigationBarExampleApp());

class BottomNavigationBarExampleApp extends StatelessWidget {
  const BottomNavigationBarExampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigationBarExample(),
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarExampleState createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    search(),
    Placeholder(), // Placeholder widget for Index 2
    Text(
      'Activity',
      style: optionStyle,
    ),
    profile()
  ];

  void _onItemTapped(int index) {
    if (index == 2) {
      createThread(context); // Call createThread() when "Create" is clicked
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  void createThread(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (_) {
        return FractionallySizedBox(
          heightFactor: 0.9,
          child: Container(
            child: const Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 16.0,
                    right: 16,
                    left: 16,
                    bottom: 10,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Cancel",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "New Thread",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Cancel",
                        style: TextStyle(color: Colors.transparent),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black,
                  thickness: 0.05,
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 50,
                            child: Image(
                              image: AssetImage('assets/zvhir_rounded.png'),
                              height: 40,
                              width: 40,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "zvhir",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text("Start a thread...")
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 50,
                            height: 70,
                            child: VerticalDivider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                          ),
                          SizedBox(height: 70, child: Icon(Icons.attach_file)),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 50,
                            child: SizedBox(
                              width: 30,
                              child: Image(
                                image: AssetImage('assets/zvhir_rounded.png'),
                                height: 20,
                                width: 20,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: SizedBox(
              height: 30,
              child: Image(image: AssetImage('assets/home_active.png')),
            ),
            icon: SizedBox(
              height: 30,
              child: Image(image: AssetImage('assets/home_inactive.png')),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: SizedBox(
              height: 30,
              child: Image(image: AssetImage('assets/search_active.png')),
            ),
            icon: SizedBox(
              height: 30,
              child: Image(image: AssetImage('assets/search_inactive.png')),
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            activeIcon: SizedBox(
              height: 30,
              child: Image(image: AssetImage('assets/create_active.png')),
            ),
            icon: SizedBox(
              height: 30,
              child: Image(image: AssetImage('assets/create_inactive.png')),
            ),
            label: 'Create',
          ),
          BottomNavigationBarItem(
            activeIcon: SizedBox(
              height: 30,
              child: Image(image: AssetImage('assets/likes_active.png')),
            ),
            icon: SizedBox(
              height: 30,
              child: Image(image: AssetImage('assets/likes_inactive.png')),
            ),
            label: 'Likes',
          ),
          BottomNavigationBarItem(
            activeIcon: SizedBox(
              height: 30,
              child: Image(image: AssetImage('assets/profile_active.png')),
            ),
            icon: SizedBox(
              height: 30,
              child: Image(image: AssetImage('assets/profile_inactive.png')),
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
