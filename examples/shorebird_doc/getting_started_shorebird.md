---
title: 'Getting Started | Shorebird'
ogTitle: 'Getting Started'
description: 'The official documentation site for Shorebird.'
type: 'article'
url: 'https://docs.shorebird.dev/'
---

[Skip to content](https://docs.shorebird.dev/#_top)

# Getting Started

Welcome to Shorebird! 👋

In this guide, we’ll walk you through setting up Shorebird and integrating it
into your app in just a few minutes.

## Sign up

The first thing you’ll need to do is sign up for a Shorebird account. This will
allow you to use the Shorebird CLI to manage your apps.

### Create an account

To create an account, head over to the [Shorebird\\
Console](https://console.shorebird.dev/) and authenticate with one of the available authentication methods. Once you’ve authenticated, you will have a free Shorebird account.

Next, let’s install the Shorebird CLI on your machine.

## Install

### Using install script

To install the Shorebird command line interface (CLI):

- [Mac/Linux](https://docs.shorebird.dev/#tab-panel-0)
- [Windows](https://docs.shorebird.dev/#tab-panel-1)

Open a terminal and run:

```

curl --proto '=https' --tlsv1.2 https://raw.githubusercontent.com/shorebirdtech/install/main/install.sh -sSf | bash
```

Open a PowerShell terminal and run:

```

Set-ExecutionPolicy RemoteSigned -scope CurrentUser # Needed to execute remote scripts

iwr -UseBasicParsing 'https://raw.githubusercontent.com/shorebirdtech/install/main/install.ps1'|iex
```

This installs `shorebird` into `~/.shorebird/bin` and adds it to your `PATH`. It
also installs a copy of Flutter and Dart inside
`~/.shorebird/bin/cache/flutter`. The copy of Flutter is slightly modified to
add Shorebird code push and is not intended to be added to your `PATH`. You can
continue to use the versions of Flutter and Dart you already have installed.

### Manually installing

Shorebird can also be manually installed, allowing users to choose where the installation will be placed.

In order to do so, in a terminal, inside the folder where Shorebird should be installed at, run:

```

git clone -b stable https://github.com/shorebirdtech/shorebird.git
```

Add the `bin` folder from the repository you just cloned into your `PATH`.

Once the installation has completed, `shorebird` should be available in your
terminal:

```

$ shorebird

The shorebird command-line tool

Usage: shorebird <command> [arguments]

Global options:

-h, --help            Print this usage information.

    --version         Print the current version.

-v, --[no-]verbose    Noisy logging, including all shell commands executed.

Available commands:

  cache      Manage the Shorebird cache.

  doctor     Show information about the installed tooling.

  flutter    Manage your Shorebird Flutter installation.

  init       Initialize Shorebird.

  login      Login as a new Shorebird user.

  login:ci   Login as a CI user.

  logout     Logout of the current Shorebird user

  patch      Creates a shorebird patch for the provided target platforms

  patches    Manage Shorebird patches

  preview    Preview a specific release on a device.

  release    Creates a shorebird release for the provided target platforms

  releases   Manage Shorebird releases

  upgrade    Upgrade your copy of Shorebird.

Run "shorebird help <command>" for more information about a command.
```

You can use the `shorebird doctor` to ensure things are setup correctly:

```

shorebird doctor
```

Example output:

```

$ shorebird doctor

Shorebird 1.5.1 • git@github.com:shorebirdtech/shorebird.git

Flutter 3.27.0 • revision 1e0e5760eeaf534c280cf59ee0504d0e2ba12a7b

Engine • revision 59571a1190752bc1740bff652ce5f0ba7c9413f8

URL Reachability

✓ https://api.shorebird.dev OK (0.1s)

✓ https://console.shorebird.dev OK (0.1s)

✓ https://oauth2.googleapis.com OK (60ms)

✓ https://storage.googleapis.com OK (0.2s)

✓ https://cdn.shorebird.cloud OK (0.1s)

✓ Shorebird is up-to-date (1.4s)

✓ Flutter install is correct (0.4s)

No issues detected!
```

Finally, you can log in to your Shorebird account on your machine:

```

shorebird login
```

## Integrate Shorebird

Once you have registered, installed the CLI, and logged in, you’re ready to use code push!

Start by creating a new Flutter app:

```

flutter create my_shorebird_app
```

As with any Flutter app, you can verify this created the standard Counter app by
following the instructions printed by `flutter create`:

```

cd my_shorebird_app

flutter run
```

### Initialize Shorebird

To make this a Shorebird app, run:

```

shorebird init
```

This will create a `shorebird.yaml` file in the root of your project. This file
contains your Shorebird `app_id`. Your `app_id` is not secret and can be
checked into source control and freely shared.

This will also run `shorebird doctor` to ensure everything is set up correctly.

### Create a release

We will create a release using the unmodified Counter app. Run:

- [Android](https://docs.shorebird.dev/#tab-panel-2)
- [iOS](https://docs.shorebird.dev/#tab-panel-3)
- [macOS (beta)](https://docs.shorebird.dev/#tab-panel-4)
- [Windows (beta)](https://docs.shorebird.dev/#tab-panel-5)

```

shorebird release android
```

```

shorebird release ios
```

```

shorebird release macos
```

```

shorebird release windows
```

When prompted, use the suggested version number ( `1.0.0+1`), and enter `y` when
asked if you would like to continue.

### Preview the release

To run the app created by `shorebird release` on a device or emulator
(Android-only), use `shorebird preview`

```

shorebird preview
```

Now kill the app on your device or emulator.

### Create a patch

We will now make a small change to the Counter app. In `lib/main.dart`, change
the app theme’s `colorScheme` from purple to green:

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

        // the application has a purple toolbar. Then, without quitting the app,

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

       colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),

        useMaterial3: true,

      ),

      home: const MyHomePage(title: 'Flutter Demo Home Page'),

    );

  }

}
```

After making this change, save the file and run:

- [Android](https://docs.shorebird.dev/#tab-panel-6)
- [iOS](https://docs.shorebird.dev/#tab-panel-7)
- [macOS (beta)](https://docs.shorebird.dev/#tab-panel-8)
- [Windows (beta)](https://docs.shorebird.dev/#tab-panel-9)

```

shorebird patch android
```

```

shorebird patch ios
```

```

shorebird patch macos
```

```

shorebird patch windows
```

### See the patch in action

Launch the app from your device or emulator. The app will still have the
original purple theme, but it will be downloading the patch we just created in the
background. Kill and launch the app again, and the app will be green! 🎉

## Connect on Discord

Shorebird has an active Discord where we’re happy to help you with any questions
[https://discord.gg/shorebird](https://discord.gg/shorebird)
