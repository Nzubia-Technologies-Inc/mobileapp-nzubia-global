# Mobile App Context

## New Learnings & Changes (App Store Compliance Polish)
- **Compliance (Keyword Sanitization)**: Updated `app_en.arb` to replace sensitive keywords that might trigger rejections during review.
    - "Company" -> "Organization" / "Legal Name"
    - "Business" -> "Provider" / "Service"
    - "Years in Business" -> "Years of Experience"
    - "License" -> "Professional ID"
    - "Agent Verification" -> "Account Verification"
- **Compliance (iOS Permissions)**: Enhanced `Info.plist` usage descriptions for Camera, Location, and Photo Library to be more specific and clear, reducing the risk of rejection for vague descriptions.
- **Compliance (Cleanup)**: Confirmed no "Beta", "Demo", or "Test" labels are visible in the production UI strings.
- **Compliance (Biometrics & Business Auth)**: Completed the removal of biometric authentication and business-specific registration flows as per previous tasks.

## New Learnings & Changes (Biometric Authentication Removal)
- **Feature (Biometrics Removal)**: Commented out all biometric login features (FaceID/Fingerprint) from the mobile app. 
- **Implementation**:
    - **Login Screen**: Commented out the `_BiometricButton` and its logic.
    - **Profile Screen**: Commented out the "Biometric Login" toggle in the Security Settings dialog.
    - **Service Layer**: Forced `BiometricService.isBiometricAvailable` to always return `false`.
    - **Repository Layer**: Forced `AuthRepository.isBiometricsEnabled` to always return `false`.
    - **BLoC Layer**: Commented out the `LoginWithBiometrics` event handler and logic in `LoginBloc`.
- **Goal**: Comply with user request to remove biometric authentication features while ensuring no impact on the rest of the application.

## New Learnings & Changes (Apple Review Guideline 3.1.1 Compliance)
- **Feature (Business Registration Removal)**: Commented out all UI elements that allowed users to register as a business or provide business-related details (Company Name, Tax ID, Business License, etc.). This is to comply with Apple's App Review Guideline 3.1.1, which prohibits business account registration if it's considered access to external mechanisms for purchases.
- **Implementation**:
    - **Register Screen**: Commented out the "Register as a Business Exporter" toggle and Company Name field.
    - **Agent Onboarding**: Removed the "Business" option from the Agent Type selector (forced to "INDIVIDUAL") and commented out business-specific fields (Company Name, Registration Number, Tax ID, License Number, and Years in Business).
    - **Profile Setup**: Commented out the business account toggle and related fields.
    - **Profile View/Edit**: Hidden all business-related information (Company Name, Agent Type, Years in Business, Fleet Size, License Number) from the public profile and edit screens.
    - **Quote List (Shipment Wizard)**: Updated the UI to prioritize the agent's personal name over the company name and hide company name display.
    - **Dashboard**: Updated the display name logic to avoid showing the company name in the header.
- **Goal**: Facilitate app approval by strictly limiting the app to individual account registrations on the mobile platform.

## New Learnings & Changes (Offline Error UI)
- **Feature**: Implemented a global `OfflineErrorWidget` to gracefully handle network errors (`DioException` connection timeouts/errors).
- **UI Enhancements**:
    - Replaced raw `Text('Error: ...')` widgets across all major screens (`HomeScreen`, `AgentDashboardScreen`, `DashboardScreen`, `ProfileScreen`, `ChatListScreen`, `ChatRoomScreen`, `AgentOpportunitiesScreen`, `PaymentHistoryScreen`).
    - The new widget displays a `signal_wifi_off` icon, a user-friendly "No Internet Connection" message, and a "Retry" button that re-triggers the respective BLoC load events.

## New Learnings & Changes (App Rename)
- **Rename**: Changed the mobile app display name to "Nzubia" in `AndroidManifest.xml`, `Info.plist`, `web/index.html`, and `main.dart`.

