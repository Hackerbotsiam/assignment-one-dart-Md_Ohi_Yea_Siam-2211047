import 'dart:math';

void main() {
  // List of student names
  List<String> students = ["Alice", "Bob", "Charlie", "Diana", "Eve"];

  // Map to store student scores
  Map<String, int> studentScores = {};

  // Random number generator
  Random random = Random();

  // Assign random scores (60–100) to each student
  for (var student in students) {
    int score = 60 + random.nextInt(41); // 60 to 100 inclusive
    studentScores[student] = score;
  }

  // Display all students and their scores
  print("Student Scores:");
  studentScores.forEach((name, score) {
    print("$name: $score");
  });

  // Find highest and lowest scores
  String topStudent = studentScores.keys.first;
  String lowStudent = studentScores.keys.first;
  int highest = studentScores[topStudent]!;
  int lowest = studentScores[lowStudent]!;

  int total = 0;

  studentScores.forEach((name, score) {
    total += score;
    if (score > highest) {
      highest = score;
      topStudent = name;
    }
    if (score < lowest) {
      lowest = score;
      lowStudent = name;
    }
  });

  double average = total / studentScores.length;

  print("\nHighest Score: $topStudent with $highest");
  print("Lowest Score: $lowStudent with $lowest");
  print("Average Score: ${average.toStringAsFixed(2)}\n");

  // Categorize students using switch statement
  print("Student Categories:");
  studentScores.forEach((name, score) {
    String category = getCategory(score);
    print("$name ($score): $category");
  });
}

// Function to categorize students based on score range
String getCategory(int score) {
  switch (score ~/ 10) { // Integer division for range grouping
    case 10:
    case 9:
      return "Excellent";
    case 8:
      return "Good";
    case 7:
      return "Average";
    default:
      return "Needs Improvement";
  }
}