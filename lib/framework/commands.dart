import 'package:flutter_vn/framework/providers/story_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

mixin commander {
  static late BuildContext x;
}

/// Function to add named dialogue
void charLine(String name, String dialog, String sfx){
  commander.x.read<StoryProvider>().charLine(name, dialog, sfx);
}

/// Function to add unnamed dialogue
void line(String dialog, String sfx){
  commander.x.read<StoryProvider>().line(dialog, sfx);
}

/// Add your background here
void scene(String backgroundName){
  commander.x.read<StoryProvider>().scene(backgroundName);
}

/// Display your character sprite
void show(String chara, String position){
  commander.x.read<StoryProvider>().show(chara, position);
}

/// On-screen action that progresses the story
void nextDialogue(){
  commander.x.read<StoryProvider>().nextDialogue();
}