## New Learnings & Changes (Agent Sign Up & UI)
- **Agent Sign Up Fix**: Updated `AuthRepositoryImpl.updateProfile` to send `fullName` as a single string instead of splitting it into `first_name` and `last_name`, aligning with the backend `UpdateUserDto`.
- **UI Improvement**: Added password visibility toggle (Eye icon) to the **Sign Up** screen (`RegisterScreen.dart`), reusing the logic from the Login screen.

## New Learnings & Changes (Agent Onboarding)
- **Feature**: Implemented dedicated `AgentOnboardingScreen` to collect KYC data (ID, Business License, Service Regions).
- **Backend Fix**: Updated `UsersService` to correctly map `fullName` from `UpdateUserDto` to `full_name` entity column.
- **Redirection**: Agents are now redirected to `/agent-onboarding` if their KYC status is `NOT_SUBMITTED`, or `/agent-dashboard` if `PENDING/VERIFIED`.
- **Dashboard**: Added a visible banner in `AgentDashboard` for users with `PENDING` or `REJECTED` KYC status.
- **UI Enhancements**:
    - **Google Places**: Integrated `google_places_flutter` for "Business Address" and "Service Regions" search.
    - **Service Regions**: Implemented Multi-Select with Chips using Location Search predictions.
    - **Form Inputs**: Replaced "Years in Business" text input with a structured Dropdown.
    - **Bug Fix**: Resolved `ProviderNotFoundException` in `_showMultiSelect` dialog.
    - **UX Fix**: Resolved `GooglePlaceAutoCompleteTextField` focus loss by persisting controllers.
- **Security & Logic**:
    - **Verification Gate**: Strictly gated Agent Dashboard; unverified agents can only see status banner.
    - **Redirection**: Enforced redirection to Onboarding for agents with `NOT_SUBMITTED` KYC.
    - **Profile**: Added "Delete Account" flow (Immediate for Customers, Request-based for Agents).

## Client Feedback Updates (Mobile Fixes)
- **Shipment Wizard**: Made Weight and Dimensions optional. Defaulted weight to "lbs".
- **Bug Fix**: Enhanced Camera `_pickImage` logic to prevent repeated error messages (crash safety).
- **Profile**: Activated "Help & Support" (Bottom Sheet) and "Security" (Dialog) options.

## Admin & Operations Fixes
- **Backend**: Added `PATCH /shipments/:id/assign-agent` endpoint for admins to manually assign agents.
- **Admin Shipment Detail**: Wired "Assign Agent Manually" button with prompt for agent ID.
- **Admin Users Page**: Wired "Add New User" button with prompts for email, role, and password.

## Insurance & Notification Features
- **Insurance Switch**: Added `insurance_type` enum ('PRIVATE' | 'NZUBIA') to `Quote` entity. Admin can toggle insurance type on Quote Detail page.
- **Admin Notification**: `AgentMatchingService` now notifies all admins when a shipment has no matching agents, prompting manual assignment.

## Agent Feature Parity (Admin Web vs Mobile)
- **Add Order Removed**: Commented out "Add Order" button in Admin Web (`agent/orders/page.tsx`) to match Mobile.
- **Mobile Dismiss**: Added "Dismiss" button to Mobile `ShipmentDetailScreen` (local storage logic equivalent) for Marketplace shipments.
- **Mobile Finance**: Enhanced `AgentFinanceScreen` to match Admin features:
    - Added Earnings Breakdown: Total, Pending, Available, Paid Out.
    - Added "Request Payout" button (activates when available balance >= $100).

## Service Regions & Zoning Updates
- **Mobile**: Updated `AgentOnboardingScreen` to explicitly label Service Region search for "States / Regions".
- **Backend Admin**: Added `PATCH /users/:id/agent-profile` endpoint to allow Admins to update agent profile fields (specifically service regions).
- **Admin UI**:
    - Implemented `RegionEditModal` using Google Maps JavaScript API (dynamic loading) for Autocomplete.
    - Wired "Edit Service Regions" button in `UserDetailPage` to allow Admins to easily add/remove regions using Google Places search.


    - Wired "Edit Service Regions" button in `UserDetailPage` to allow Admins to easily add/remove regions using Google Places search.

