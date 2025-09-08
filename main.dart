import 'package:flutter/material.dart';

/* import the material design library , it provides widgets

the material.dart is part of a FLUTTER SDK and implements in google material design guidelines  for  UI
* */

void main() {
  runApp(const myApp()); //flutter app function initialize the app that attached  on the root widget (main screen) to the screen.

}

class myApp extends StatelessWidget {
  const myApp({super.key});


  @override
  Widget build (BuildContext context) {
    return MaterialApp(
      title: 'List of My Favorite Movie',
      theme: ThemeData(
        primarySwatch:Colors.purple,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My favorite Movie'),
      ),
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network ('https://upload.wikimedia.org/wikipedia/en/1/15/My_Oxford_Year_poster.jpg',
        width: 500,
        height: 500,
        ),
      const Text(
        'My Oxford Year (2025)',
            style: TextStyle(fontSize: 25),
      ),
          const Text(
            'The romance drama series follows ambitious New York graduate Anna De La Vega (Sofia Carson) as she heads to England to pursue a masters degree in Victorian Poetry at the University of Oxford. Little does she know that her life will change forever after meeting the charming and handsome Jamie Davenport (Cory Mylchreest), a university teaching fellow.As expected, Anna and Jamies casual fling turns into something more, but things become complicated after Jamies life-threatening illness is eventually exposed, putting Anna at a crossroads between choosing Jamie or an already established career back in New York.Another complication is between Jamie and his estranged father, William Davenport. The father-son duo has a different take on how Jamies treatment should be handled. While Jamie seems to have accepted his inevitable fate, William doesnt want to give up. After some convincing, William eventually agrees to his sons wishes.',
            style: TextStyle(fontSize: 15),
          ),
      ],
      ),
    ),
    );
  }
}