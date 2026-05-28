# customer_nzubia_global

## Local backend development

The app can point at the local NestJS backend by overriding the API base URL at launch.

For the macOS/iOS simulator:

```bash
flutter run --dart-define=API_BASE_URL=http://localhost:3000/api/v1
```

For Android emulators, use `http://10.0.2.2:3000/api/v1` instead.

If you need a separate socket host, pass `--dart-define=SOCKET_URL=http://localhost:3000` as well.
