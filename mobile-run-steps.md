# Mobile — Run Instructions

This document explains how to run the mobile app (Flutter) for the project on macOS.

## Prerequisites

- Install Flutter SDK: https://docs.flutter.dev/get-started/install
- Install Android Studio (Android SDK + emulator) or Xcode (for iOS). On macOS, install both if you need Android and iOS.
- Add `flutter` to your PATH and verify with `flutter --version`.
- For iOS builds: run `sudo gem install cocoapods` and ensure Xcode command-line tools are installed.

## Quick commands (from repository root)

1. Open a terminal and change to the mobile project folder:

```bash
cd nzubiaplatforms-customer
```

2. Check Flutter installation:

```bash
flutter --version
```

3. Fetch Dart/Flutter dependencies:

```bash
flutter pub get
```

4. (iOS only) Install CocoaPods in the iOS folder:

```bash
cd ios
pod install
cd ..
```

5. List connected devices / emulators:

```bash
flutter devices
```

6. Run the app on the default device (choose a device/emulator if multiple):

```bash
open -a simulator
flutter run
```

7. To build an APK for Android:

```bash
flutter build apk --release
```

8. To build an iOS app (on macOS with Xcode installed):

```bash
flutter build ios --release
```

## Troubleshooting

- If `flutter` isn't found, add the SDK `bin` to your PATH or follow the Flutter install doc.
- If `pod install` fails, run `pod repo update` then try again.
- If no devices are listed, start an Android emulator from Android Studio or connect a physical device with USB debugging enabled.

## Notes

- Running `flutter run` will attach to the device and stream logs; stop it with `q` or Ctrl+C.
- For CI or headless builds, use `flutter build` commands instead of `flutter run`.

---
If you want, I can run the checks and attempt to start the app now. Reply `yes` to proceed or `no` to skip.
