# Flutter Profile Information App

# CS 442 MP1: Profile Page Shubham Gupta A20551502

## Specifications

### Sections

The profile page consists of several visually distinct sections, each representing different aspects of the user's profile. These sections are:

1. **Profile Header**: Displays the user's name, position, and company.
2. **Personal Information**: Provides contact details such as phone number, email, and address.
3. **Education**: Showcases the user's educational background.
4. **Projects**: Highlights the user's notable projects.
5. **About**: Includes a summary of the user's background and aspirations.
6. **Work Experience**: Lists the user's professional work experiences.
7. **Interests**: Exhibits the user's hobbies and interests.
8. **Photos**: Displays a collection of user photos.

### Requirements

- The page layout is designed to be scrollable, allowing users to view all sections.
- Each section is visually distinguished using appropriate techniques such as padding, background colors, or nested widgets.
- At least three images are incorporated throughout the profile page.
- Utilization of at least one nested row/column widget, with each nested widget containing a minimum of two children.

## Widgets Used

### ProfileHeader Widget

- Displays the user's name, position, and company.
- Utilizes a Row widget to arrange the elements horizontally.

### PersonalInfoSection Widget

- Presents contact details including phone number, email, and address.
- Utilizes a Column widget for vertical alignment of information.

### EducationSection Widget

- Showcases the user's educational background using ListTile widgets within a ListView.

### ProjectSection Widget

- Highlights the user's projects using a GridView.

### AboutSection Widget

- Provides a summary of the user's background and aspirations using a Text widget.

### WorkExperienceSection Widget

- Lists the user's work experiences using ListTile widgets within a ListView.

### InterestsSection Widget

- Exhibits the user's hobbies and interests using ListTile widgets within a ListView.

### PhotosSection Widget

- Displays a collection of user photos using a Row widget with Wrap widget for flexibility in arrangement.

## Code Structure and Flow

### Screens Folder

- **profile_screen.dart**: Defines the ProfileScreen widget, which serves as the main screen of the application. This widget arranges various profile sections vertically using a SingleChildScrollView and Column widget.

### Widgets Folder

- **widgets folder**: Contains separate widget files for each profile section, promoting code modularity and reusability.

### Models Folder

- **models folder**: Contains the User class defining the structure of user data.

### Main File

- **main.dart**: Initializes the Flutter application and sets up the ProfileApp widget with the user data.

## Conclusion

By adhering to the specifications and utilizing appropriate widgets and code organization techniques, the application achieves its objectives effectively.
