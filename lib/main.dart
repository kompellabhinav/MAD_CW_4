import 'package:flutter/material.dart';
import 'screens/task_list_screen.dart';

void main() => runApp(TaskManagerApp());

class TaskManagerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Manager App',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
        colorScheme: ColorScheme.dark(
          primary: Colors.black,
          secondary: Colors.cyanAccent, // Replaces accentColor
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.cyanAccent),
          bodyText2: TextStyle(color: Colors.cyanAccent),
        ),
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(color: Colors.cyanAccent),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.cyanAccent),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.cyanAccent),
          ),
        ),
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateProperty.all(Colors.cyanAccent),
        ),
        iconTheme: IconThemeData(
          color: Colors.cyanAccent,
        ),
        dropdownMenuTheme: DropdownMenuThemeData(
          textStyle: TextStyle(color: Colors.black),
        ),
      ),
      home: TaskListScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