## Mobile Fixes & Features (Jan 24, 2026)
- **Agent Onboarding**:
    - **Years in Business**: Changed from Dropdown to Text Input (Number) to fix "must be a number" error.
    - **Fleet Size**: Confirmed Text Input (Number).
    - **Service Regions**: Fixed "typing stops" issue by optimizing `_MultiSelectFields` with `buildWhen` to prevent unnecessary rebuilds/focus loss.
- **Customer Registration**:
    - **Business Support**: Added logic to `RegisterBloc` and `AuthRepository` to support `businessName` during sign up.
    - **UI**: Added "Register as a Business Exporter?" toggle and "Company Name" field to `RegisterScreen` (Customer only).
- **Bug Fix**: Fixed `AgentFinanceScreen` compilation error (missing `_error`).

## Project Architecture
- **Framework:** Flutter 3.x.
- **State Management:** `flutter_bloc` (BLoC Pattern), `get_it` (Dependency Injection).
- **Navigation:** `go_router`.
- **Local Storage:** `hive`.
- **Networking:** `dio` (HTTP), `socket_io_client` (Real-time).

## Key Features & UI
- **Shipment Details (`ShipmentDetailScreen`):**
    - **Unified View:** Used by both Customers and Agents (via `_isAgentRole` check).
    - **Customer Features:** Tracking Timeline, Cargo Manifest, Payment History, Chat with Agent/Recipient.
    - **Agent Features:** "Update Status", "Submit Quote".
- **Quotes:** Agents can bid; Customers can Accept/Pay (via Stripe WebView/Deep Link).
- **Chat:** Real-time chat (likely Socket.IO backed) linked to User IDs.

## Platform Specifics
- **Deep Linking:** configured for `nzubia://` scheme (e.g., Payment Success/Cancel redirects).
- **Payments:** Uses `url_launcher` to open Stripe Checkout Sessions (Web) or uses `flutter_stripe` (native intent - code shows `createCheckoutSession` returning URL).

## Identified Gaps
- **Agent Experience:**
    - Missing Financial Dashboard (Net Payouts, Escrow status).
    - Missing Document Upload (BOL/POD) capability found in Web Agent view.
- **Data Visibility:**
    - "Estimated Delivery Date" from Quotes is visible, but live "ETA" on active shipment might be missing if not manually updated in Description.

## Theme Update (Light Mode)
- **Feature**: Implemented a new Light Theme using brand colors (`#22878D` Green, `#AC663E` Brown, `#cccccc` Light Gray).
- **Configuration**: Set Light Mode as the default theme in `main.dart` (`ThemeMode.light`).
- **Refactor**: Renamed the original "Neon" theme to `darkTheme` in `app_theme.dart` to preserve it as a dark mode option.

## Theme Refinement & Toggle
- **Visibility Fix**: Explicitly set text colors (`Colors.black87`, `_brandGray`) in `lightTheme` ensuring readability on white backgrounds.
- **Feature**: Added a "Dark Mode" toggle switch in `ProfileScreen`.
- **Architecture**: Implemented `ThemeCubit` for persistent theme state management using Hive.
- **Integration**: Updated `main.dart` with `MultiBlocProvider` to support dynamic theming.

## Admin & Agent Dashboard Fixes
- **Finance Page**: Corrected data mapping for `orderId` (from `shipment.tracking_number`) and `user` (from nested `user` object) to ensure transactions appear in the table.
- **Agent Marketplace**: Updated shipment query to include `PENDING_AGENTS` and `BIDDING_ACTIVE` statuses (instead of invalid `PENDING`) so new shipments appear. Wired up Search filter.
- **Agent Orders**: Fixed client name and date mapping to use correct backend properties (`customer.first_name/last_name`, `created_at`).

