Projeto criado pela IA Claude 3.5

Steam Watcher 🎮🔔
Project Overview
Steam Game Update Tracker is a mobile application that helps gamers stay informed about the latest updates for their favorite Steam games. Built with Flutter for the frontend and Spring Boot for the backend, this app provides real-time notifications about game patches and updates.
Key Features

🕹️ Track multiple Steam games
🔔 Real-time update notifications
📱 Cross-platform mobile support (Android & iOS)
🔒 Secure authentication
🌐 Steam API integration

Technology Stack
Frontend

Flutter
Provider for State Management
Flutter Local Notifications
HTTP for API communication

Backend

Spring Boot
Spring Security
REST API
Steam Web API Integration

Prerequisites

Flutter SDK (latest stable version)
Java 11 or higher
Android Studio / IntelliJ IDEA
Steam Web API Key

Installation
Backend Setup

Clone the repository

bashCopygit clone https://github.com/yourusername/steam-update-tracker.git
cd steam-update-tracker/backend

Configure application.properties

propertiesCopysteam.api.key=YOUR_STEAM_WEB_API_KEY
spring.security.user.name=your_username
spring.security.user.password=your_password

Build and run Spring Boot application

bashCopy./mvnw spring-boot:run
Frontend Setup

Navigate to frontend directory

bashCopycd ../frontend

Install dependencies

bashCopyflutter pub get

Run the application

bashCopyflutter run
Configuration
Tracked Games
Modify \_trackedGameIds in GameUpdatesProvider to add/remove games:
dartCopyList<int> \_trackedGameIds = [
730, // Counter-Strike 2
570, // Dota 2
440 // Team Fortress 2
];
Security

Implements basic authentication
Uses secure storage for credentials
HTTPS communication
Implements token-based authentication

Design Patterns Used

Provider Pattern
Repository Pattern
Service Pattern
Dependency Injection
Strategy Pattern

Roadmap

Support for more game platforms
Customizable update check frequency
Offline mode
Detailed patch note parsing
User game library management

Troubleshooting

Ensure Steam Web API key is valid
Check network connectivity
Verify notification permissions

Contributing

Fork the repository
Create your feature branch (git checkout -b feature/AmazingFeature)
Commit your changes (git commit -m 'Add some AmazingFeature')
Push to the branch (git push origin feature/AmazingFeature)
Open a Pull Request

License
Distributed under the MIT License. See LICENSE for more information.
Contact
Your Name - your.email@example.com
Project Link: https://github.com/yourusername/steam-update-tracker
Acknowledgements

Flutter
Spring Boot
Steam Web API
