---
title: 'Android Flavors | Shorebird'
ogTitle: 'Android Flavors'
description: 'Push patches to multiple flavors on Android'
type: 'article'
url: 'https://docs.shorebird.dev/guides/flavors/android/'
---

[Skip to content](https://docs.shorebird.dev/guides/flavors/android/#_top)

# Android Flavors

This guide will walk through how to setup an app in which there are 2 deployment flavors: `internal` and `stable`. It will cover how to validate a patch on the internal flavor and then promote the patch to the stable flavor on Android.

## Prerequisites

This guide assumes the Shorebird command-line is installed on your machine and that you are logged into an account. Refer to the [getting started](https://docs.shorebird.dev/) instructions for more information.

## Create a Project

Create a new project using `flutter create flavors`.

## Configure Flavors

Next, edit the `android/app/build.gradle` to contain two productFlavors:

```

defaultConfig {

    ...

}

    flavorDimensions "track"

    productFlavors {

        internal {

            dimension "track"

            applicationIdSuffix ".internal"

            manifestPlaceholders = [applicationLabel: "[Internal] Shorebird Example"]

        }

        stable {

            dimension "track"

            manifestPlaceholders = [applicationLabel: "Shorebird Example"]

        }

    }

buildTypes {

  ...

}
```

Lastly, edit `android/app/src/main/AndroidManifest.xml` to use the `applicationLabel` so that we can differentiate the two apps easily:

```

<manifest xmlns:android="http://schemas.android.com/apk/res/android">

  <application android:label="flavors" android:name="${applicationName}" android:icon="@mipmap/ic_launcher">

  <application android:label="${applicationLabel}" android:name="${applicationName}" android:icon="@mipmap/ic_launcher">
```

## Initialize Shorebird

Next, initialize Shorebird in the current project via `shorebird init`.

```

shorebird init
```

The generated `shorebird.yaml` should look something like:

```

# This file is used to configure the Shorebird updater used by your application.

# Learn more at https://shorebird.dev

# This file should be checked into version control.

# This is the unique identifier assigned to your app.

# It is used by your app to request the correct patches from Shorebird servers.

app_id: ee322dc4-3dc2-4324-90a9-04c40a62ae76

flavors:

  internal: ee322dc4-3dc2-4324-90a9-04c40a62ae76

  stable: 904bd3d5-3526-4c1c-a832-7ac23c95302d
```

Because the project contains flavors, `shorebird init` generates an app per flavor and you can validate the release flavor by visiting [Shorebird console](https://console.shorebird.dev/).

## Create a release

Now that we’ve created our apps on shorebird, we need to create releases (one for each flavor). To create a release, we’ll use the `shorebird release android` command.

```

# Create a release for the internal flavor

shorebird release android --flavor internal

# Create a release for the stable flavor

shorebird release android --flavor stable
```

We can verify the releases were created successfully by visiting [Shorebird console](https://console.shorebird.dev/).

## Preview the release

Next, preview the app release locally on a device or emulator, use `shorebird preview`.

```

# Preview the release for the internal flavor.

shorebird preview --app-id ee322dc4-3dc2-4324-90a9-04c40a62ae76 --release-version 1.0.0+1

# Preview the release for the stable flavor.

shorebird preview --app-id 904bd3d5-3526-4c1c-a832-7ac23c95302d --release-version 1.0.0+1
```

This will download the releases and run them on your device.

In addition to previewing the releases locally, you should also [submit the\\
generated app bundles to the Play\\
Store](https://docs.shorebird.dev/guides/submitting/play-store#upload-to-the-play-store). In this case, both
apps can be part of the internal test flavor and only the stable variant should
be promoted to production.

## Creating a patch

Now that we have our internal and stable releases on the Play Store, we can create a patch using `shorebird patch android`. For the sake of this example, let’s adjust the app theme to use `deepOrange` as the seed color in `lib/main.dart`:

```

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.

  @override

  Widget build(BuildContext context) {

    return MaterialApp(

      title: 'Flutter Demo',

      theme: ThemeData(

        // This is the theme of your application.

        //

        // TRY THIS: Try running your application with "flutter run". You'll see

        // the application has a blue toolbar. Then, without quitting the app,

        // try changing the seedColor in the colorScheme below to Colors.green

        // and then invoke "hot reload" (save your changes or press the "hot

        // reload" button in a Flutter-supported IDE, or press "r" if you used

        // the command line to start the app).

        //

        // Notice that the counter didn't reset back to zero; the application

        // state is not lost during the reload. To reset the state, use hot

        // restart instead.

        //

        // This works for code too, not just values: Most code changes can be

        // tested with just a hot reload.

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),

        useMaterial3: true,

      ),

      home: const MyHomePage(title: 'Flutter Demo Home Page'),

    );

  }

}
```

Now that we’ve applied the changes, let’s patch the `internal` variant:

```

shorebird patch android --flavor internal
```

We can validate the patch by visiting [Shorebird console](https://console.shorebird.dev/) then select the internal release or re-launching the internal release.

The first time the app is re-launched, we should still see the purple theme and shorebird will detect and install the patch in the background. Kill and re-launch the app a second time to see the applied patch.

If all went well, you should see the patch was applied after re-launching the app a second time. All devices that have the internal variant of the app installed should also receive the patch 🎉

## Promote the patch

Once you have validated the patch internally, you can promote the patch to the stable variant via:

```

shorebird patch android --flavor stable
```

At this point, you have a setup which allows you to push patches to internal testers before promoting them to production 🎉

The full source code for this example can be found [here](https://github.com/shorebirdtech/samples/tree/main/flavors).

## Adding new flavors

If you want to add a new flavor to your project after initializing Shorebird, you can do so by following the same steps as before.

In build.gradle:

```

defaultConfig {

    ...

}

    flavorDimensions "track"

    productFlavors {

        internal {

            dimension "track"

            applicationIdSuffix ".internal"

            manifestPlaceholders = [applicationLabel: "[Internal] Shorebird Example"]

        }

       beta {

           dimension "track"

           applicationIdSuffix ".beta"

           manifestPlaceholders = [applicationLabel: "[Beta] Shorebird Example"]

       }

        stable {

            dimension "track"

            manifestPlaceholders = [applicationLabel: "Shorebird Example"]

        }

    }

buildTypes {

  ...

}
```

Add this to your `shorebird.yaml` by running `shorebird init`:

```

$ shorebird init

✓ Detecting product flavors (0.6s)

New flavors detected: beta

✓ Fetching apps (0.1s)

✓ Flavors added to shorebird.yaml (0.2s)
```

The resulting shorebird yaml:

```

app_id: ee322dc4-3dc2-4324-90a9-04c40a62ae76

flavors:

  internal: ee322dc4-3dc2-4324-90a9-04c40a62ae76

  stable: 904bd3d5-3526-4c1c-a832-7ac23c95302d

 beta: a41f8226-4b46-45d6-9e19-b14d0cf17bdc
```
