# testproject

This Project is Built with Flutter and for the database I use Firebase. The state management is done through Flutter Riverpod Package.

## Boilerplate Features:


* Home
* Routing
* fireBase Database
* Flutter Riverpod Provider (State Management)
* Working Search Bar
* Markup use

### Libraries & Tools Used
* [flutter_screenutil](https://pub.dev/packages/flutter_screenutil)
* [cached network image](https://pub.dev/packages/cached_network_image)
* [carousel slider](https://pub.dev/packages/carousel_slider)
* [smooth_page_indicator](https://pub.dev/packages/smooth_page_indicator)
* [flutter_markdown](https://pub.dev/packages/flutter_markdown)
* [cloud_firestore](https://pub.dev/packages/cloud_firestore)
* [firebase_core](https://pub.dev/packages/firebase_core)
* [flutter_riverpod](https://pub.dev/packages/flutter_riverpod)

### Folder Structure
Here is the core folder structure which flutter provides.

```
flutter-app/
|- android
|- build
|- ios
|- lib
|- test
```
Here is the folder structure we have been using in this project

```
lib/
|- common/
|- controller/
|- models/
|- views/
|- main.dart
```

Now, lets dive into the lib folder which has the main code for the application.

```
1- common - All Common widgets use in app are placed over here.
2- controller - Contains all the controller used for fatching data from firebase database.
3- models - Contains all the structure of datamodel. 
4- views — Contains all the ui of your project, contains sub directory for each screen.
5- main.dart - This is the starting point of the application. All the application level configurations are defined in this file i.e, theme, routes, title, orientation etc.
```
### UI

This directory contains all the ui of your application. Each screen is located in a separate folder making it easy to combine group of files related to that particular screen. All the screen specific widgets will be placed in `widgets` directory as shown in the example below:

```
views/
|- screen 1
   |- screen1.dart
   |- widgets
      |- bottom_nav_bar.dart
      |- privious_order.dart
```

### Screenshot 
<img src="https://github.com/Aditya-AJ-19/test-Project/assets/108580464/d8a0bdf3-2ff2-4552-a408-de88664d2bab" width="200" height="450">
<img src="https://github.com/Aditya-AJ-19/test-Project/assets/108580464/e4ab629b-1b35-491f-afcc-11dc44946958" width="200" height="450">
<img src="https://github.com/Aditya-AJ-19/test-Project/assets/108580464/6d8af94d-5ba9-4a9c-94c8-a861f2010ca8" width="200" height="450">
<img src="https://github.com/Aditya-AJ-19/test-Project/assets/108580464/b2ab1950-82ac-4d18-bdca-d0f580da92b2" width="200" height="450">
<img src="https://github.com/Aditya-AJ-19/test-Project/assets/108580464/c93afc54-ddfe-422f-acbd-e05e2e30169d" width="200" height="450">
<img src="https://github.com/Aditya-AJ-19/test-Project/assets/108580464/36a272ac-f38e-43a5-9ccd-01b6d5a1a748" width="200" height="450">
<img src="https://github.com/Aditya-AJ-19/test-Project/assets/108580464/9cbf998d-f6cf-4f9a-8232-f4627ab54fd5" width="200" height="450">
<img src="https://github.com/Aditya-AJ-19/test-Project/assets/108580464/7e484da4-7434-4a61-8432-0c2fcb40ed6f" width="200" height="450">

https://github.com/Aditya-AJ-19/test-Project/assets/108580464/c22aa775-6e23-46d5-ab5e-e1df0acafa40

### Thank You.
