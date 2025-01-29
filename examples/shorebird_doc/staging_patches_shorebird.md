---
title: 'Staging Patches | Shorebird'
ogTitle: 'Staging Patches'
description: 'Stage, validate, and promote patches'
type: 'article'
url: 'https://docs.shorebird.dev/guides/staging-patches/'
---

[Skip to content](https://docs.shorebird.dev/guides/staging-patches/#_top)

# Staging Patches

This guide will walk through how to validate a patch in Shorebird’s staging environment before promoting the patch to production.

## Prerequisites

This guide assumes the Shorebird command-line is installed on your machine and that you are logged into an account. Refer to the [getting started](https://docs.shorebird.dev/) instructions for more information.

## Create a Project

Create a new project using `flutter create example --empty`.

## Initialize Shorebird

Next, initialize Shorebird in the current project via `shorebird init`.

```

shorebird init
```

The generated `shorebird.yaml` should look something like:

```

# Your app_id is not a secret and is just used to identify your app

# when requesting patches from Shorebird's servers.

app_id: ee322dc4-3dc2-4324-90a9-04c40a62ae76

# auto_update controls if Shorebird should automatically update in the background on launch.

# If auto_update: false, you will need to use package:shorebird_code_push to trigger updates.

# https://pub.dev/packages/shorebird_code_push

# Uncomment the following line to disable automatic updates.

# auto_update: false
```

## Create a release

Now that we’ve created our apps on shorebird, we need to create releases (one for each platform). To create a release, we’ll use the `shorebird release` command.

```

# Create a release for Android

shorebird release android

# Create a release for iOS

shorebird release ios

# Create a release for macOS

shorebird release macos
```

We can verify the releases were created successfully by visiting [Shorebird console](https://console.shorebird.dev/).

You should also [submit the generated app bundles to the Play\\
Store](https://docs.shorebird.dev/guides/submitting/play-store#upload-to-the-play-store) and [submit the\\
generated ipa to the App Store](https://docs.shorebird.dev/guides/submitting/app-store#upload-to-the-app-store).

## Creating a patch

Now that we have our releases on the Play Store and App Store, we can create a patch using `shorebird patch`. For the sake of this example, let’s set the `backgroundColor` of the `Scaffold` to `Colors.cyan` in `lib/main.dart`:

```

import 'package:flutter/material.dart';

void main() {

  runApp(const MainApp());

}

class MainApp extends StatelessWidget {

  const MainApp({super.key});

  @override

  Widget build(BuildContext context) {

    return const MaterialApp(

      home: Scaffold(

       backgroundColor: Colors.cyan,

        body: Center(

          child: Text('Hello World!'),

        ),

      ),

    );

  }

}
```

Now that we’ve applied the changes, let’s create a patch:

```

# Stage a patch on Android

shorebird patch android --track=staging

# Stage a patch on iOS

shorebird patch ios --track=staging

# Stage a patch on macOS

shorebird patch macos --track=staging
```

## Preview the release

Next, preview the app release locally on a device or emulator, use `shorebird preview`.

```

# Preview the release in the staging environment

shorebird preview --staging --app-id ee322dc4-3dc2-4324-90a9-04c40a62ae76 --release-version 1.0.0+1
```

Shorebird will download the release and run it on your device in the staging environment.

The first time the app is re-launched, we should still see the white `Scaffold` and shorebird will detect and install the patch in the background. Kill and re-launch the app a second time to see the applied patch with the cyan `Scaffold` background.

If all went well, you should see the patch was applied after re-launching the app a second time. Congrats, you’ve validated your patch in the staging environment 🥳

## Promote the patch

Now that you have validated the patch, you can push the patch to all devices by promoting it to production from the [Shorebird console](https://console.shorebird.dev/). Navigate to the release details page and click on the “Go Live” button.

![go-live](https://github.com/shorebirdtech/docs/assets/8855632/70fa5176-4e6a-4d7a-b820-6b24eca2c27a)

At this point, you have a setup which allows you to preview patches locally before promoting them to production 🎉
