# NZUBIA Backend API Documentation

**Base URL**: `http://localhost:3000/api/v1`
**WebSocket URL**: `ws://localhost:3000`

---

## 1. Authentication (`/auth`)

| Method | Endpoint | Secured | Description | Body / Notes |
| :--- | :--- | :--- | :--- | :--- |
| `POST` | `/auth/register` | No | Register new user | `{ email, password, first_name, last_name, business_type, business_name?, phone? }` |
| `POST` | `/auth/verify-otp` | No | Verify account | `{ email, otp }` |
| `POST` | `/auth/resend-otp` | No | Resend OTP | `{ email }` |
| `POST` | `/auth/login` | No | Login (Get JWT) | `{ email, password }` |
| `POST` | `/auth/forgot-password` | No | Request Reset Code | `{ email }` |
| `POST` | `/auth/reset-password` | No | Reset Password | `{ email, otp, newPassword }` |
| `POST` | `/auth/change-password` | **Yes** | Change Password | `{ oldPassword, newPassword }` |
| `GET` | `/auth/google` | No | Google Sign-In | Redirects to Google |
| `GET` | `/auth/google/callback` | No | Google Callback | - |

---

## 1.1 Notifications (`/notifications`)

| Method | Endpoint | Secured | Description | Body / Notes |
| :--- | :--- | :--- | :--- | :--- |
| `POST` | `/notifications/sms` | **Yes** | Send Generic SMS | `{ to, message }` |
| `POST` | `/notifications/email` | **Yes** | Send Generic Email | `{ to, subject, text, html? }` |

---

## 2. Users & Agents (`/users`)

| Method | Endpoint | Secured | Description | Body / Notes |
| :--- | :--- | :--- | :--- | :--- |
| `POST` | `/users` | No | Create User | `{ email, password... }` |
| `GET` | `/users` | No | List Users | - |
| `GET` | `/users/:id` | No | Get User by ID | - |
| `PATCH` | `/users/:id` | No | Update User | `{ phone, address... }` |
| `POST` | `/users/agent/onboarding` | **Yes** | Submit Agent KYC | See **SubmitOnboardingDto** below |
| `GET` | `/users/admin/pending-agents` | **Admin** | List pending KYC | - |
| `PATCH` | `/users/admin/verify/:id` | **Admin** | Verify Agent | `{ status: 'VERIFIED' \| 'REJECTED' }` |

### DTOs

**SubmitOnboardingDto**
```json
{
  "company_name": "string",
  "business_reg_number": "string (optional)",
  "tax_id": "string (optional)",
  "address": "string",
  "license_number": "string",
  "insurance_certificate_url": "string (URL from /files/upload)",
  "years_in_business": "number (optional)",
  "fleet_size": "number (optional)",
  "cargo_specializations": ["string"] (optional),
  "service_regions": ["string"] (optional),
  "profile_picture_url": "string (optional)"
}
```

> **Note:**
> - Users have `first_name` and `last_name` fields.
> - Users have a `profile_picture_url` field.
> - Use `/files/upload` to upload an image, then pass the returned URL when creating or updating a user.

### User Profile (`/users/profile`)

| Method | Endpoint | Secured | Description | Body / Notes |
| :--- | :--- | :--- | :--- | :--- |
| `GET` | `/users/profile` | **Yes** | Get Current User | - |
| `PATCH` | `/users/profile` | **Yes** | Update Current User | `{ first_name, last_name, profile_picture_url... }` |

---

## 3. Platform Settings (`/platform-settings`)

| Method | Endpoint | Secured | Description | Body / Notes |
| :--- | :--- | :--- | :--- | :--- |
| `GET` | `/platform-settings` | **Yes** | List all settings | - |
| `GET` | `/platform-settings/:key` | **Yes** | Get setting by key | - |
| `PATCH` | `/platform-settings/:key` | **Admin** | Update setting | `{ value }` |

---

## 4. Shipments (`/shipments`)

