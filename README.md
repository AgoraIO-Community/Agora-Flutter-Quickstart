# Agora Flutter Quickstart

This tutorial describes how to create an Agora account and build a sample app with Agora using [Flutter](https://flutter.io/).

## Prerequisites
- Agora.io [Developer Account](https://dashboard.agora.io/signin/)
- [Flutter](https://flutter.io/) 1.0.0

## Quick Start
This repository shows you how to use Agora Flutter SDK to build a simple video call app.

### Create an Account and Obtain an App ID
To build and run the sample application, first obtain an app ID: 

1. Create a developer account at [agora.io](https://dashboard.agora.io/signin/). Once you finish the sign-up process, you are redirected to the dashboard.
2. Navigate in the dashboard tree on the left to **Projects** > **Project List**.
3. Copy the app ID that you obtain from the dashboard into a text file. You will use this when you launch the app.

### Update and Run the Sample Application

Open the [settings.dart](lib/src/utils/settings.dart) file and add the app ID.

```dart
  const APP_ID = "";
```

Run the `packages get` command in your project directory:

```bash  
  # install dependencies
  flutter packages get
```

Once the build is complete, run the `run` command to start the app.

```bash
  # start app
  flutter run
```

**We recommend you to use IDE to control overall build process during development**
Details about how to set up the IDE please take a look at [here](https://flutter.io/docs/get-started/editor?tab=vscode)

## Resources
* Complete [API documentation](https://docs.agora.io/en/) at the Developer Center
* [File bugs about this sample](https://github.com/AgoraIO-Community/Agora-Flutter-Quickstart/issues)
* [Lab: Write your first Flutter app](https://flutter.io/docs/get-started/codelab)
* [Cookbook: Useful Flutter samples](https://flutter.io/docs/cookbook)
* [Flutter online documentation](https://flutter.io/docs), which offers tutorials, samples, guidance on mobile development, and a full API reference.

## License
This software is under the MIT License (MIT). [View the license](LICENSE.md).
