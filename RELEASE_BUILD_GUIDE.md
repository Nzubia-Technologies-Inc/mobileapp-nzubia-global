# Nzubia Android Release Build Guide

## Keystore Information
- **File**: `android/nzubia-release-key.jks`
- **Alias**: `nzubia-key`
- **Password**: `Password@2026?`
- **Validity**: 10,000 days (~27 years)

## Building Release APK

```bash
cd /Users/felixkwamenaawortwe/Desktop/NZUBIA/GLOBAL-NOW/GIT/customer-nzubia-global
flutter build apk --release
```

## Building Release App Bundle (AAB) - Recommended for Play Store

```bash
cd /Users/felixkwamenaawortwe/Desktop/NZUBIA/GLOBAL-NOW/GIT/customer-nzubia-global
flutter build appbundle --release
```

## Output Locations

- **APK**: `build/app/outputs/flutter-apk/app-release.apk`
- **AAB**: `build/app/outputs/bundle/release/app-release.aab`

## Upload to Play Store

1. Go to [Google Play Console](https://play.google.com/console)
2. Select your "Nzubia" app
3. Navigate to **Production** → **Create new release**
4. Upload the **app-release.aab** file
5. Fill in release notes
6. Review and roll out

## Important Notes

- ⚠️ **NEVER** commit `key.properties` or `*.jks` files to git (already in .gitignore)
- ⚠️ **BACKUP** the keystore file securely - if lost, you cannot update the app
- ✅ Privacy Policy URL: https://nzubia.com/privacy-policy
- ✅ App already created in Play Console

## Next Steps for iOS

1. Open Xcode project: `open ios/Runner.xcworkspace`
2. Configure signing in Xcode
3. Build archive for App Store
