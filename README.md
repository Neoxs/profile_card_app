# Profile Card App

A Flutter application that displays a profile card with personal information. This project was created as part of a Flutter UI development exercise.

## Features

- Profile card with custom styling
- Circular avatar image
- Personal information display (name, email, social media)
- Material Design implementation
- Responsive layout

## Getting Started

### Prerequisites

- Flutter SDK (latest version)
- Dart SDK
- Android Studio/VS Code with Flutter plugins

### Installation

1. Clone the repository
```bash
git clone https://github.com/Neoxs/profile_card_app.git
```

2. Navigate to project directory
```bash
cd profile_card_app
```

3. Create assets folder and add your profile image
```bash
mkdir -p assets/images
# Add your profile image to assets/images/
```

4. Update pubspec.yaml
```yaml
flutter:
  assets:
    - assets/images/
```

5. Install dependencies
```bash
flutter pub get
```

6. Run the app
```bash
flutter run
```

## Project Structure

```
lib/
  └── main.dart         # Main application file
assets/
  └── images/          # Image assets
```