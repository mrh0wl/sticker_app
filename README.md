# Sticker App

Sticker app onboarding and login using Firebase, BloC, Hive, freezed, AutoRoute, and Clean Architecture for structuring the codebase.

## Technologies

Hive, a fast and efficient local database, is at the core of our sticker app. It serves as the primary data storage solution for storing stickers, user preferences, and other essential data. Hive's speed and simplicity ensure that the app can quickly access and manage local data, providing a seamless and responsive user experience.

Firebase, is employed for real-time synchronization and cloud storage. This technology enables us to synchronize user-generated content, such as stickers and collections, across multiple devices. Firebase also supports user authentication and facilitates secure storage of data in the cloud, ensuring that user-generated content remains accessible and consistent.

BloC (Business Logic Component) The BloC pattern is applied for state management within the app. It provides a structured and reactive approach to handling the app's business logic, separating it from the user interface. BloC ensures a clean and maintainable codebase, making it easy to manage complex data flows, user interactions, and updates.

Clean Architecture with is used to structure the app's codebase into three distinct layers: features, domain, and data. This approach ensures that the app's business logic is separated from the user interface and external dependencies. Clean Architecture promotes a clear separation of concerns and facilitates code reuse, making it easier to maintain and extend the app.

freezed, is utilized to manage state and state changes in the app. It complements the BloC pattern by offering a simple way to manage app state and keep it in sync with the user interface. Freezer promotes a reactive and organized approach to handling application state, ensuring that the app responds quickly to user actions.

AutoRoute, simplifies navigation and routing within the app. It provides a declarative and type-safe way to define and manage routes, making it easier to navigate between different screens and features. AutoRoute ensures that the app's navigation remains intuitive and easy to extend as new features are added.

formz, is integrated to handle form validation and user input. It ensures that user-provided data, such as feedback or comments, is validated before processing. This promotes data integrity and reduces the likelihood of errors.

Firestore serves as an extension of Firebase and is used for storing structured app data, such as user profiles, stickers, and collections. Firestore offers a NoSQL database that can be efficiently queried and used to build features like personalized collections and recommendation systems.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Flutter Documentation](https://flutter.dev/docs).
- [FlutterFire Documentation](https://firebase.flutter.dev/docs/overview).
- [Hive Documentation](https://docs.hivedb.dev/#/).
- [Bloc Documentation](https://bloclibrary.dev/#/).

**Note:** You should put your own `firebase_options.dart` file in the `lib` folder.
Also, you should put your Twitter API in `lib/core/features/auth/infrastructure/datasources/auth_remote_datasource_impl.dart` file.

## Screenshots and Video Demo

![Screenshot 1](https://i.imgur.com/i55Ttog.png)

![Video Demo](https://media2.giphy.com/media/v1.Y2lkPTc5MGI3NjExYXVrcHN0bHRjYzIzenJ3Y29uaWlvMGJ0cHVpdTlqejMybnliazJwOCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/HGI7qVeRS2Gbbx28sF/giphy.gif)
