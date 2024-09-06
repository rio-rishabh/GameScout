### GameScout - SwiftUI-based Game Discovery Application

**Version**: 1.0  
**Last Updated**: September 2024  
**Author**: Rishabh Sharma  

GameScout is a SwiftUI-based mobile application that allows users to discover, explore, and favorite various games. The app features a visually appealing interface with a grid layout, search functionality, and the ability to favorite and unfavorite games. Users can view detailed information about each game and can open external links to learn more. The project showcases a range of SwiftUI features and best practices.

---

## Features

- **Grid Layout**: Display a grid of games with adaptive columns, ensuring a responsive design across different screen sizes.
- **Search Functionality**: Search for games by name using a text field. The app filters the displayed games based on user input.
- **Favorite Feature**: Users can favorite or unfavorite games, with visual cues provided by heart icons. Favorites are stored locally within the app.
- **Detail View**: Tapping on a game opens a detailed view with a description and additional options. Users can view more details about a game via an external link using Safari.
- **Context Menu**: Long-press on any game to access a context menu with options to favorite or unfavorite the game.

## Project Structure

### 1. `ContentView.swift`

This is the main view of the app, containing the following elements:

- **Search Bar**: A `TextField` at the top of the screen allows users to search for games by name.
- **Grid View**: Uses a `LazyVGrid` to display games in a grid format, adapting to screen size.
- **GameTitleView**: A reusable component used to display individual game cards, which includes game images, names, and a favorite button.
- **Sheet Presentation**: Tapping on a game opens the `DetailView` in a modal sheet for more information.

### 2. `DetailView.swift`

The `DetailView` displays detailed information about a selected game:

- **Close Button**: Dismisses the detail view.
- **Favorite Button**: Allows users to favorite or unfavorite the selected game.
- **Game Description**: Displays the description of the selected game.
- **External Link**: A button that opens a Safari view to display more details about the game on an external website.

### 3. `GameWorkGridViewModel.swift`

The view model manages the state for the grid view, including handling the selected game and presenting the detail view.

### 4. `MockData.swift`

Contains sample data for testing and development. This mock data simulates the games displayed in the grid and used throughout the app.

---

## How to Run the Project

### Prerequisites

- **Xcode**: Version 13.0 or later.
- **iOS**: Deployment target set to iOS 15.0 or later.

### Steps

1. **Clone the Repository**:  
   Clone the project from the repository to your local machine.

   ```bash
   git clone https://github.com/yourusername/GameScout.git
   cd GameScout
   ```

2. **Open in Xcode**:  
   Open the `GameScout.xcodeproj` file in Xcode.

3. **Run the App**:  
   Select a simulator or a connected device and run the app by clicking the "Run" button in Xcode.

### Dependencies

This project does not require any external dependencies or packages. It is built entirely using SwiftUI and standard Swift libraries.

---

## Key SwiftUI Concepts Used

- **State Management**: Used `@State` and `@Binding` for managing the state of search text, favorites, and sheet presentation.
- **LazyVGrid**: Used for creating a grid layout that adapts to different screen sizes.
- **NavigationView & Sheet**: Used for navigation and presenting the detail view modally.
- **Context Menu**: Implemented context menus for additional options when long-pressing on a game.
- **SafariView**: Custom implementation of a Safari view using `UIViewControllerRepresentable` to open external links.

---

## Future Improvements

- **Persistent Storage**: Implement a persistence mechanism (e.g., Core Data or UserDefaults) to save user favorites across app sessions.
- **Online Data Fetching**: Integrate a web API to fetch real-time data on games instead of relying on mock data.
- **User Authentication**: Implement user authentication to allow users to save their favorites across multiple devices.
- **UI Enhancements**: Add additional animations and transitions to improve the user experience.

---

## Screenshots

*Include relevant screenshots of the application here.*

---

## License

This project is licensed under the MIT License. See the `LICENSE` file for more details.

---

## Contact

For any questions or feedback, please reach out to:

- **Name**: Rishabh Sharma
- **Email**: sharma.rishabh@northeastern.edu
- **GitHub**: https://github.com/rio-rishabh

Feel free to contribute to the project by submitting a pull request or raising issues.

--- 

This README provides a comprehensive guide to the GameScout project, explaining its functionality, usage, and potential improvements. The goal is to help developers and users understand the structure and purpose of the app.