| Method | Endpoint | Secured | Description | Body / Notes |
| :--- | :--- | :--- | :--- | :--- |
| `POST` | `/shipments` | **Yes** | Create Shipment | See **CreateShipmentDto** below |
| `GET` | `/shipments` | **Yes** | List Shipments | Query: `?status=...` |
| `GET` | `/shipments/:id` | **Yes** | Get Shipment | - |
| `PATCH` | `/shipments/:id` | **Yes** | Update Shipment | `{ status }` |
| `GET` | `/shipments/track/:id` | **No** | Public Tracking | - |

---

## 5. Quotes (`/quotes`)

| Method | Endpoint | Secured | Description | Body / Notes |
| :--- | :--- | :--- | :--- | :--- |
| `POST` | `/quotes` | **Yes** | Submit Quote | `{ shipmentId, amount... }` |
| `GET` | `/quotes` | **Yes** | List Quotes | - |
| `GET` | `/quotes/:id` | **Yes** | Get Quote | - |
| `PATCH` | `/quotes/:id` | **Yes** | Update Quote | `{ amount... }` |
| `DELETE` | `/quotes/:id` | **Yes** | Delete Quote | - |

> **Note:** Specific `accept` and `reject` endpoints are **not implemented** in the controller. Use the generic `PATCH /quotes/:id` to update status.

---

## 6. Documents (`/documents`)

| Method | Endpoint | Secured | Description | Body / Notes |
| :--- | :--- | :--- | :--- | :--- |
| `POST` | `/documents` | **Yes** | Create Document | `{ type, url... }` |
| `GET` | `/documents` | **Yes** | List Documents | - |
| `GET` | `/documents/:id` | **Yes** | Get Document | - |
| `PATCH` | `/documents/:id` | **Yes** | Update Document | - |
| `DELETE` | `/documents/:id` | **Yes** | Delete Document | - |

---

## 7. Files (Uploads) (`/files`)

| Method | Endpoint | Secured | Description | Body / Notes |
| :--- | :--- | :--- | :--- | :--- |
| `POST` | `/files/upload` | **Yes** | Upload File | `multipart/form-data` |

**Response:**
```json
{
  "url": "https://storage.googleapis.com/bucket/file.jpg"
}
```

---

## 8. Payments (`/payments`)

| Method | Endpoint | Secured | Description | Body / Notes |
| :--- | :--- | :--- | :--- | :--- |
| `POST` | `/payments/create-intent` | **Yes** | Create Intent | `{ amount, currency, agentId }` |
| `POST` | `/payments/webhook` | No | Stripe Webhook | - |

---

## 9. Reviews (`/reviews`)

| Method | Endpoint | Secured | Description | Body / Notes |
| :--- | :--- | :--- | :--- | :--- |
| `POST` | `/reviews` | **Yes** | Submit Review | `{ rating, comment... }` |
| `GET` | `/reviews` | No | List Reviews | Query: `?agentId=...` |
| `GET` | `/reviews/:id` | No | Get Review | - |

---

## 10. Real-Time Chat (WebSocket)

### Response Structure (Get User / Agent)
When fetching a user (`GET /users/:id`) or list of agents, the response includes the nested `agentProfile`.

```json
{
  "id": "uuid",
  "email": "agent@example.com",
  "role": "AGENT",
  "isVerified": true,
  "profile_picture_url": "https://storage...",
  "agentProfile": {
    "company_name": "Global Logistics",
    "license_number": "LIC-1234",
    "rating": 4.8,
    "review_count": 150,
    "orders_fulfilled": 1200,
    "specialization": ["HAZMAT", "PERIshABLE"], // mapped from cargo_specializations
    "service_regions": ["US", "CN"]
  }
}
```

### DTOs

**CreateShipmentDto**
```json
{
  "origin": { "address": "123 Main St", "country": "US" },
  "destination": { "address": "456 Market St, Beijing", "country": "CN" },
  "service_level": "EXPRESS",
  "agent_id": "uuid (optional)",
  "cargo_details": {
    "description": "Box of electronics",
    "weight": 5.5,
    "service_type": "AIR",
    "category": "ELECTRONICS",
    "is_fragile": true,
    "is_perishable": false,
    "images": ["url1", "url2"],
    "document_ids": ["uuid1"]
  }
}
```

---
