
# Flutter Location Tracking App

A Flutter-based application for tracking the current location and travel history of members. This app features Google Maps integration and a clean UI for location-based operations.

## Features

1. **Attendance Screen**: Displays a list of members with location tracking options.
2. **Location Details Screen**:
   - Shows the current location of a member on Google Maps.
   - Provides a timeline of visited locations for today by default.
   - Includes a date filter to view travel history for previous days.
3. **Route Details Screen**:
   - Displays the start and stop locations, total distance, and total travel duration.
   - Shows the complete travel route on a map with stop markers.

## Screenshots

| Screen               | Description          |
|----------------------|----------------------|
| Attendance Screen    | List of members with location icons |
| Location Details     | Map view with timeline of visited locations |
| Route Details Screen | Route map with details like distance and duration |

## Getting Started

### Prerequisites
- Flutter SDK installed ([Installation Guide](https://flutter.dev/docs/get-started/install))
- Android Studio or Visual Studio Code for development

### Dependencies
Add the following dependencies to your `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  google_maps_flutter: ^2.1.2
  flutter_polyline_points: ^1.0.0
  provider: ^6.1.3
  intl: ^0.18.0
```

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/flutter-location-app.git
   cd flutter-location-app
   ```

2. Get the dependencies:
   ```bash
   flutter pub get
   ```

3. Run the app:
   ```bash
   flutter run
   ```

## Project Structure

```
lib/
├── screens/
│   ├── attendance_screen.dart      # Attendance list with members
│   ├── location_details_screen.dart # Location details and timeline view
│   ├── route_details_screen.dart   # Route details with map view
```

## Contributions

Contributions are welcome! Feel free to fork the repository and submit a pull request.

1. Fork the project.
2. Create your feature branch (`git checkout -b feature/NewFeature`).
3. Commit your changes (`git commit -m 'Add some feature'`).
4. Push to the branch (`git push origin feature/NewFeature`).
5. Open a pull request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

---

### Contact

For queries or feedback, reach out to:
- **Email**: your.email@example.com
- **GitHub**: [Your Profile](https://github.com/your-username)
