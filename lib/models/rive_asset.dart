import 'package:rive/rive.dart';

class RiveAsset {
  final String artboard, stateMachineName, title, scr;
  late SMIBool? input;

  RiveAsset(this.scr,
      {required this.artboard,
      required this.stateMachineName,
      required this.title,
      this.input});
  set setInput(SMIBool status) {
    input = status;
  }
}

List<RiveAsset> bottomNavs = [
  RiveAsset("assets/RiveAssets/icons.riv",
      artboard: "USER",
      stateMachineName: "USER_Interactivity",
      title: "Profile"),
  RiveAsset("assets/RiveAssets/icons.riv",
      artboard: "CHAT", stateMachineName: "CHAT_Interactivity", title: "Chat"),
  RiveAsset("assets/RiveAssets/icons.riv",
      artboard: "SEARCH",
      stateMachineName: "SEARCH_Interactivity",
      title: "Search"),
  // RiveAsset("assets/RiveAssets/icons.riv",
  //     artboard: "TIMER",
  //     stateMachineName: "TIMER_Interactivity",
  //     title: "Chat"),
  RiveAsset("assets/RiveAssets/icons.riv",
      artboard: "BELL",
      stateMachineName: "BELL_Interactivity",
      title: "Notification"),
  
];