## Finance, Quotes & Notifications Fixes (March 2026)
- **Quote Commission Logic**: Refactored `QuotesService` to *add* platform fees on top of an agent's base quote instead of deducting it. Updated the mobile app `QuoteSubmissionScreen` to maintain clarity, showing agents exactly what they earn while identifying the platform cut separately.
- **Admin Escrow Metrics**: Fixed missing customer payments in the dashboard by updating `ShipmentsService.bookShipment` to set the transaction status specifically to `HELD_IN_ESCROW` directly upon successful Stripe payment, mirroring the frontend's strict filter rules. Added `HELD_IN_ESCROW` to the `TransactionStatus` enum.
- **Admin Finance UI**: Refactored the `FinancePage` tables to cleanly separate "Customer Payments" from "Agent Payouts". Built a detailed transaction view at `/admin/finance/[id]` linking seamlessly into Stripe dashboard references.
- **iOS Push Notifications**: Updated the `OneSignalService.sendNotification` payload in the backend to explicitly include `ios_badgeType: 'Increase'` and `ios_badgeCount: 1`, ensuring APNs correctly routes and displays alerts to iOS devices.

## Pickup PIN Verification (March 2026)
- **Strict Progression**: Agents are strictly prevented from skipping the `PICKED_UP` state from `BOOKED` directly to `IN_TRANSIT`. They must obtain the 6-digit PIN and pass it to the API.
- **Backend Flow**: `ShipmentsService.bookShipment` generates a 6-digit PIN (`Math.floor(100000 + Math.random() * 900000)`), saves it to `pickup_pin` on the `Shipment` entity, and emails it to the customer. `update` and `addEvent` endpoints enforce validation of `pickup_pin` when transitioning to `PICKED_UP`.
- **Security**: The `pickup_pin` is scrubbed from the `findFullDetails` response payload for Agents until they manually verify it, preventing them from bypassing the validation.
- **Mobile UI**: Customers see a highlighted `Pickup PIN: XXXXXX` card on their `ShipmentDetailScreen` for `BOOKED` shipments. Agents are prompted with an `AlertDialog` forcing them to input the 6-digit string when attempting to select `Picked Up` in the `UpdateStatusDialog`.

## Bug Fixes & Improvements (March 2026)
- **Stripe Payment Sync Issue**: Resolved an issue where Stripe payments remained "pending" in the app after completion. Fixed by ensuring `syncPaymentStatus` in `payments.service.ts` fetches and returns the full payment entity, including shipment relations, so the mobile app has the necessary data to update local state to `BOOKED`.
- **Mobile Chat Duplication**: Prevented sent messages from duplicating momentarily in the UI. Modified `chat_bloc.dart` to remove the optimistic UI update, relying entirely on the WebSocket `MessageReceived` event to display messages once verified by the backend.
- **Admin Draggable Chat Drawer**: Enhanced the Admin web platform's chat drawer by making it a floating, draggable window. Installed `react-draggable` and wrapped the main container, allowing it to be repositioned via its header.
- **Admin Notifications**: Activated the previously non-functional bell icon in the Admin header. Implemented a Shadcn `<Popover>` with a `NotificationsList` component that displays an unread count badge, fetches recent alerts from the `/notifications` endpoint, and provides a "Mark all as read" function.
## Bug Fixes & Improvements (March 2026 Mobile)
- **Mobile Payment Sync**: Added explicit proactive sync feature to `ShipmentDetailScreen._fetchShipmentDetails`. The logic now iterates over the shipment's payments and fires an ad-hoc sync request to `/payments/sync` if the payment is stuck as "PENDING". It then forcefully refetches the shipment to get the latest status, avoiding the delay associated with waiting for a Stripe webhook and ensuring the UI shows the "BOOKED" state immediately.
- **Data Layer Architecture**: Added `syncPayment(paymentId)` to `PaymentRemoteDatasource` and `PaymentRepository` in the mobile app side to integrate properly with the backend `PaymentsService.syncPaymentStatus`.
## UI & Component Refactoring (March 2026)
- **Reusable Component**: Created `UpdateStatusButton` in `core/widgets/` to unify the "Update Status" action across the app.
- **Styling**: Applied the "shipping card" style (outlined with translucent background) to the "Update Status" button on the `ShipmentDetailScreen`, ensuring visual consistency between the dashboard cards and the detail view.
- **Maintenance**: Replaced inline button implementations in `AgentDashboardScreen` and `ShipmentDetailScreen` with the new reusable component.
- **Status Sync**: Synchronized the "Update Status" logic by moving the full status flow (including `QUOTATION_ACCEPTED` and `PAYMENT_PENDING`) into `AgentStatusUpdateService`. This ensures agents see the same comprehensive list of statuses on both the dashboard and the shipment details screen.
- **UI Consistency**: Updated the "Update Status" dialog to use localized labels ("Description (Optional)", "Select New Status:") and proper-case status labels (e.g., "Ready for Pickup" instead of uppercase keys), ensuring the details screen matches the high-quality dashboard experience.

