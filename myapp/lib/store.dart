// import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';
// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Welcome to Flutter',
//         theme: new ThemeData(         
//         primaryColor: Colors.white,
//       ),  
//       home:RandomWords()
//     );
//   }
 
// }
//  class RandomWordsState extends State<RandomWords> {
//   // TODO Add build method
//    final _suggestions = <WordPair>[];
//     final Set<WordPair> _saved = new Set<WordPair>(); 
//   final _biggerFont = const TextStyle(fontSize: 18.0);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar:AppBar(
//         title:Text('Startup name generator') ,
//         actions: <Widget>[      
//           new IconButton(icon: const Icon(Icons.list), onPressed: _pushSaved),
//         ],
//       ),
//       body: _buildSuggestions(),
//     );
//   }

//   Widget _buildSuggestions() {
//     return ListView.builder(
//       padding: const EdgeInsets.all(16.0),
      
//       itemBuilder: (context, i) {
//         // Add a one-pixel-high divider widget before each row in theListView.
//         if (i.isOdd) return Divider();

//         final index = i ~/ 2;
//         // If you've reached the end of the available word pairings...
//         if (index >= _suggestions.length) {
//           // ...then generate 10 more and add them to the suggestions list.
//           _suggestions.addAll(generateWordPairs().take(10));
//         }
//         return _buildRow(_suggestions[index]);
//       }
//     );
//   }
//   Widget _buildRow(WordPair pair) {
//     final bool alreadySaved = _saved.contains(pair);
//     return ListTile(
//       title: Text(
//         pair.asPascalCase,
//         style: _biggerFont,
//       ),
//       trailing: new Icon(    
//       alreadySaved ? Icons.favorite : Icons.favorite_border,
//       color: alreadySaved ? Colors.red : null,
//     ), 
//     onTap: () {      
//       setState(() {
//         if (alreadySaved) {
//           _saved.remove(pair);
//         } else { 
//           _saved.add(pair); 
//         } 
//       });
//     },         
//     );
//   }

//   void _pushSaved() {
//   Navigator.of(context).push(
//     new MaterialPageRoute<void>(  
//       builder: (BuildContext context) {
//         final Iterable<ListTile> tiles = _saved.map(
//           (WordPair pair) {
//             return new ListTile(
//               title: new Text(
//                 pair.asPascalCase,
//                 style: _biggerFont,
//               ),
//             );
//           },
//         );
//         final List<Widget> divided = ListTile
//           .divideTiles(
//             context: context,
//             tiles: tiles,
//           )
//           .toList();
//           return new Scaffold(         // Add 6 lines from here...
//           appBar: new AppBar(
//             title: const Text('Saved Suggestions'),
//           ),
//           body: new ListView(children: divided),
//         );  
//       },
//     ), 
//   );
// }
// }
// class RandomWords extends StatefulWidget {
//   @override
//   RandomWordsState createState() => new RandomWordsState();


// class HellowRectangle extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         child: Container(
//       color: Colors.deepPurpleAccent,
//       width: 500.0,
//       height: 400.0,
//       child: Center(
//         child: Text(" final render"),
//       ),
//     ));
//   }
// }

// @override
// Widget build(BuildContext context) {
//   return Material(
//     color: Colors.transparent,
//     child: Container(
//       child: InkWell(
//         highlightColor: Colors.pinkAccent,
//         splashColor: Colors.limeAccent,
//         onTap: () {
//           print('hellow love');
//         },
//         child: Padding(
//             padding: EdgeInsets.all(16.0),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: <Widget>[
//                 Padding(
//                   padding: EdgeInsets.all(16.0),
//                   // child: iconLocation != null ? Icon(Icon.cake);
//                 ),
//                 Center(
//                   child: Text(
//                     " name",
//                     textAlign: TextAlign.center,
//                   ),
//                 )
//               ],
//             )),
//       ),
//     ),
//   );
// }
