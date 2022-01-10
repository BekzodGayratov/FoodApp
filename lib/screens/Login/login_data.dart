import 'package:flutter/material.dart';
import 'dart:math';

List<String> phoneNumbers = [];

List<int> randoms = List.generate(6, (index) => Random().nextInt(10));
List<int> randomsTwo = List.generate(6, (index) => Random().nextInt(10));

final TextEditingController one = TextEditingController();
final TextEditingController two = TextEditingController();
final TextEditingController three = TextEditingController();
final TextEditingController four = TextEditingController();
final TextEditingController five = TextEditingController();
final TextEditingController six = TextEditingController();

List<TextEditingController> controllers = [
  one,
  two,
  three,
  four,
  five,
  six,
];

List<int> userInput = [];

