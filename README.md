# Student Grade Management Projects

This is a comprehensive learning workspace that shows how to build student grade management systems using different technologies. You'll find implementations in Kotlin for Android, and Dart for both console and Flutter applications. It's perfect for understanding how the same business logic can be implemented across different platforms.

---

## Table of Contents

- [Project Overview](#project-overview)
- [Project Structure](#project-structure)
- [Kotlin Exercises](#kotlin-exercises)
- [Application Projects](#application-projects)
- [Technology Comparison](#technology-comparison)
- [Development Environment Setup](#development-environment-setup)
- [Excel File Format](#excel-file-format)
- [Key Concepts](#key-concepts)
- [Getting Started](#getting-started)
- [Troubleshooting](#troubleshooting)
- [References](#references)

---

## Project Overview

This repository contains multiple components organized around learning and building:

### 1. Kotlin Functional Programming Exercises

Four hands-on exercises that teach you functional programming in Kotlin:
- Lambda expressions and higher-order functions
- Collection transformations and filtering
- Data classes and complex data processing
- Predicates, type parameters, and advanced patterns

### 2. Student Grade Management Applications

Real-world implementations of grade management systems across different platforms:
- Android app built with Kotlin and Jetpack Compose
- Console tool built with Dart for command-line processing
- Cross-platform Flutter app for Web, Desktop, and Mobile
- Support for Excel import and grade calculation

---

## Project Structure

```
Projects-kotlin-dart/
├── Exercise-1-LiveCoding-Filtering-Transforming Kotlin/
│   ├── README.md
│   └── src/main/kotlin/
├── Exercise-2-Build-Higher-Order-Function Kotlin/
│   ├── README.md
│   └── src/main/kotlin/
├── Exercise-3-Transforming-Collection-Types Kotlin/
│   ├── README.md
│   └── src/main/kotlin/
├── Exercise-4-Complex-Data-Processing Kotlin/
│   ├── README.md
│   └── src/main/kotlin/
├── Exercise1/
│   ├── exercise1.dart
│   ├── Exercise1.kt
│   └── README.md
├── Exercise2/
│   ├── exercise2.dart
│   ├── Exercise2.kt
│   └── README.md
├── Exercise3/
│   ├── exercise3.dart
│   ├── exercise3.kt
│   └── README.md
├── Student Calculator Kotlin/
│   ├── app/
│   ├── console-app/
│   ├── build.gradle
│   ├── settings.gradle
│   └── QUICK-START.md
├── student_grade_app/
│   ├── lib/
│   ├── bin/
│   ├── android/
│   ├── ios/
│   ├── windows/
│   ├── web/
│   ├── pubspec.yaml
│   └── README.md
└── README.md
```

---

## Kotlin Exercises

### Exercise 1: Filtering and Transforming

**Location:** `Exercise-1-LiveCoding-Filtering-Transforming Kotlin/`

Get started with lambda expressions and basic collection operations in Kotlin.

**You'll learn:**
- How to use `filter()` for conditional selection
- How to use `map()` for transforming elements
- How to use `forEach()` for iterating and performing actions

**Example:**
```kotlin
numbers.filter { it > 5 }
    .map { it * it }
    .forEach { println(it) }
```

See the [full documentation](Exercise-1-LiveCoding-Filtering-Transforming%20Kotlin/README.md) for detailed explanations.

---

### Exercise 2: Build Custom Higher-Order Functions

**Location:** `Exercise-2-Build-Higher-Order-Function Kotlin/`

Learn how to create your own higher-order functions with generic types.

**You'll learn:**
- How higher-order functions work
- How to use generic type parameters
- How to write flexible predicate functions
- How to pass functions as parameters

**Key pattern:**
```kotlin
fun <T> processList(list: List<T>, predicate: (T) -> Boolean): List<T>
```

See the [full documentation](Exercise-2-Build-Higher-Order-Function%20Kotlin/README.md) for examples and explanations.

---

### Exercise 3: Transform Between Collection Types

**Location:** `Exercise-3-Transforming-Collection-Types Kotlin/`

Master the art of converting between different collection types and working with maps.

**You'll learn:**
- How to use `associateWith()` to create maps
- How to filter maps based on values
- How to work with key-value pairs
- How to use `groupBy()` for categorizing data

**Example:**
```kotlin
val stringLengths = strings.associateWith { it.length }
val filtered = stringLengths.filter { it.value > 5 }
```

See the [full documentation](Exercise-3-Transforming-Collection-Types%20Kotlin/README.md) for step-by-step guidance.

---

### Exercise 4: Complex Data Processing

**Location:** `Exercise-4-Complex-Data-Processing Kotlin/`

Bring it all together by applying functional programming to real data structures.

**You'll learn:**
- How to use Kotlin data classes
- How to chain multiple collection operations
- How to compute statistics (average, sum, min, max)
- How to format output with string templates

**Example:**
```kotlin
data class Person(val name: String, val age: Int)

val averageAge = people
    .filter { it.name.startsWith("A") || it.name.startsWith("B") }
    .map { it.age }
    .average()
```

See the [full documentation](Exercise-4-Complex-Data-Processing%20Kotlin/README.md) for real-world patterns.

---

## Application Projects

### 1. Student Calculator (Kotlin/Android)

**Location:** `Student Calculator Kotlin/`

A fully-featured Android app for managing student grades with an intuitive interface.

**Built with:**
- Kotlin programming language
- Jetpack Compose with Material Design 3
- Gradle build system
- Android 8.0+ (API 26 and up)

**What it does:**
- Import student data from Excel files
- Calculate grades automatically based on CA and exam marks
- Customize the grading formula to your needs
- View student records and statistics
- Calculate class averages and pass rates
- Export results back to Excel
- Save your preferences

**Key components:**
- `app/` - Main Android application
- `console-app/` - Command-line version
- `gradle/` - Build configuration

**Getting started:**
```bash
cd "Student Calculator Kotlin"
gradlew.bat build          # Build the project
gradlew.bat installDebug   # Install on device or emulator
```

Learn more in the [Quick Start guide](Student%20Calculator%20Kotlin/QUICK-START.md).

---

### 2. Student Grade App (Flutter/Dart)

**Location:** `student_grade_app/`

A modern, cross-platform app for viewing and analyzing student grades that works on Android, iOS, Web, Windows, macOS, and Linux.

**Built with:**
- Dart 3.0+
- Flutter 3.11+ framework
- Excel parsing capabilities

**What it does:**
- Display interactive grade dashboards
- Import student data from Excel files with a visual file picker
- Calculate and display grade statistics
- Sort students by score
- Works across all major platforms
- Includes a console version for scripting

**Technology highlights:**
- Multi-platform**

The apps use this standardized grading scale:

| Grade | Score | Meaning |
|-------|-------|---------|
| A | 80-100 | Excellent |
| B | 70-79 | Very Good |
| C | 60-69 | Good |
| D | 50-59 | Satisfactory |
| E | 40-49 | Pass |
| F | 0-39 | Fail |

Final grade is calculated as: (CA × 0.3) + (Exam × 0.7)

**More details:**
- CA (Continuous Assessment) is out of 30
- Exam is out of 70
- Final mark is out of 100
dart pub get
dart run bin/main.dart <path_to_excel_file.xlsx>
```

**Console Usage Examples:**
```bash
# Simple file in current directory
dart run bin/main.dart grades.xlsx

# File with full path
dart run bin/main.dart C:\Users\YourName\Desktop\student_grades.xlsx

# File with spaces in path (use quotes)
dart run bin/main.dart "C:\Users\YourName\My Documents\grades.xlsx"
```

**Project Structure:**
- `lib/main.dart` - Flutter UI implementation (447 lines)
- `bin/main.dart` - Console application
- `android/`, `ios/`, `windows/`, `web/`, `macos/`, `linux/` - Platform-specific configurations
- `CONSOLE_README.md` - Console application documentation

---

### 3. Additional Exercises (Dart and Kotlin Implementations)

**Exercise1/, Exercise2/, Exercise3/**

These directories contain parallel implementations of functional programming concepts in both Dart and Kotlin, demonstrating language-specific approaches to:
- Higher-order functions and predicates
- Collection transformations
- Object filtering and aggregate computation

Each directory includes:
- Dart implementation (`.dart` file)
- Kotlin implementation (`.kt` file)
- Documentation (RDart and Kotlin Exercises

**Locations:** `Exercise1/`, `Exercise2/`, `Exercise3/`

These directories show the same functional programming concepts implemented in both Dart and Kotlin side-by-side. Perfect for comparing how different languages approach the same problem.

**What's included:**
- Higher-order functions and predicates  
- Collection transformations
- Object filtering and aggregate computation

**Each directory contains:**
- Dart implementation (`.dart` file)
- Kotlin implementation (`.kt` file)
- Full d*Excel Support** | Apache POI | excel package | excel package |
| **Supported Platforms** | Android | Android, iOS, Web, Windows, macOS, Linux | Windows, macOS, Linux |
| **Data Persistence** | SharedPreferences | Flutter storage | None |
| **Build System** | Gradle | Flutter | Dart |

---

## Development Environment Setup

### Prerequisites

**For Kotlin/Android Projects:**
- Android Studio (latest stable version)
- Android SDK (API 26-34)
- Kotlin 1.9 or later
- Java Development Kit (JDK) 11 or later
- Gradle 7.0 or later

**For Dart/Flutter Projects:**
- Dart SDK 3.0 or later
- Flutter SDK 3.11 or later (for Flutter projects)
- Visual Studio Code with Dart/Flutter extensions, or Android Studio with Flutter plugin

### Installation Instructions

**Android Studio:**
1. Download from https://developer.android.com/studio
2. Install Android SDK components
3. Configure JDK 11+

**Dart SDK:**
```bash
# Windows (using Chocolatey)
choco install dart-sdk

# macOS (using Homebrew)
brew install dart

# Or download from: https://dart.dev/get-dart
```
Before you start, you'll need to install the necessary tools. Here's what you need for different parts of the project.

### For Kotlin/Android Projects

**You'll need:**
- Android Studio (latest version)
- Android SDK (API 26-34)
- Kotlin 1.9 or later
- Java Development Kit (JDK) 11 or later
- Gradle 7.0 or later

**Installation:**
1. Download Android Studio from https://developer.android.com/studio
2. Install the Android SDK components through Android Studio
3. Make sure JDK 11 or later is configured

### For Dart/Flutter Projects

**You'll need:**
- Dart SDK 3.0 or later
- Flutter SDK 3.11 or later (for Flutter apps)
- A code editor like VS Code or Android Studio

**To install Dart:**
```bash
# Windows (using Chocolatey)
choco install dart-sdk

# macOS (using Homebrew)
brew install dart

# Or download from https://dart.dev/get-dart
```

**To install Flutter:**
1. Download from https://flutter.dev/docs/get-started/install
2. Extract to a folder
3. Add Flutter to your system PATH
4. Run `flutter doctor` to verify setup

### Verify Your Installation

```bash
# Check Kotlin
kotlinc -version

# Check Dart
dart --version

# Check Flutter|------|------
001   | Nedjou Destin       | 25   | 65
002   | Cheikha Samuel     | 28   | 72
003   | Robert Brown   | 20   | 55
004   | Alicia Alex  | 30   | 68
```

### Sample Data Generation

The `student_grade_app` project includes Python scripts for generating sample data:

```bash
cd student_grade_app
python create_sample.py
```

---

## Key Concepts

###How to Prepare Your Excel Files

The apps expect Excel files in a specific format. Here's what you need to know.

### Column Headers

Your Excel file should have these columns (the naming is flexible):

- **Student ID**: Column for student number/ID
- **Student Name**: Column for the student's full name  
- **CA Mark**: Continuous assessment score (out of 30)
- **Exam Mark**: Examination score (out of 70)

The column names are flexible. The apps look for variations like:
- ID, Student ID, No, Number
- Name, Student Name, Full Name
- CA, CA Mark, Continuous
- Exam, Exam Mark, Examination

### Example Excel Layout

```
ID    | Name           | CA   | Exam
------|----------------|------|------
001   | Nedjou Destin  | 25   | 65
002   | Cheikha Samuel | 28   | 72
003   | Robert Brown   | 20   | 55
004   | Alicia Alex    | 30   | 68
```

### Generate Sample Data

If you want to test with sample data, use this script:

```bash
cd student_grade_app
python create_sample.py
```

This will create a sample Excel file with test data.
## Getting Star You'll Learn

### Functional Programming with Kotlin

- Lambda expressions and closures
- How higher-order functions work
- Immutability and pure functions  
- Working with collections: filter, map, reduce, fold, groupBy
Choose your learning path based on what interests you most.

### Running Kotlin Exercises

**Using IntelliJ IDEA (Easiest):**
1. Open IntelliJ IDEA
2. File → Open
3. Navigate to an exercise folder  
4. Right-click on `Main.kt` → Run

**Using the Kotlin Compiler:**
```powershell
cd "Exercise-1-LiveCoding-Filtering-Transforming Kotlin\src\main\kotlin"
kotlinc Main.kt -include-runtime -d output.jar
java -jar output.jar
```

### Running the Android Application

1. Open Android Studio
2. File → Open → Select `Student Calculator Kotlin` folder
3. Wait for Gradle sync to complete
4. Connect an Android device or start an emulator  
5. Click Run (or press Shift + F10)

### Running the Flutter Application

**For mobile or desktop:**
```bash
cd student_grade_app
flutter pub get
flutter devices        # See your available devices
flutter run -d <device_id>
```

**For web:**
```bash
flutter run -d chrome
```

**Build for release:**
```bash
flutter build apk        # Android APK
flutter build appbundle  # Google Play format  
flutter build web        # Web deployment
flutter build windows    # Windows executable
```

### Running the_app
dart pub get
dart run bin/main.dart sample.xlsx
```

---

## Troubleshooting

### Kotlin Exercises

**Problem:** "kotlinc: command not found"
**Solution:** Install Kotlin compiler using package manager or download from kotlinlang.org

**Problem:** "Error: Could not find or load main class"
**Solution:** Ensure compilation includes `-include-runtime` flag and classpath is correct

**Problem:** OutOfMemoryError during compilation
**Solution:** Increase JVM heap size: `kotlinc -J-Xmx1024m Main.kt`

### Android Application
Having issues? Here are solutions to common problems.

### Kotlin Issues

**"kotlinc: command not found"**  
Install the Kotlin compiler from kotlinlang.org or use a package manager

**"Error: Could not find or load main class"**  
Make sure you compiled with the `-include-runtime` flag

**OutOfMemoryError during compilation**  
Increase memory: `kotlinc -J-Xmx1024m Main.kt`

### Android Issues

**Gradle sync fails**
- Check your internet connection
- Update Gradle in `gradle/wrapper/gradle-wrapper.properties`
- Go to Build → Clean Project
- File → Invalidate Caches / Restart

**"Cannot resolve symbol 'apache.poi'"**
- Check dependencies in `app/build.gradle`
- Sync Gradle files
- Verify Maven repository is accessible

**App crashes during Excel import**
- Verify Excel file has the correct columns
- Check that file permissions are granted
- Review the error logs in Logcat

### Flutter Issues

**"Unable to locate Android SDK"**
- Run `flutter doctor` to see what's missing
- Set the ANDROID_HOME environment variable
- Configure the Android SDK path in settings

**"Pub get failed"**
- Check your internet connection
- Run `flutter pub cache repair`
- Update Flutter: `flutter upgrade`

**File picker not working**
- Check platform-specific permissions
- Verify the file_picker package version
- Debug using platform-specific logs
1. Review Dart implementations in Exercise1, Exercise2, Exercise3
2. Compare Kotlin and Dart syntax
3. Understand language-specific idioms

### Stage 3: Android Application Development (3-4 hours)
1. Run Student Calculator application
2. Analyze codebase architecture
3. Understand Android-specific components
4. Test with sample Excel files

### Stage 4: Cross-Platform Development (2-3 hours)
1. Run Flutter application
2. Explore multi-platform compatibility
3. Compare Android-specific vs. cross-platform approaches
4. Test console application variant

### Stage 5: Extension and Customization (Ongoing)
1. Modify grading formulas
2. Add new statistical analyses
3. Implement additional features
4. Optimize performance

---

## Resources and References

### Official Guides

- [Kotlin Language Documentation](https://kotlinlang.org/docs/reference/)
- [Kotlin Collections Guide](https://kotlinlang.org/docs/collections-overview.html)
- [Android Developers Guide](https://developer.android.com/)
- [Dart Language Guide](https://dart.dev/guides/language/language-tour)
- [Flutter Documentation](https://flutter.dev/docs)
- [Apache POI Library](https://poi.apache.org/) for Excel manipulation

### Learning Resources

- [Functional Programming in Kotlin (JetBrains Academy)](https://www.jetbrains.com/help/kotlinlang/)
- [Android Development with Kotlin (Google Codelabs)](https://codelabs.developers.google.com/)
- [Flutter & Dart Complete Guide](https://flutter.dev/docs)

### Package Documentation

- [excel (Dart package)](https://pub.dev/packages/excel) - Excel parsing
- [file_picker (Flutter package)](https://pub.dev/packages/file_picker) - File selection
- [Apache POI Javadocs](https://poi.apache.org/apidocs/) - Java Excel library

---

## Version Control

This project uses Git for managing changes and collaboration. Here are the common Git commands you'll use.

**Check repository status:**
```bash
git status
```

**View recent commits:**
```bash
git log --oneline
```

**Create a new feature branch:**
```bash
git checkout -b feature/your-feature-name
```

**Save your changes:**
```bash
git add .
git commit -m "Brief description of what you changed"
```

**Share your work:**
```bash
git push origin your-branch-name
```

**Get latest changes:**
```bash
git pull origin main
```

**Current repository:** https://github.com/NEDJOU666/Android-app

---

## License

This project is developed for educational purposes as part of university coursework. All code is provided for academic learning and assessment.

---

## Acknowledgments

This project demonstrates practical applications of functional programming concepts, mobile application development, and cross-platform software engineering principles using modern development frameworks and languages.

**Frameworks and Libraries Used:**
- Kotlin Standard Library
- Jetpack Compose
- Apache POI
- Dart SDK
- Flutter Framework
- Material Design Components

---

**Last Updated:** March 6, 2026

For detailed information about specific exercises or applications, refer to the README files in their respective directories.
