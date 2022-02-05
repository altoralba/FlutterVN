import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vn/framework/commands.dart';
import 'package:flutter_vn/framework/providers/story_provider.dart';
import 'package:flutter_vn/story/story.dart';
import 'package:provider/provider.dart';

class GameStory extends StatefulWidget {
  const GameStory({Key? key}) : super(key: key);

  @override
  State<GameStory> createState() => _GameStoryState();
}

class _GameStoryState extends State<GameStory> {

  @override
  void initState() {
    storyLine();
    context.read<StoryProvider>().storyInitialization();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          background(),
          character(),
          invisibleClicker(),
          dialogue(),
        ],
      ),
    );
  }

  Widget background(){
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
    );
  }

  Widget character(){
    return const Text('');
  }

  Widget invisibleClicker(){
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ElevatedButton(
          onPressed: () => nextDialogue(),
          child: const Text(''),
        )
    );
  }

  Widget dialogue(){
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          MediaQuery.of(context).size.width * 0.005,
          0.0,
          MediaQuery.of(context).size.width * 0.005,
          MediaQuery.of(context).size.height * 0.01,
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 6,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(context.watch<StoryProvider>().currentDialog)
              // AnimatedTextKit(
              //     isRepeatingAnimation: false,
              //     repeatForever: false,
              //     animatedTexts: [
              //       TyperAnimatedText(context.watch<StoryProvider>().currentDialog,
              //           // textStyle: TextStyle(
              //           //     fontSize: (screenWidth * 0.2),
              //           // )
              //       ),
              //     ]
              // ),
            ),
          ),
        ),
      ),
    );
  }

}
