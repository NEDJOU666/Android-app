# Kotlin & Android Learning Project

A comprehensive learning project featuring **4 Kotlin exercises** on functional programming and a full **Student Grades Calculator Android Application**.

---

## 📋 Table of Contents
- [Project Overview](#-project-overview)
- [Kotlin Exercises](#-kotlin-exercises)
- [Student Grades Calculator App](#-student-grades-calculator-app)
- [Prerequisites](#-prerequisites)
- [Quick Start](#-quick-start)
- [Project Structure](#-project-structure)
- [Learning Path](#-learning-path)

---

## 🎯 Project Overview

This repository contains two main components:

### 1. **Kotlin Console Exercises** (4 Structured Exercises)
Learn Kotlin functional programming concepts through hands-on exercises covering:
- Lambda expressions
- Higher-order functions
- Collection transformations
- Data classes and complex data processing

### 2. **Student Grades Calculator** (Full Android App)
A complete Android application built with Kotlin for:
- Importing student data from Excel files
- Calculating grades using customizable formulas
- Viewing student records and statistics
- Exporting results

---

## 📚 Kotlin Exercises

All exercises are organized in separate folders with complete documentation and runnable code.

### Exercise 1: Live Coding - Filtering & Transforming with Lambdas

**Location:** `Exercise-1-LiveCoding-Filtering-Transforming/`

**Learn:**
- Use `filter()` to select elements based on conditions
- Use `map()` to transform elements
- Use `forEach()` to iterate and perform actions

**Example:** Filter numbers > 5, square them, and print results

```kotlin
numbers.filter { it > 5 }
    .map { it * it }
    .forEach { println(it) }
```

---

### Exercise 2: Build Your Own Higher-Order Function

**Location:** `Exercise-2-Build-Higher-Order-Function/`

**Learn:**
- Understand higher-order functions
- Create generic functions with type parameters
- Use predicate functions for filtering

**Key Concept:** Build a custom `processList()` function that accepts a function parameter

```kotlin
fun <T> processList(list: List<T>, predicate: (T) -> Boolean): List<T>
```

---

### Exercise 3: Transforming Between Collection Types

**Location:** `Exercise-3-Transforming-Collection-Types/`

**Learn:**
- Use `associateWith()` to create maps from lists
- Filter maps based on values
- Work with key-value pairs
- Group data using `groupBy()`

**Example:** Transform list of strings to map of string → length

```kotlin
val stringLengths = strings.associateWith { it.length }
```

---

### Exercise 4: Complex Data Processing

**Location:** `Exercise-4-Complex-Data-Processing/`

**Learn:**
- Work with data classes in Kotlin
- Chain multiple collection operations
- Calculate aggregate statistics (average, sum, min, max)
- Format output strings using string templates

**Example:** Process Person objects to calculate filtered averages

```kotlin
data class Person(val name: String, val age: Int)

val averageAge = people
    .filter { it.name.startsWith("A") || it.name.startsWith("B") }
    .map { it.age }
    .average()
```

---

## 📱 Student Grades Calculator App

**Location:** `Student Calculator/`

A full-featured Android application for managing and calculating student grades.

### Features

✅ **Excel Import**
- Import student data from Excel (.xlsx) files
- Automatic parsing of student records (ID, Name, CA marks, Exam marks)

✅ **Grade Calculation**
- Customizable CA and Exam weight formulas
- Automatic final grade calculation
- Letter grade assignment (A, B, C, D, F)

✅ **Student Management**
- View complete list of students
- Search and filter students
- View individual student details

✅ **Statistics Dashboard**
- Class average calculation
- Pass rate statistics
- Grade distribution
- Export results to Excel

✅ **Formula Settings**
- Customize CA weight percentage (default: 40%)
- Customize Exam weight percentage (default: 60%)
- Save and persist formula preferences

### App Structure

```
Student Calculator/
├── app/
│   └── src/main/java/com/studentgrades/android/
│       ├── MainActivity.kt              # Main entry point
│       ├── StudentListActivity.kt       # List of students
│       ├── StudentDetailActivity.kt     # Student details view
│       ├── StatisticsActivity.kt        # Statistics dashboard
│       ├── FormulaSettingsActivity.kt   # Grade formula settings
│       ├── StudentAdapter.kt            # RecyclerView adapter
│       ├── models/
│       │   └── StudentRecord.kt         # Student data model
│       └── utils/
│           ├── ExcelReader.kt           # Excel import logic
│           ├── ExcelExporter.kt         # Excel export logic
│           └── GradeCalculator.kt       # Grade calculation
├── console-app/                         # Console version (legacy)
└── QUICK-START.md                       # Quick reference guide
```

### Tech Stack
- **Language:** Kotlin
- **Min SDK:** Android 8.0 (API 26)
- **Target SDK:** Android 14 (API 34)
- **Libraries:**
  - Apache POI (Excel processing)
  - Android Jetpack (AppCompat, RecyclerView)
  - Material Design Components

---

## 🔧 Prerequisites

### For Kotlin Exercises
- **Kotlin Compiler** (kotlinc) installed
- **Java Runtime Environment** (JRE 8 or higher)
- OR use IntelliJ IDEA / Android Studio to run directly

**Install Kotlin CLI:**
```bash
# Windows (using Chocolatey)
choco install kotlin

# macOS (using Homebrew)
brew install kotlin

# Linux (using SDKMAN!)
sdk install kotlin
```

### For Android App
- **Android Studio** (Arctic Fox or later)
- **Android SDK 26+**
- **Gradle 7.0+** (included in project)

---

## 🚀 Quick Start

### Running Kotlin Exercises

**Option 1: Direct Kotlin Execution**
```powershell
# Navigate to any exercise folder
cd "Exercise-1-LiveCoding-Filtering-Transforming\src\main\kotlin"

# Run directly
kotlin Main.kt
```

**Option 2: Compile and Run**
```powershell
# Navigate to exercise folder
cd "Exercise-1-LiveCoding-Filtering-Transforming"

# Compile to JAR
kotlinc src\main\kotlin\Main.kt -include-runtime -d output.jar

# Run JAR
java -jar output.jar
```

**Option 3: Using IDE**
1. Open the exercise folder in IntelliJ IDEA
2. Right-click on `Main.kt`
3. Select "Run MainKt"

### Running Android App

**Step 1: Open in Android Studio**
```powershell
# Navigate to Student Calculator folder
cd "Student Calculator"

# Open in Android Studio
# File → Open → Select "Student Calculator" folder
```

**Step 2: Sync Gradle**
- Wait for Gradle sync to complete
- Resolve any dependency issues if prompted

**Step 3: Run on Device/Emulator**
- Connect Android device or start emulator
- Click "Run" (▶️) button or press `Shift + F10`

**Step 4: Using the App**
1. Tap "Import Excel" to load student data
2. Adjust grade formula in "Formula Settings" if needed
3. View students in "View Students"
4. Check statistics in "View Statistics"
5. Export results using the export option

---

## 📂 Project Structure

```
Android app/
│
├── Exercise-1-LiveCoding-Filtering-Transforming/
│   ├── README.md
│   └── src/main/kotlin/Main.kt
│
├── Exercise-2-Build-Higher-Order-Function/
│   ├── README.md
│   └── src/main/kotlin/Main.kt
│
├── Exercise-3-Transforming-Collection-Types/
│   ├── README.md
│   └── src/main/kotlin/Main.kt
│
├── Exercise-4-Complex-Data-Processing/
│   ├── README.md
│   └── src/main/kotlin/Main.kt
│
├── Student Calculator/
│   ├── app/                          # Android app module
│   │   ├── src/
│   │   │   └── main/
│   │   │       ├── java/             # Kotlin source files
│   │   │       ├── res/              # Resources (layouts, drawables)
│   │   │       └── AndroidManifest.xml
│   │   └── build.gradle              # App-level Gradle config
│   │
│   ├── console-app/                  # Console version (optional)
│   │   └── src/main/kotlin/
│   │
│   ├── build.gradle                  # Project-level Gradle
│   ├── settings.gradle
│   ├── gradlew                       # Gradle wrapper (Unix)
│   ├── gradlew.bat                   # Gradle wrapper (Windows)
│   └── QUICK-START.md
│
└── README.md                         # This file
```

---

## 🎓 Learning Path

### Recommended Order

**Stage 1: Master Kotlin Basics** (1-2 hours)
1. ✅ Complete Exercise 1 - Get comfortable with lambdas and basic operations
2. ✅ Complete Exercise 2 - Build your own higher-order functions
3. ✅ Complete Exercise 3 - Master collection transformations
4. ✅ Complete Exercise 4 - Apply everything to complex scenarios

**Stage 2: Explore Android App** (2-3 hours)
1. 📱 Run the Student Calculator app
2. 🔍 Explore the codebase and understand the architecture
3. 🧪 Try adding new features or modifications
4. 📊 Test with your own Excel files

**Stage 3: Practice & Extend** (Ongoing)
- Modify exercises to work with different data types
- Add new features to the Android app
- Create your own exercises
- Build similar apps for other use cases

---

## 🧑‍💻 Key Kotlin Concepts Covered

### Functional Programming
- ✅ Lambda expressions and closures
- ✅ Higher-order functions
- ✅ Function types and function composition
- ✅ Collection operations (filter, map, reduce, etc.)

### Data Structures
- ✅ Lists, Maps, Sets
- ✅ Collection transformations
- ✅ Grouping and aggregation
- ✅ Data classes

### Android Development
- ✅ Activity lifecycle
- ✅ RecyclerView and Adapters
- ✅ File I/O (Excel import/export)
- ✅ SharedPreferences for data persistence
- ✅ Material Design UI components

---

## 📖 Additional Resources

### Kotlin Documentation
- [Official Kotlin Documentation](https://kotlinlang.org/docs/home.html)
- [Kotlin Collections Overview](https://kotlinlang.org/docs/collections-overview.html)
- [Higher-Order Functions & Lambdas](https://kotlinlang.org/docs/lambdas.html)
- [Data Classes](https://kotlinlang.org/docs/data-classes.html)

### Android Development
- [Android Developer Guide](https://developer.android.com/)
- [Kotlin for Android](https://developer.android.com/kotlin)
- [Material Design Guidelines](https://material.io/design)

### Practice Platforms
- [Kotlin Koans](https://play.kotlinlang.org/koans/overview)
- [LeetCode](https://leetcode.com/) - Practice algorithms in Kotlin
- [HackerRank Kotlin Track](https://www.hackerrank.com/domains/tutorials/10-days-of-kotlin)

---

## 🛠️ Troubleshooting

### Kotlin Exercises

**Issue: "kotlinc: command not found"**
- Solution: Install Kotlin compiler (see Prerequisites section)

**Issue: "Error: Could not find or load main class"**
- Solution: Ensure you compiled with `-include-runtime` flag

### Android App

**Issue: "Gradle sync failed"**
- Solution: Check internet connection, update Gradle version in `gradle-wrapper.properties`

**Issue: "Cannot resolve symbol 'apache.poi'"**
- Solution: Clean project (`Build → Clean Project`), then rebuild

**Issue: "App crashes on Excel import"**
- Solution: Ensure Excel file format matches expected structure (see sample file)

---

## 📝 License

This project is for educational purposes. Feel free to use, modify, and distribute for learning.

---

## 🤝 Contributing

This is a learning project. Feel free to:
- Add more exercises
- Improve existing code
- Fix bugs
- Enhance documentation
- Share your improvements!

---

## ✨ Credits

Created as a comprehensive Kotlin and Android learning project.

**Topics Covered:**
- Functional Programming in Kotlin
- Collection Processing
- Android App Development
- Excel File Processing
- Material Design UI

---

**Happy Coding! 🎉**

For quick command reference, see individual exercise READMEs or check the `QUICK-START.md` files.
