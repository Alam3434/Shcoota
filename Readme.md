# Shcoota - Scooter Sharing App

**Shcoota** is an iOS app that allows users to share and rent electric scooters, similar to Turo but for scooters. With Shcoota, users can list their scooters for rent, search for nearby scooters, make bookings, and communicate with other users. The app is built using Swift for the frontend and Firebase for the backend to ensure a smooth, real-time experience.

## Features

- **User Registration and Authentication**: Users can sign up, log in, and manage their accounts.
- **Scooter Listings**: Users can list their electric scooters for rent, specifying location, availability, and price.
- **Search Nearby Scooters**: Find scooters close to your location through an interactive map view.
- **Booking System**: Rent scooters for a specific time and make payments through the app.
- **GPS Tracking**: Real-time GPS tracking for users to find and unlock scooters.
- **Reviews and Ratings**: Rate your rental experience and leave reviews for other users.
- **Messaging System**: Communicate with scooter owners directly through in-app messaging.

## Tech Stack

- **Frontend**: Swift, UIKit, MapKit
- **Backend**: Firebase (Authentication, Firestore, Realtime Database, Firebase Storage)
- **Payment**: Stripe or PayPal (to be integrated)

## Setup and Installation

1. **Clone the repository**:
    ```bash
    git clone https://github.com/your-username/shcoota.git
    ```

2. **Open the project in Xcode**:
    ```bash
    open Shcoota.xcodeproj
    ```

3. **Install Firebase SDK**:
    - Follow the official [Firebase iOS setup guide](https://firebase.google.com/docs/ios/setup) to configure Firebase.
    - Make sure to add your Firebase `GoogleService-Info.plist` to the Xcode project.

4. **Run the app**:
    - Select your target device in Xcode and press the **Run** button.

## Firebase Setup

1. Create a Firebase project on [Firebase Console](https://console.firebase.google.com/).
2. Enable Firebase Authentication, Firestore, and Firebase Storage.
3. Download the `GoogleService-Info.plist` and add it to your Xcode project.

## Future Features

- **Real-time Scooter Availability**: Update scooter availability in real-time as users rent and return scooters.
- **Push Notifications**: Notify users of rental updates, nearby scooters, and other important information.
- **User Profiles**: Allow users to create and customize their profiles.
- **Ride History**: Track rental history and earnings for scooter owners.

## Contributing

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-name`).
3. Commit your changes (`git commit -am 'Add new feature'`).
4. Push to the branch (`git push origin feature-name`).
5. Create a new pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

For any inquiries, feel free to contact me at [aamiyo2003@example.com].
"""

