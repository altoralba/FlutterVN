import 'package:flutter/material.dart';

class StoryProvider with ChangeNotifier {

  /// Variable that shows the current dialogue presented to the GUI
  String _currentDialog = '';
  String get currentDialog => _currentDialog;

  /// Variable that shows the current speaker presented to the GUI
  String _currentSpeaker = '';
  String get currentSpeaker => _currentSpeaker;

  /// Variable that helps progress the story by increments
  int _storyLine = 1;

  /// Types
  /// line      = dialogue
  /// scene     = background change
  /// choice    = display choices
  final List<Map<String, dynamic>> _storyboard = [
    {
      'type'          : '',
      'name'          : '',
      'dialog'        : '',
      'choices'       : '',
      'bgm'           : '',
      'sfx'           : ''
    }
  ];

  /// Function to add named dialogue
  void charLine(String name, String dialog, String sfx) {

    _storyboard.add({
      'type'          : 'line',
      'name'          : name,
      'dialog'        : dialog,
      'choices'       : '',
      'bgm'           : '',
      'sfx'           : sfx
    });

    // check if bgm is playing, else, play a new bgm
    // Add an audio source here

    // same for the sfx
    // Add an audio source here

  }

  /// Function to add unnamed dialogue
  void line(String dialog, String sfx){

    _storyboard.add({
      'type'          : 'line',
      'name'          : '',
      'dialog'        : dialog,
      'choices'       : '',
      'bgm'           : '',
      'sfx'           : sfx
    });
    // _storyboard[_storyLine]['type'] = 'line';
    // _storyboard[_storyLine]['name'] = '';
    // _storyboard[_storyLine]['dialog'] = '';

    // check if bgm is playing, else, play a new bgm
    // Add an audio source here

    // same for the sfx
    // Add an audio source here
  }

  /// Add your background here
  void scene(String backgroundName){
    // Change background
    notifyListeners();
  }

  /// Display your character sprite
  void show(String chara, String position){
    // Add image
    notifyListeners();
  }

  /// Story initialization
  void storyInitialization(){
    _currentDialog = _storyboard[_storyLine]['dialog'];
  }

  /// Story Increment
  void nextDialogue(){
    _storyLine++;
    _currentDialog = _storyboard[_storyLine]['dialog'];
    notifyListeners();
  }


}