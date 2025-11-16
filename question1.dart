// Question 1: Basic Data Types & Functions
void main() {
  // Variables of different data types
  String name = "John Doe";
  int age = 25;
  double height = 1.75; // in meters
  double weight = 68.5; // in kilograms
  bool isStudent = true;

  // Display basic info using string interpolation
  print("Name: $name");
  print("Age: $age");
  print("Height: $height m");
  print("Weight: $weight kg");
  print("Is student: $isStudent");

  // Calculate BMI
  double bmi = calculateBMI(weight, height);
  print("\n${name}'s BMI is ${bmi.toStringAsFixed(2)}");

  // Get grade
  int score = 85;
  String grade = getGrade(score);
  print("Score: $score → Grade: $grade");
}

// Function to calculate BMI
double calculateBMI(double weight, double height) {
  return weight / (height * height);
}

// Function to determine grade based on score
String getGrade(int score) {
  if (score >= 90 && score <= 100) {
    return "A";
  } else if (score >= 80 && score <= 89) {
    return "B";
  } else if (score >= 70 && score <= 79) {
    return "C";
  } else if (score >= 60 && score <= 69) {
    return "D";
  } else {
    return "F";
  }
}
