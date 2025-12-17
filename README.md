# C-Trainer

C-Trainer is a modern workout app built with **Flutter**, designed to help users organize, execute, and track their training routines.

With C-Trainer, users can create personal workouts, explore routines shared by the community, complete workouts step-by-step, and review their progress over time.

---

## 🚀 Features

### 🏋️ My Workouts

- Create and manage your own workout library.
- Add exercises with reps, sets, descriptions and images.
- Start a workout and mark exercises as completed using checkboxes.
- Edit or delete workouts you own.

### 🌍 Explore Workouts

- Browse public workouts created by other users.
- View details of community workouts.
- Copy public workouts into your personal library.

### 📅 Workout Logs

- Automatically record completed or partial workouts.
- View training history with dates and completion status.

### 🔐 Authentication

- Google Sign-In via **Firebase Auth**.
- Each user has their own private workout library and logs.

### 🌐 Backend & Database

- **Node.js + Express** backend.
- **MongoDB** for storing workouts, exercises, logs, and user data.
- Firebase ID tokens used for secure authentication on the API.

### 📱 Offline Support (planned)

- Cache workouts and logs for offline usage.
- Sync changes when the device is back online.

---

## 🛠️ Tech Stack

### Mobile App

- Flutter
- Dart

### Backend

- Node.js
- Express
- MongoDB
- Firebase Admin SDK

### Authentication

- Firebase Auth (Google Sign-In)

---

## 📂 Project Structure (high-level)

```
ctrainer/
 ├─ lib/
 │   ├─ models/
 │   ├─ screens/
 │   ├─ widgets/
 │   ├─ services/
 │   └─ main.dart
 ├─ ROADMAP.md
 ├─ README.md
 ├─ pubspec.yaml
 └─ package.json
```

---

## 📦 Installation

### Clone the repository

```bash
git clone https://github.com/riricardo/ctrainer.git
cd ctrainer
```

---

## 📱 Running the Flutter App

```bash
flutter pub get
flutter run
```

---

## 📅 Roadmap

See **ROADMAP.md** for detailed planning and milestones.

---

## 📜 License

MIT License

---

## ✨ Author

Built with focus and consistency as a long-term personal project.
