# iOS App Store Configuration Guide

## Prerequisites
- ✅ macOS with Xcode installed
- ✅ Apple Developer Account ($99/year)
- ✅ App created in App Store Connect (Nzubia)

## Step 1: Open Project in Xcode

```bash
cd /Users/felixkwamenaawortwe/Desktop/NZUBIA/GLOBAL-NOW/GIT/customer-nzubia-global
open ios/Runner.xcworkspace
```

**IMPORTANT**: Always open `.xcworkspace`, NOT `.xcodeproj`

## Step 2: Configure Signing & Capabilities

1. In Xcode, select **Runner** in the project navigator (left sidebar)
2. Select the **Runner** target
3. Go to **Signing & Capabilities** tab
4. **Automatically manage signing**: ✅ Check this box
5. **Team**: Select your Apple Developer team from dropdown
6. **Bundle Identifier**: Verify it shows `com.nzubia.global.app`

Xcode will automatically:
- Create/download certificates
- Create/download provisioning profiles
- Configure signing for Debug and Release

## Step 3: Update Build Number (if needed)

In Xcode:
1. Select **Runner** target
2. Go to **General** tab
3. Under **Identity**:
   - **Version**: 1.0.0 (matches pubspec.yaml)
   - **Build**: 1 (increment for each submission)

Or update in `pubspec.yaml`:
```yaml
version: 1.0.0+1  # format: version+build
```

## Step 4: Build Archive for App Store

### Option A: Via Xcode (Recommended)

1. In Xcode menu: **Product** → **Destination** → **Any iOS Device (arm64)**
2. **Product** → **Archive**
3. Wait for build to complete (5-10 minutes)
4. Organizer window will open automatically

### Option B: Via Flutter Command

```bash
flutter build ipa --release
```

Output: `build/ios/ipa/customer_nzubia_global.ipa`

## Step 5: Upload to App Store Connect

### If using Xcode Archive:

1. In Organizer window, select your archive
2. Click **Distribute App**
3. Select **App Store Connect**
4. Click **Upload**
5. Follow prompts (defaults are usually fine)
6. Wait for upload to complete

### If using Flutter IPA:

Use Transporter app (from Mac App Store):
1. Open **Transporter** app
2. Sign in with Apple ID
3. Drag and drop the `.ipa` file
4. Click **Deliver**

## Step 6: Configure App in App Store Connect

1. Go to [App Store Connect](https://appstoreconnect.apple.com)
2. Select **Nzubia** app
3. Click **+ Version** or **Prepare for Submission**

### Required Information:

**App Information**:
- Name: Nzubia
- Subtitle: (30 chars, e.g., "Global Shipping Made Simple")
- Privacy Policy URL: https://nzubia.com/privacy-policy
- Category: Business or Productivity
- Age Rating: 4+ (or complete questionnaire)

**Version Information**:
- What's New in This Version: (Release notes)
- Promotional Text: (Optional)
- Description: (Full app description)
- Keywords: shipping, logistics, export, import, freight, cargo
- Support URL: https://nzubia.com/support (or contact page)
- Marketing URL: https://nzubia.com (optional)

**Build**:
- Select the build you just uploaded
- Wait for processing (10-30 minutes)

**Screenshots** (Required):
- iPhone 6.7": Minimum 1 screenshot
- iPhone 6.5": Minimum 1 screenshot  
- iPad Pro 12.9": Minimum 1 screenshot (if supporting iPad)

**App Review Information**:
- Contact Name
- Contact Phone
- Contact Email
- Demo Account (if login required):
  - Username: (create test account)
  - Password: (test password)
- Notes: Any special instructions for reviewers

## Step 7: Submit for Review

1. Complete all required fields
2. Click **Add for Review**
3. Click **Submit to App Review**
4. Wait for review (typically 1-7 days)

## Common Issues & Solutions

### Issue: "No signing certificate found"
**Solution**: In Xcode, go to Preferences → Accounts → Manage Certificates → + → Apple Distribution

### Issue: "Provisioning profile doesn't include signing certificate"
**Solution**: Let Xcode manage signing automatically (check the box)

### Issue: "Bundle identifier is already in use"
**Solution**: Verify you're logged into the correct Apple Developer account

### Issue: Build fails with "Command PhaseScriptExecution failed"
**Solution**: Run `flutter clean && flutter pub get` then try again

## Testing Before Submission

### TestFlight (Recommended)

1. After uploading build to App Store Connect
2. Go to **TestFlight** tab
3. Add internal testers (up to 100)
4. They'll receive email to install TestFlight app
5. Test thoroughly before submitting for review

### Local Testing

```bash
# Run on connected iOS device
flutter run --release

# Or build and install via Xcode
# Product → Run (with device selected)
```

## Post-Submission

- Monitor review status in App Store Connect
- Respond to any reviewer questions within 24 hours
- Once approved, app goes live automatically (or you can schedule release)

## Important Notes

- ⚠️ First review typically takes longer (3-7 days)
- ⚠️ Provide clear demo account if app requires login
- ⚠️ Ensure all features work without crashes
- ✅ Privacy Policy URL is already set: https://nzubia.com/privacy-policy
- ✅ App already created in App Store Connect