## Error Handling & UI Improvements (March 2026)
- **Network Resilience**: Implemented robust error handling in `ShipmentDetailScreen` for status updates.
    - **No Internet UI**: Added a user-friendly dialog with a `signal_wifi_off` icon and a "Reload" button when network connectivity is lost (handling `DioException` timeouts and socket errors).
    - **Server Error Handling**: Added specific handling for 500 Internal Server Errors with a retry mechanism.
- **Info Request UX (March 2026)**:
    - Updated backend error message for unauthorized "Request Information" attempts to be more descriptive: *"You must be a bidder, assigned agent, or admin to request more information on this shipment."*
    - Refactored `ShipmentDetailScreen` and `CargoItemDetailScreen` to display backend error messages more cleanly by stripping "Exception:" and "Error:" prefixes.
- **Dashboard UX (March 2026)**:
    - Added a dedicated "Refresh" (reload) button to both the **Agent Dashboard** and **Customer Dashboard**.
    - **Full Data Sync**: Enhanced the refresh button logic to perform a complete sync, including the user's profile and KYC status. This was implemented via a new `UserRefreshRequested` event in `AuthBloc`, allowing status changes (e.g., transition from `PENDING` to `VERIFIED`) to take effect immediately without requiring a logout.
    - This provides a visible alternative to the pull-to-refresh gesture, ensuring users can easily sync their latest data (shipments, stats, and orders).
    - Added a brief "Refreshing..." SnackBar feedback when the button is pressed.
- **Agent Signup & Onboarding Fixes (March 2026)**:
    - Resolved critical issue where agents were being registered as "CUSTOMER" by default.
    - Fixed `RegisterScreen` to correctly dispatch `RegisterRoleChanged` events to the BLoC upon role selection.
    - Synchronized `RegisterBloc` with the initial UI state ('CUSTOMER') in `initState` to prevent state mismatch.
    - Updated `AuthRepositoryImpl.register` to correctly reflect the selected role in all registration paths (including OTP-pending fallback).
    - Confirmed that `ProfileSetupScreen` correctly redirects new Agents to the `/agent-onboarding` flow after their profile is completed.
    - **Bug Fix**: Fixed a "closure" text display bug in the Agent Onboarding file upload buttons by correctly calling the `fileSelected(name)` translation method instead of treating it as a getter.
    - **Insurance UI Fix**: Resolved a bug in `QuoteSubmissionScreen` where the "Insurance Name" field was visible when "Nzubia Insurance" was selected. The field is now strictly conditional on "Agent's Own Insurance" (PRIVATE) selection.
    - **Insurance Defaults**: Changed the default insurance type to `NZUBIA` and implemented proactive pre-filling of insurance fees and names once platform settings are loaded from the backend.
- **Quote Visibility & Breakdown (March 2026)**:
    - Enhanced quote cards in `ShipmentDetailScreen` and `QuoteListScreen` to display insurance details (Provider type and Fee) for all users.
    - **Role-Based Fee Masking**: 
        - **Agents**: See a full breakdown including their "Base Quote" and the "Platform Fee" they are contributing to Nzubia.
        - **Customers**: Platform fees are hidden and automatically bundled into a single "Shipping Cost" line item to keep the interface simple and focused on the total price.
    - **Offer Details UI & Contrast**: 
        - Significantly improved the readability of the "View Offer" (Quote Details) modal by switching to high-contrast dark text colors (`Colors.black`, `Colors.black87`).
        - Ensured the "Insurance" line item is always visible in the breakdown when insurance is active, clearly displaying both the provider name/type and the fee amount.
        - Refined the background colors of the breakdown section for better visual separation.
    - Added a consistent breakdown UI across both screens for a more professional and transparent financial overview.
