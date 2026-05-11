# 📝 Notes App (Flutter + Hive + Bloc)

A simple Notes App built with Flutter that allows users to create, edit, delete, and organize notes with different colors.  
The app uses local storage and state management for a smooth offline experience.

---

## 🚀 Features

- 📝 Add new notes
- ✏️ Edit existing notes
- 🗑️ Delete notes
- 🎨 Choose note colors
- 📅 Auto date saving
- 💾 Offline storage (no internet needed)
- ⚡ Fast state management with Bloc/Cubit
- 📱 Clean and responsive UI

---

## 🧱 Tech Stack

- Flutter (UI framework)
- Dart (Programming language)
- flutter_bloc (State management)
- Hive (Local database)
- intl (Date formatting)

---

## 📂 Project Structure

---

## ⚙️ How It Works

### ➤ Add Note
- Fill the form
- Validate input
- Save note using Hive
- Refresh notes list using Cubit

### ➤ Edit Note
- Tap on a note
- Modify content or color
- Save changes
- Update Hive + UI

### ➤ Delete Note
- Tap delete icon
- Remove from Hive
- Refresh UI automatically

---

## 🧠 State Management

The app uses Cubit (Bloc pattern):

- AddNoteCubit → handles adding notes
- NotesCubit → handles loading & refreshing notes

### States:
- Loading
- Success
- Failure

---

## 💾 Database

Uses Hive for local storage:
- Fast performance
- Offline support
- Lightweight NoSQL database

---

## 🎨 UI Features

- Dark theme
- Colorful notes
- Bottom sheet for adding notes
- Clean card design
- Smooth navigation

---

