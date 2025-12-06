# Copilot instructions for `entan_app`

## Project snapshot
- Flutter app targeting SDK ^3.9.2 with only core `flutter` + `cupertino_icons` dependencies (`pubspec.yaml`).
- Analyzer uses `package:flutter_lints/flutter.yaml`; keep code analyzer-clean via `flutter analyze` before committing.
- Entry point is `lib/main.dart`, which builds `MyApp` and wires `home/home_page.dart` as the landing screen.

## Architecture & patterns
- UI is split by feature folders under `lib/` (currently `home/`); keep new screens or services in similar feature directories to avoid a flat lib/.
- `MyHomePage` is a `StatefulWidget` that controls the counter via local `_counter` state and `setState`. Follow this pattern whenever state is scoped to a single screen.
- Theme is configured centrally in `MyApp` via `ThemeData` + `ColorScheme.fromSeed`. Extend the theme there so widgets can stay lean.
- Widget tests (`test/widget_test.dart`) bootstrap `MyApp` directly; update or add tests whenever you change displayed copy (e.g., the counter label) or interaction flows.

## Developer workflows
- Install dependencies: `flutter pub get` (runs automatically during `flutter run` but call it after touching `pubspec.yaml`).
- Static analysis: `flutter analyze` to respect the enforced lints.
- Formatting: `flutter format lib test` keeps CI-safe formatting (no custom config present).
- Run the sample widget test suite: `flutter test test/widget_test.dart`. The existing test expects the counter text `You have pushed the button this many times:` followed by numeric values; keep assertions in sync when altering UI strings.
- Launch the app locally: `flutter run` (or specify a platform device). Use hot reload for UI tweaks; hot restart when you change stateful fields that must reinitialize.

## Implementation tips for agents
- When editing `MyHomePage`, keep `_incrementCounter` side-effect free except for `setState`; any asynchronous work should live in a separate method to keep widget tests deterministic.
- Favor extracting reusable widgets into `lib/shared/` (create as needed) instead of bloating `main.dart` or `home_page.dart`.
- If you introduce assets or fonts, remember to register them under the `flutter:` section of `pubspec.yaml` to avoid runtime asset errors.
- Update `README.md` whenever you add non-trivial workflows, and mirror those updates here so future agents do not rediscover them from scratch.

## When extending the project
- Add new tests alongside features (e.g., `test/<feature>_test.dart`) and ensure `flutter test` stays green before finishing a task.
- Document any non-default build or deployment commands you add (CI scripts, flavors, etc.) in this file and in the README so agents know the happy path immediately.
