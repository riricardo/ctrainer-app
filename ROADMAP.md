# C-Trainer – Project Roadmap

## Overview

C-Trainer is a workout app where users can:

- Maintain a personal library of workouts
- Create their own workouts
- Discover public workouts created by other users
- Copy public workouts into their own library
- Execute workouts step-by-step using checkboxes
- View a log/history of completed or partially completed workouts
- Log in using Google Sign-In (Firebase Auth)
- Store data in MongoDB through an Express API
- (Future) Use the app with offline caching

---

## Phase 0 – Initial Setup

Goal: Prepare the foundation so both app and backend run correctly.

- Create or update the Flutter project
- Ensure the app builds and runs in debug mode
- Implement bottom/tab navigation with 4 tabs:
  - My Workouts
  - Explore
  - Logs
  - Account
- Create Node.js + Express backend project
- Connect Express to MongoDB
- Create a health check endpoint (GET /health)
- Create Firebase project
- Enable Google Sign-In in Firebase Auth
- Integrate Firebase Auth into the Flutter app
- Test Flutter → Backend communication

---

## v0.1 – Authentication & Personal Workout Library

Goal: User can log in and manage their own workout library.

### Flutter App

- Google Sign-In screen
- Persist authenticated user session
- Account tab:
  - Display user name and email
  - Logout button
- My Workouts tab:
  - Fetch workouts owned by the user
  - Display workouts as cards
  - Create workout (title + short description)
  - Delete workout
- Workout details screen (read-only at this stage)

### Backend

- Firebase ID token validation middleware
- Workout model with fields:
  - ownerUserId
  - title
  - description
  - isPublic (default false)
  - exercises (empty array)
- API routes:
  - GET /workouts/my
  - POST /workouts
  - GET /workouts/:id
  - DELETE /workouts/:id (owner only)

---

## v0.2 – Exercises Inside Workouts

Goal: Workouts contain structured exercise data.

### Flutter App

- Workout details screen:
  - List exercises
  - Add new exercise
  - Edit existing exercise
  - Remove exercise
- Exercise fields:
  - Name
  - Short description
  - Repetitions
  - Sets
- Exercise detail screen

### Backend

- Extend Workout schema with exercises array containing:
  - name
  - description
  - reps
  - sets
  - imageUrl (optional)
- Update PUT /workouts/:id to support exercise CRUD
- Validate that only the workout owner can modify exercises

---

## v0.3 – Run Workouts & Workout Logs

Goal: Allow users to execute workouts and record progress.

### Flutter App

- Add Start Workout button to workout details
- Workout execution screen:
  - Display exercises as a checklist
  - Allow marking exercises as completed
- Finish workout flow:
  - Save completion state
  - Send workout log to backend
- Logs tab:
  - List workout logs ordered by date
  - Show workout name, date, and status (complete / partial)

### Backend

- WorkoutLog model with fields:
  - userId
  - workoutId
  - date
  - status (complete | partial)
  - completedExercises
- API routes:
  - POST /workout-logs
  - GET /workout-logs/my

---

## v0.4 – Explore Public Workouts

Goal: Enable workout discovery and sharing.

### Flutter App

- Explore tab:
  - List public workouts
  - Search workouts by title
  - View public workout details
  - Add workout to personal library (copy)
- Rules:
  - Non-owners cannot edit public workouts
  - Copied workouts become fully editable by the user

### Backend

- Enable public workouts using isPublic flag
- API routes:
  - GET /workouts/public?search=
  - POST /workouts/:id/copy (or duplicate logic on client)
- Enforce read-only access for non-owners

---

## v0.5 – Exercise Media & Rich Details

Goal: Improve exercise information and visuals.

### Flutter App

- Display exercise image when imageUrl is available
- Show long exercise description
- Improve workout and exercise card UI

### Backend

- Support additional exercise fields:
  - imageUrl
  - longDescription

---

## v0.6 – Offline Cache

Goal: Allow basic usage without internet connection.

### Flutter App

- Implement local storage
- Cache user workouts locally
- Load cached workouts on app startup
- Sync workouts with backend when online
- Optional: cache workout logs and sync later

---

## v1.0 – Public Beta Release

Goal: Deliver a polished and stable beta version.

- Final UI and UX review
- App icon and splash screen
- Proper error handling and empty states
- Simple onboarding screens explaining app flow
