# Property Listing App (iOS)

This project is an iOS mobile application developed for the **COIT20270 Practical Assignment** at Central Queensland University.
The app displays a list of real estate properties and allows users to view details, filter by type, and manage a personalized
"watch list". The application was developed using **Swift** and **Xcode**, and property data is loaded from a local **JSON file**.

## Features

- Tabbed interface with:
  - **Properties** tab (all available listings)
  - **Property Watch** tab (user-selected saved properties)
- **Segmented filters** for:
  - All
  - House
  - Unit
  - Land
- **Single tap** on a property opens a detailed view
- **Double tap** adds a property to the watch list
- **Add New Property** functionality via "+" button:
  - User can enter address, price, and type
  - Default image used for new listings
- **Swipe left** on a property to delete
- Data is managed through a **JSON file** included in the app bundle

  
## Technologies Used

- Language: Swift
- IDE: Xcode 15
- UI: UIKit with Storyboards
- Data: Static JSON file for property listings
- Development Platform: macOS (MacinCloud or local)
- Test Environment: iOS Simulator (iPhone 14), tested on iOS 17

##  How to Run

- Open `PropertyListApp.xcodeproj` in **Xcode**
- Run the app using an **iOS Simulator** or a connected device
- Explore the features via the **two tabs** and interact with listings

##  Testing Strategy

- Functionality tested on:
  - iPhone 14 (iOS 17) Simulator
  - Manual interaction: tapping, filtering, adding, deleting, and switching tabs
- Video demo recorded using QuickTime Player
- Data handling confirmed via console logs and visual output

## Documentation

- [📄View Report](Report.pdf) 
  - Hardware/software setup
  - Features implemented and limitations
  - Testing notes and devices used
  - Screenshots and a recorded demo video
- 🎥 [Demo Proview](https://youtube.com/shorts/N0FGK-sIPB8)

