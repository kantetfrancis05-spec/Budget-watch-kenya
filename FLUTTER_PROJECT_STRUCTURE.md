# BudgetWatch Kenya – Flutter Project Structure

**Project:** BudgetWatch Kenya

**Tagline:** Follow Every Shilling.

---

## Project Directory Structure

```
budgetwatch-kenya/
│
├── android/
├── ios/
├── web/
├── linux/
├── macos/
├── windows/
│
├── assets/
│   ├── icons/
│   ├── images/
│   ├── logos/
│   ├── fonts/
│   ├── animations/
│   └── mockups/
│
├── docs/
│
├── lib/
│   ├── app/
│   │   ├── app.dart
│   │   ├── routes.dart
│   │   ├── theme.dart
│   │   └── constants.dart
│   │
│   ├── core/
│   │   ├── database/
│   │   ├── network/
│   │   ├── services/
│   │   ├── security/
│   │   ├── storage/
│   │   └── utilities/
│   │
│   ├── models/
│   │
│   ├── features/
│   │   ├── authentication/
│   │   ├── dashboard/
│   │   ├── budgets/
│   │   ├── institutions/
│   │   ├── projects/
│   │   ├── procurement/
│   │   ├── debt/
│   │   ├── audits/
│   │   ├── participation/
│   │   ├── notifications/
│   │   ├── ai_assistant/
│   │   ├── profile/
│   │   └── settings/
│   │
│   ├── shared/
│   │   ├── widgets/
│   │   ├── components/
│   │   ├── layouts/
│   │   └── helpers/
│   │
│   └── main.dart
│
├── test/
│
├── pubspec.yaml
├── analysis_options.yaml
├── README.md
└── LICENSE
```

---

## Architecture

The application follows a **modular architecture**.

Each feature is independent and contains its own:

- Screens
- Controllers
- Models
- Services
- Widgets
- State management

This makes the project easier to maintain, test, and extend.

---

## Initial Features

- Authentication
- Dashboard
- Budget Tracking
- Institution Profiles
- Public Projects
- Procurement
- Debt & Loans
- Audit Centre
- Public Participation
- AI Assistant
- Notifications
- User Profile
- Settings

---

## Shared Components

Reusable UI elements such as:

- Buttons
- Cards
- Charts
- Dialogs
- Navigation bars
- Loading indicators
- Search fields

will be stored in the "shared" directory to avoid duplication.

---

## Goal

This structure is designed to support future growth into a national-scale civic platform while keeping the codebase organized and maintainable.
