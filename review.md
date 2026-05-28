# Customer Mobile App Review (Flutter)

**Date:** January 10, 2026
**Reviewer:** Gemini CLI Agent

## 1. Executive Summary
The Mobile App is currently built as a **Customer-Centric** interface. It handles Shipment Creation, Quote Viewing, and Tracking well. However, it lacks the "Agent Mode" implied by the requirements, and the Payment flow has a critical disconnection in the redirect loop.

## 2. Critical Findings

### 🚨 1. Payment Redirect Failure
**Severity:** Critical (Blocker)
- **Issue:** "Payment script is not redirected back to the app."
- **Root Cause:** Deep Linking is not fully configured for the Payment Gateway (Stripe).
    - `checkout_screen.dart` expects internal state change.
    - If Stripe requires a 3DS challenge (WebView redirect), the app needs a custom scheme (e.g., `nzubia://payment-callback`) registered in `AndroidManifest.xml` / `Info.plist`.
- **Fix:** Register custom scheme and handle `app_links` or `uni_links` to capture the callback and trigger the Bloc event.

### 🚨 2. Missing Agent Functionality
**Severity:** High (Scope Gap)
- **Issue:** "Separation of agent and user system".
- **Observation:** The app currently has no Login/Register flow for Agents. It assumes all users are Customers.
- **Impact:** Agents cannot use the mobile app to chat or manage orders on the go, contradicting the requirement for "Agent chatting with users".
- **Recommendation:**
    - **Option A (Quick):** Keep Mobile for Customers only. Agents use Mobile Web (Responsive).
    - **Option B (Robust):** Implement Multi-Role Auth in Mobile. Add a "Switch to Agent Mode" feature or distinct `AgentHomeScreen`.

### 🚨 3. Chat System Separation
**Severity:** Medium
- **Issue:** Chat needs clear context (Shipment-based vs Support).
- **Observation:** `ChatRoomScreen` is generic.
- **Fix:** Pass `shipmentId` context to the Chat. Ensure the backend creates a unique "Room" per Shipment per Agent-Customer pair.

### ⚠️ 4. Quote Visibility & Details
**Severity:** Medium
- **Issue:** "Agent can see all quotes" (Applied to Mobile if Agents used it).
- **Observation:** For Customers, seeing all quotes is correct (`QuoteListScreen`).
- **Missing Info:** The Quote Card needs to show more Agent details: "Verified Badge", "Years in Business", "Insurance Coverage" to build trust.

## 3. Code Quality
- **Architecture:** Clean BLoC pattern usage. `features/` directory structure is scalable.
- **Styling:** Good use of `ThemeExtension` for custom branding.
- **Dependencies:** `socket_io_client`, `onesignal_flutter`, `flutter_bloc` are appropriate choices.

## 4. Recommendations
1.  **Implement Deep Linking:** Configure `flutter_deep_linking` or native manifest files to handle payment redirects.
2.  **Add Agent Role:** Refactor `AuthBloc` to store/check `user.role`. Create `AgentBottomNav` and `AgentDashboard` screens.
3.  **Enhance Quote UI:** Add "View Profile" for Agents in the Quote List.

## 5. Deep Dive Code Audit (New Findings)
**Date:** January 10, 2026

### 🚨 Critical Role Issue
- **Hardcoded Customer Role:** `AuthRepositoryImpl.register` hardcodes `'role': 'CUSTOMER'`.
    - **Impact:** Agents cannot sign up via the mobile app at all. They are forced to use the Web Portal.
    - **Fix:** Add a role selection toggle in the Registration Screen and pass it to the API.

### ⚠️ UX/Logic Gaps
- **Contact Lookup:** `ShipmentDetailScreen` relies on `AuthRepository.findUserByEmail` for chat.
    - Code Comment: `// Fallback or TODO for phone lookup`.
    - Issue: If a recipient only has a phone number (common in logistics), the chat feature fails.
- **Unread Badges:** The `ChatRoomScreen` and list do not show unread counts (backend issue + frontend not consuming it).

### 🛠 Tech Debt
- **Defensive Parsing:** Frequent use of `(value as num?)?.toDouble() ?? 0.0` suggests the backend API types are inconsistent (sometimes sending strings, sometimes ints).
- **Navigation:** Deep linking handling in `main.dart` is rudimentary and manual. Needs a robust Router (GoRouter) configuration for incoming intents.