- **Agent Verification & Dashboard (March 2026)**:
    - Overhauled the agent verification experience to support re-submissions and clearer status feedback.
    - Updated `UserEntity` and `UserModel` to include all nested `AgentProfile` fields (address, agent type, license number, etc.).
    - **Refined Rejection Flow**: 
        - Added `kyc_notes` to the backend `User` entity to store specific admin feedback.
        - The **KYC Status Banner** now displays these custom admin notes when the status is `INFO_REQUESTED`, giving agents clear instructions on what to fix.
        - Added a secondary **Admin Feedback Banner** inside the `AgentOnboardingScreen` that remains visible while the agent is correcting thier data, ensuring they always have the instructions handy.
        - For `REJECTED` status, the "Fix Now" button is hidden, making the rejection final unless an admin manually resets the status.
        - **Robust Pre-filling**: Enhanced the "Fix Now" flow by ensuring all onboarding fields (including License Number, Service Radius, and existing document URLs) are immediately pre-populated in the form. This was achieved by updating `AgentOnboardingBloc` to accept an `initialUser` and utilizing a new `initial(user)` factory in `AgentOnboardingState` for synchronized state initialization.
        - Improved banner visual style with better icons and typography for high-impact status messaging.
        - Simplified the dashboard UI by removing redundant and conflicting KYC banners, ensuring only one dynamic banner is displayed in the header.
        - Restricted access to **Chat** and **Finance** tabs in the bottom navigation for all unverified agents to ensure platform security.
    - **Compilation & Architecture Fixes**:
        - Resolved several "undefined type" and "undefined method" errors in `AgentDashboardScreen` and `AgentOnboardingScreen` caused by missing imports and misplaced helper methods.
        - Synchronized `UserModel` constructor with the expanded `UserEntity` to prevent named parameter mismatch errors during builds.
        - **Bug Fix**: Resolved `NoSuchMethodError` for `taxId` in `AgentOnboardingState.initial` by adding the missing `taxId` field to both `UserEntity` and `UserModel`.
    - Implemented form pre-filling in `AgentOnboardingScreen` using a new `InitializeOnboarding` event in the BLoC, allowing agents to see and correct their previous data.
- **Refactoring**: Split `_updateStatus` logic into `_performUpdateStatus` to allow seamless retries of the API call without disrupting navigation flow.
- **Notification Styling**: Updated SnackBar styling globally via `AppTheme`. Error notifications (red background) now explicitly use bold white text for maximum readability, resolving the issue where some notifications showed black text on red.

## Agent Onboarding & Banner Improvements (March 2026)
- **Status Refresh Fix**: Added an automatic `UserRefreshRequested` dispatch to `AgentOnboardingView` upon successful submission. This ensures the `AuthBloc` state is updated immediately, preventing the "Onboarding Required" banner from persisting after the agent has submitted their documents.
- **Banner Logic Refinement**: 
    - **Pending State**: Updated the `AgentDashboardScreen` KYC banner to show "Onboarding Submitted" with the subtitle "Waiting for admin to verify your account" when the status is `PENDING`.
    - **Info Requested State**: Reconfigured the banner to display "Onboarding Required" with a call to action to "Fix Now" when the status is `INFO_REQUESTED`, ensuring agents know they need to provide additional details.
    - **Consistency**: Maintained "Onboarding Required" for `NOT_SUBMITTED` users to guide new agents through the initial verification process.
- **Pre-filling Verification**: Confirmed that the "Fix Now" action correctly navigates to the `AgentOnboardingScreen` with all previously submitted data (including remote document URLs) pre-populated, allowing for seamless updates.
--- End of Context from: customer-nzubia-global/GEMINI.md ---


## Bug Fixes - iOS Build (March 2026)
- **iOS Build Cycle Error**: Fixed `Cycle inside Runner` error during iOS build by reordering the build phases in `ios/Runner.xcodeproj/project.pbxproj`. Moved `Embed App Extensions` above `[CP] Embed Pods Frameworks` and `[CP] Copy Pods Resources` phases to ensure `OneSignalNotificationServiceExtension` doesn't create a dependency cycle.
