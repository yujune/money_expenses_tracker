# Money Expenses Tracker

A Flutter application for tracking personal expenses and managing finances. This app helps users monitor their spending habits, categorize expenses, and visualize their financial data through charts and reports.

## Features

- Track income and expenses
- Categorize transactions
- View financial statistics and charts
- Local data storage for offline access
- Modern and intuitive user interface

## Screenshots

<div align="center">
  <img src="screenshots/Simulator Screenshot - iPhone 16 Pro - 2025-04-21 at 08.33.39.png" alt="Home Screen" width="200"/>
  <img src="screenshots/Simulator Screenshot - iPhone 16 Pro - 2025-04-21 at 08.33.50.png" alt="Expenses List" width="200"/>
   <img src="screenshots/Simulator Screenshot - iPhone 16 Pro - 2025-04-21 at 08.35.30.png" alt="Expenses" width="200"/>
  <img src="screenshots/Simulator Screenshot - iPhone 16 Pro - 2025-04-21 at 08.33.55.png" alt="Add Expense" width="200"/>
  <img src="screenshots/Simulator Screenshot - iPhone 16 Pro - 2025-04-21 at 08.34.04.png" alt="Statistics" width="200"/>
  <img src="screenshots/Simulator Screenshot - iPhone 16 Pro - 2025-04-21 at 08.34.11.png" alt="Settings" width="200"/>
</div>

## Tech Stack

- **Framework**: Flutter
- **State Management**: Riverpod
- **Local Storage**: SQLite (sqflite)
- **UI Components**: Material Design
- **Charts**: fl_chart
- **Form Handling**: flutter_form_builder
- **Code Generation**: Freezed, JSON Serialization
- **Dependency Injection**: Riverpod
- **Logging**: Pretty Dio Logger

## Getting Started

### Prerequisites

- Flutter SDK (version compatible with SDK ^3.5.4)
- Dart SDK
- Android Studio / Xcode (for platform-specific development)

### Installation

1. Clone the repository:

```bash
git clone [repository-url]
```

2. Navigate to the project directory:

```bash
cd money_expenses_tracker
```

3. Install dependencies:

```bash
flutter pub get
```

4. Run code generation:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

5. Run the app:

```bash
flutter run
```

## Project Structure

```
lib/
├── common/           # Common utilities and extensions
├── features/         # Feature-specific code
├── models/           # Data models
├── providers/        # Riverpod providers
├── repositories/     # Data repositories
├── services/         # Business logic services
└── widgets/          # Reusable widgets
```

## Development Guidelines

- Always use Flutter's textTheme from the context extension for Text widgets
- Follow the project's architecture pattern
- Write clean, maintainable code
- Use proper documentation
- Follow Flutter's best practices

## Dependencies

The project uses several key packages:

- `riverpod` and `flutter_riverpod` for state management
- `sqflite` for local database storage
- `freezed` for code generation
- `flutter_form_builder` for form handling
- `fl_chart` for data visualization
- `dio` for network requests
- `intl` for internationalization
