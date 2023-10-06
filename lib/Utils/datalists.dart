import 'package:arena_ui/UIs/fire_page.dart';
import 'package:arena_ui/UIs/remote_page.dart';
import 'package:arena_ui/UIs/vr_page.dart';
import 'package:arena_ui/Utils/images.dart';
import 'package:flutter/material.dart';

List<Image> buttons = [
  Image.asset(dfire),
  Image.asset(msg),
  Image.asset(goal),
  Image.asset(chess),
  Image.asset(machine),
  Image.asset(song),
  Image.asset(puzzle),
  Image.asset(war),
  Image.asset(card),
  Image.asset(tier),
  Image.asset(map),
  Image.asset(book),
];

List pages = [
  const Fire_Page(),
  const Remote_Page(),
  const Vr_Page(),
];

List images = [
  Image.asset(fire),
  Image.asset(remote),
  Image.asset(vr),
];
