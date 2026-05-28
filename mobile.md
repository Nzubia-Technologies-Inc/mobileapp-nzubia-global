Customer Mobile Application Specification

Target Platform: iOS & Android
Framework: Flutter (Dart)
User Role: Exporter (Customer)

1. Project Overview

The mobile app is the primary interface for Exporters to book shipments, compare quotes, and track cargo. It must be performant, intuitive, and handle unstable network conditions gracefully.

2. Technical Stack & Architecture

Framework: Flutter (Latest Stable)

State Management: Bloc (Business Logic Component) or Riverpod (Recommended for enterprise scalability).

Navigation: go_router (Deep linking support).

Networking: Dio (Interceptors for JWT refresh tokens).

Local Storage: Hive or SharedPreferences (For caching user session).

Maps: Maps_flutter.

Payments: flutter_stripe.

Real-Time Communication: socket_io_client (to connect to NestJS Gateway).

3. Folder Structure (Feature-First)

lib/
├── core/               # Shared logic (Network, Errors, Utils)
├── config/             # Routes, Themes, Env variables
├── features/
│   ├── auth/           # Login, Register, OTP
│   ├── shipment/       # Create Request, View Quotes
│   ├── tracking/       # Map views, Timelines
│   ├── messaging/      # New: Integrated Chat Module
│   └── profile/        # KYC, Settings
└── main.dart



4. Detailed Screen Flows

4.1 Onboarding & Authentication (features/auth)

Splash Screen: Animated Logo + Check Auth State.

Login/Register:

Input: Email/Phone.

Logic: If new user -> Navigate to RoleSelection (Hardcoded to "Exporter" for this app).

OTP Screen: Auto-fill SMS code.

Profile Setup:

Form: Full Name, Company Name (Optional).

Logic: If "Business" toggle is ON -> Show "EIN/Tax ID" field.

4.2 Shipment Creation Wizard (features/shipment)

Screen 1: Origin & Destination

Widget: GoogleMap preview + TypeAheadField for address.

Logic: Validate that Origin is within a supported region.

Screen 2: Cargo Details

Widget: Custom Grid for Categories (Electronics, Furniture).

Camera Integration:

Action: ImagePicker().pickImage(source: ImageSource.camera).

Display: Thumbnail list with "X" to remove.

Inputs: Length, Width, Height (CM/IN toggle), Weight.

Screen 3: Service & Review

Widget: RadioListTile for Express vs. Economy.

Action: POST payload to /api/shipments/create.

4.3 Marketplace (Quotes)

Screen: Quote List

Trigger: Push Notification "You have 3 new quotes".

UI: ListView of Quote Cards.

Card Content: Agent Name, Rating (StarIcon), Price (Bold), ETA.

Action: "View Details" -> Opens BottomSheet.

Checkout:

Button: "Accept & Pay".

Integration: StripePaymentSheet.

4.4 Tracking Dashboard

UI: Vertical Stepper Widget (easy_stepper).

States: Pending -> Picked Up -> In Transit -> Customs -> Delivered.

Map: Markers for Origin, Destination, and Current Location (from Backend).

4.5 Integrated Communication Hub (features/messaging)

Entry Point: A persistent "Messages" tab and a direct button on the Shipment Tracking screen.

Conversation List: Filter by Shipment ID. Only show chats for Active or Recently Completed shipments.

Chat Interface: Standard message bubble layout.

Capabilities: Text input, Document/Photo sharing (links to S3 assets).

Connection Logic: Uses socket_io_client to connect to the NestJS WebSocket Gateway.

Emit Event: send_message (Payload: shipmentId, senderId, content, type).

Listen Event: new_message (Payload: Full message object).

5. Key Flutter Packages

| Package | Purpose |
| flutter_bloc | State Management |
| dio | HTTP Client |
| get_it | Dependency Injection |
| image_picker | Camera/Gallery access |
| Maps_flutter | Maps |
| flutter_secure_storage | Storing JWT Tokens secure |
| socket_io_client | Real-Time Messaging |
| flutter_chat_ui | Optional: Pre-built chat UI components |

6. Developer Notes

Global Error Handling: Implement a global error interceptor in Dio to handle 401 (Unauthorized) by triggering a logout or token refresh.

Form Validation: Use flutter_form_builder for complex forms (Shipment Wizard).