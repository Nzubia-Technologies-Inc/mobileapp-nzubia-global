# CircleCI Mobile Deployment Setup Guide

## Prerequisites

1. ✅ CircleCI account connected to Bitbucket
2. ✅ Android keystore generated (`nzubia-release-key.jks`)
3. ⏳ Google Play Service Account JSON
4. ⏳ App Store Connect API Key

---

## Step 1: Create Google Play Service Account

### In Google Cloud Console:

1. Go to [Google Cloud Console](https://console.cloud.google.com)
2. Create or select project
3. Enable **Google Play Android Developer API**
4. Create Service Account:
   - IAM & Admin → Service Accounts → Create Service Account
   - Name: `fastlane-deployer`
   - Role: **Service Account User**
5. Create JSON key:
   - Click service account → Keys → Add Key → Create New Key → JSON
   - Download the JSON file

### In Google Play Console:

1. Settings → API access
2. Link the Google Cloud project
3. Grant access to the service account
4. Set permissions: **Admin** (or Release Manager)

---

## Step 2: Create App Store Connect API Key

### In App Store Connect:

1. Users and Access → Keys → App Store Connect API
2. Click **+** to generate new key
3. Name: `Fastlane Deployer`
4. Access: **Admin** or **App Manager**
5. Download the `.p8` file
6. Note the **Key ID** and **Issuer ID**

---

## Step 3: Encode Secrets for CircleCI

### Encode Android Keystore:

```bash
cd /Users/felixkwamenaawortwe/Desktop/NZUBIA/GLOBAL-NOW/GIT/customer-nzubia-global/android
base64 -i nzubia-release-key.jks | pbcopy
```

### Encode Google Play Service Account:

```bash
base64 -i /path/to/google-play-service-account.json | pbcopy
```

### Encode App Store Connect API Key:

```bash
base64 -i /path/to/AuthKey_XXXXXXXXXX.p8 | pbcopy
```

---

## Step 4: Add Environment Variables to CircleCI

### In CircleCI Project Settings:

1. Go to your project in CircleCI
2. Project Settings → Environment Variables
3. Add the following variables:

#### Android Variables:
- `ANDROID_KEYSTORE_BASE64` - Base64 encoded keystore (from Step 3)
- `ANDROID_KEYSTORE_PASSWORD` - `Password@2026?`
- `ANDROID_KEY_PASSWORD` - `Password@2026?`
- `ANDROID_KEY_ALIAS` - `nzubia-key`
- `GOOGLE_PLAY_SERVICE_ACCOUNT_JSON` - Content of service account JSON (raw, not base64)

#### iOS Variables:
- `APP_STORE_CONNECT_API_KEY_ID` - Key ID from App Store Connect
- `APP_STORE_CONNECT_ISSUER_ID` - Issuer ID from App Store Connect
- `APP_STORE_CONNECT_API_KEY_CONTENT` - Content of `.p8` file (raw text)

---

## Step 5: Create CircleCI Context (Optional but Recommended)

1. Organization Settings → Contexts
2. Create Context: `mobile-deployment`
3. Add all the environment variables from Step 4 to this context
4. This allows reusing secrets across multiple projects

---

## Step 6: Install Fastlane Locally (for testing)

```bash
# Install Fastlane
brew install fastlane

# Initialize for Android
cd customer-nzubia-global/android
fastlane init

# Initialize for iOS
cd ../ios
fastlane init
```

---

## Step 7: Test Locally Before Pushing

### Test Android Deployment:

```bash
cd customer-nzubia-global/android

# Create service account JSON
echo "$GOOGLE_PLAY_SERVICE_ACCOUNT_JSON" > fastlane/google-play-service-account.json

# Test internal track deployment
fastlane internal
```

### Test iOS Deployment:

```bash
cd customer-nzubia-global/ios

# Create .env file
cat > fastlane/.env << EOF
APP_STORE_CONNECT_API_KEY_ID=XXXXXXXXXX
APP_STORE_CONNECT_ISSUER_ID=xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
APP_STORE_CONNECT_API_KEY_CONTENT=-----BEGIN PRIVATE KEY-----
...key content...
-----END PRIVATE KEY-----
EOF

# Test TestFlight deployment
fastlane beta
```

---

## Step 8: Push to Bitbucket

Once everything is configured:

```bash
cd /Users/felixkwamenaawortwe/Desktop/NZUBIA/GLOBAL-NOW/GIT/customer-nzubia-global

git add .circleci android/fastlane ios/fastlane
git commit -m "Add CircleCI mobile deployment automation"
git push origin main
```

---

## How It Works

### Automatic Deployment:
- Push to `main` or `production` branch → Automatic deployment to stores

### Manual Deployment:
1. Go to CircleCI dashboard
2. Click "Trigger Pipeline"
3. Select workflow: `manual-deploy`
4. Approve the deployment you want (Android or iOS)

---

## Deployment Tracks

### Android:
- `internal` - Internal testing (default)
- `beta` - Beta testing
- `production` - Production release

### iOS:
- `beta` - TestFlight
- `release` - App Store submission

---

## Monitoring

### In CircleCI:
- View build logs
- Download artifacts (APK/AAB/IPA)
- Check deployment status

### In Play Console:
- Check upload status
- View internal testing releases

### In App Store Connect:
- Check TestFlight builds
- Monitor processing status

---

## Troubleshooting

### Build Fails:
- Check CircleCI logs
- Verify all environment variables are set
- Ensure service accounts have correct permissions

### Upload Fails:
- Verify service account JSON is valid
- Check API key permissions
- Ensure version code/build number is incremented

---

## Next Steps

1. ✅ Add environment variables to CircleCI
2. ✅ Test local deployment with Fastlane
3. ✅ Push to Bitbucket
4. ✅ Monitor first automated deployment
5. ✅ Adjust tracks/workflows as needed
