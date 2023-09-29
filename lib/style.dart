import 'package:flutter/material.dart';

InputDecoration decoration(label) {
  return InputDecoration(
      fillColor: Colors.white,
      filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      labelText: label);
}

ButtonStyle App() {
  return ElevatedButton.styleFrom(
      elevation: 100,
      backgroundColor: Colors.teal,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))));
}

TextStyle text() {
  return const TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
}
