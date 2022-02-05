import 'package:flutter/material.dart';
import 'package:flutter_vn/framework/commands.dart';
import 'package:flutter_vn/framework/providers/story_provider.dart';
import 'package:flutter_vn/framework/screens/game_story.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => StoryProvider()),
      ],
      child: const MyApp())
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  /// commander.x is required for the commands to work
  @override
  void initState() {
    commander.x = context;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Visual Novel Flutter Engine',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AspectRatio(
          aspectRatio: 16 / 9,
          child: GameStory()
      ),
    );
  }
}