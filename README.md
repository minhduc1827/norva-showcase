# Norva — Personal Finance & Financial Wellness App

**A privacy-first, offline-first personal finance application built with Flutter for iOS and Android.**

Norva is an independently developed mobile product designed to help individuals and households understand their finances, manage expenses, track subscriptions, and work toward financial goals.

The project focuses on clean architecture, maintainable code, localization, and a consistent user experience.

## Project Overview

Norva brings everyday financial management into one mobile application, with a focus on simplicity and privacy.

The current MVP is designed to work offline, without requiring bank connections or a remote backend.

**Project Status:** MVP — Active Development  
**Platforms:** iOS and Android  
**Framework:** Flutter / Dart  
**Development:** Independent Product

## Tech Stack

| Category | Technologies |
|---|---|
| Framework | Flutter, Dart |
| Architecture | Feature-first Clean Architecture |
| State Management | Bloc / Cubit |
| Navigation | GoRouter |
| Local Database | Drift, SQLite |
| Data Security | Encrypted local storage |
| Localization | Flutter Localization, ARB |
| UI | Material Design, Custom Design System |

## Key Features

### Financial Dashboard
- Overview of personal financial activity.
- Income and expense summaries.
- Monthly financial comparisons.
- Financial charts and visual indicators.

### Money Management
- Manual income and expense tracking.
- Transaction categories.
- Monthly recurring entries.
- Local persistence of financial records.

### Subscriptions
- Dedicated subscription management interface.
- Subscription-related financial tracking.

### Household
- Dedicated household finance section.
- Interface designed around household financial organization.

### Financial Goals
- Create and manage savings goals.
- Track deposited amounts and remaining targets.
- Visual progress indicators.
- Compact goal list with swipe actions.

### Localization
Norva includes localization resources for five languages:

- English
- Swedish
- Danish
- Norwegian (Bokmål)
- Finnish

## Architecture

Norva follows **Feature-first Clean Architecture**, separating business logic from UI and data persistence.

The project is organized around independent features such as:

```text
lib/
├── core/
├── features/
│   ├── onboarding/
│   ├── home/
│   ├── money/
│   ├── subscriptions/
│   ├── household/
│   └── goals/
├── generated/
└── ...
```

Each feature is designed to keep presentation, domain logic, and data access responsibilities separate where appropriate.

### Architecture Principles

- Separation of concerns
- Reusable UI components
- Predictable state management with Bloc/Cubit
- Repository-based data access
- Local-first persistence
- Maintainable and testable code
- Centralized localization and design tokens

## Privacy & Offline-First Approach

Norva is designed around user privacy.

- Financial information is entered manually.
- The MVP does not require bank account connections.
- Financial data is stored locally on the device.
- Local database encryption is part of the storage design.
- Core functionality does not depend on a cloud backend.

This approach reduces reliance on external services and keeps the current MVP focused on local financial management.

## UI & Design System

Norva uses a custom design system inspired by clean, minimal financial applications.

The interface emphasizes:

- Consistent spacing and typography
- Reusable visual components
- Clear financial summaries
- Compact, information-dense layouts
- Consistent colors and progress indicators
- Responsive interfaces for mobile devices

## Screenshots

Application screenshots will be added to demonstrate the dashboard, money management, subscriptions, household, and financial goals interfaces.

## Development Focus

This project demonstrates practical experience with:

- Building Flutter applications from product requirements and UI designs
- Designing scalable mobile application architecture
- Implementing Bloc/Cubit state management
- Managing offline data with Drift and SQLite
- Building financial tracking interfaces
- Supporting multiple languages
- Developing reusable components
- Maintaining consistent UI behavior across features

## Roadmap

Potential future improvements include:

- Additional financial insights
- Enhanced household collaboration
- Optional encrypted backup and synchronization
- Expanded financial wellness features

These are future possibilities and are not part of the current offline MVP.

## About the Developer

**Nguyen Minh Duc**  
Senior Flutter & Mobile Developer

- 10+ years of mobile development experience
- 5+ years specializing in Flutter
- Experience with Android Native development
- Experience with mobile architecture, Firebase, API integration, debugging, maintenance, and application releases

This repository showcases my Flutter development approach through an independently developed product.

## Disclaimer

Norva is an independently developed product currently under active development.

Features and implementation details may evolve as the MVP progresses.

## License

All rights reserved. No license is granted to use, modify, or redistribute this source code without permission from the copyright holders.
