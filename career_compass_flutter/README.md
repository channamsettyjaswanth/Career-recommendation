# Career Compass — Flutter Design Lab Project

A responsive Flutter app UI for a **Career Recommendation System**.

## Features
- Interest-based career recommendation (rule-based demo logic)
- Seven career paths with descriptions and estimated learning timelines
- Skill checklist with a live progress bar
- Step-by-step learning roadmap for each career
- Save/bookmark careers and open the saved-careers list
- Search careers by title or interest
- Light/dark theme toggle
- Responsive layout for mobile and wider screens
- Material 3 styling; no third-party packages or API keys required

## Run the project
1. Install Flutter SDK and make sure `flutter doctor` succeeds.
2. Extract this ZIP.
3. Open a terminal inside the `career_compass` folder.
4. Run:
   ```bash
   flutter pub get
   flutter run
   ```

## Run as a website
Enable Flutter web if needed, then run:
```bash
flutter run -d chrome
```
To build website files:
```bash
flutter build web
```
The generated website files will be in `build/web`.

## Open in Android Studio / VS Code
Open the extracted `career_compass` folder as a Flutter project. The main app code is in `lib/main.dart`.

## How the recommendation works
This lab version uses a simple rule-based mapping: the selected interest maps to a career profile. It is a demonstration UI, not a trained AI model. The saved careers and skill checklist are held in memory and reset when the app restarts.

## Suggested viva explanation
“Career Compass helps students explore career options based on their interests. The user selects an interest, and the application displays a matching career, required skills, a learning roadmap, and an estimated learning timeline. Users can mark skills as completed, view progress, search careers, save career paths, and switch themes. Flutter widgets such as `DropdownButtonFormField`, `Card`, `CheckboxListTile`, `LinearProgressIndicator`, and `GridView` are used to build the interface.”
