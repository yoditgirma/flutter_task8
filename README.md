# Flutter BLoC Counter App

A simple Flutter application that demonstrates **state management using the BLoC (Business Logic Component) pattern**.

This project allows users to increment, decrement, reset the counter, increment/decrement by a custom value, and automatically increment the counter using a timer.

---

## Features

- Increment counter
- Decrement counter
- Reset counter
- Increment/Decrement by custom value
- Start automatic timer (increments every second)
- Stop timer

---

## What I Learned

Through this project I practiced:

- Flutter **BLoC state management**
- Creating and handling **Events**
- Managing **States**
- Using **BlocBuilder** to rebuild UI
- Implementing **Timer logic inside BLoC**
- Organizing Flutter code using a **clean architecture structure**

---

## 📂 Project Structure

```
lib
│
├── counter
│   ├── bloc
│   │   ├── counter_bloc.dart
│   │   ├── counter_event.dart
│   │   └── counter_state.dart
│   │
│   └── pages
│       └── counter_screen.dart
│
└── main.dart
```

---

## Technologies Used

- Flutter
- Dart
- flutter_bloc
- dart:async (Timer)

---

## Demo

https://github.com/user-attachments/assets/3f6485a8-70aa-4501-9376-a2f6ce906858

## Future Improvements

- Add pause/resume timer
- Add countdown timer
- Improve UI/UX design
- Add animations
- Add BLoC unit testing

---

## Author

**Yodit**

