---
title: 'Troubleshooting | Shorebird'
ogTitle: 'Troubleshooting'
description: 'Fixes for common Shorebird issues'
type: 'article'
url: 'https://docs.shorebird.dev/troubleshooting/'
---

[Skip to content](https://docs.shorebird.dev/troubleshooting/#_top)

# Troubleshooting

Find help for issues with Shorebird.

## I created a patch, but it’s not showing up in my app

Your first step in debugging should be to check your app’s logs. Instructions
for this can be found at [https://shorebird.dev/blog/viewing-logs/](https://shorebird.dev/blog/viewing-logs/).

You should see logs prefixed with `[shorebird]`. If you do not see `[shorebird]`
in your logs, the app you are running was not built using `shorebird release`
and cannot receive patches. You will need to redistribute your app using a
binary created by `shorebird release`.

If you do see Shorebird in your logs, you’ll want to look for a a line that
includes the patch check request being made. It looks like:

```

Sending patch check request: PatchCheckRequest {

  app_id: "<your app id>",

  channel: "stable",

  release_version: "1.0.3+16", <-- this is the release version

  patch_number: <some patch number>,

  platform: "android",

  arch: "aarch64"

}
```

If the release version is the version you expect to see, check the [Shorebird\\
Console](https://console.shorebird.dev/) to ensure that this release exists for
the given app id and that it has a patch. Please contact us on Discord if such
a patch exists and is not being applied.

Common issues:

### The patch was created for a different release version than the one running on your device/emulator.

Patches are only compatible with the release version they were created for. If
you create a patch for version `1.0.0+1`, it will not work on version `1.0.0+2`.

#### How to tell if this is the problem

You will see `Shorebird updater: no active patch` in your device logs.

#### How to fix it

Ensure that the version of your app on your device/emulator matches the version
of the release you patched. You can see what release version your app is running
by looking in the device logs for a patch check request:

```

Sending patch check request: PatchCheckRequest {

  app_id: "<your app id>",

  channel: "stable",

  release_version: "1.0.3+16", <-- this is the release version

  patch_number: <some patch number>,

  platform: "android",

  arch: "aarch64"

}
```

Only patches created for this release version will be compatible with your app.

## I installed Shorebird, and now I can’t run my app in VS Code

If you see error output like the following when using the Run or Debug button in
VS Code:

```

FAILURE: Build failed with an exception.

* What went wrong:

Execution failed for task ':app:checkDebugAarMetadata'.

> Could not resolve all files for configuration ':app:debugRuntimeClasspath'.

   > Could not find io.flutter:arm64_v8a_debug:1.0.0-4a5e8142f3e7368a48e4f6151cb7b1a684d6dd83.

     Searched in the following locations:
```

It’s possible that VS Code is incorrectly using Shorebird’s version of Flutter
instead of the Flutter on your path (see
[https://github.com/Dart-Code/Dart-Code/issues/4607](https://github.com/Dart-Code/Dart-Code/issues/4607)). You can fix this by
explicitly providing VS Code with the path to your Flutter installation. In your
`settings.json` file, add the line:

```

"dart.flutterSdkPath": "/path/to/flutter"
```

Where “/path/to/flutter” is the path to your Flutter installation. You can get
this by running `which flutter` in your terminal (or `where.exe flutter` on
Windows) and removing the `/bin/flutter` from the end of that path.

## Could not find an option named “dart define” when using the `--` separator

Powershell handles the `--` separator differently than other shells (see
[this StackOverflow answer](https://stackoverflow.com/a/15788023) for more
info). To work around this, you can quote the `--` separator. For example:

```

shorebird release android '--' --dart-define=foo=bar
```

## Shorebird fails to install

There are a number of reasons this might happen. Common causes are:

### I see a message saying that `git stat` failed because a file was too long

This can happen on Windows due to Windows’ limit of 260 characters for a filename.

You can fix this by running:

```

git config --system core.longpaths true
```

You may need to run this as an administrator, and you will need to restart your
terminal after running this command.

## My iOS build number increments when I try to make a release or patch

This is likely because you are providing an export options .plist file that
sets `manageAppVersionAndBuildNumber` to true. This is incompatible with
Shorebird because Shorebird requires that you maintain control over your app’s
version and build numbers in order to target patches at specific releases. You
can fix this problem by either setting `manageAppVersionAndBuildNumber` to false
or removing the value from your export options .plist file.

## I see a `Your app contains asset changes` warning when running `shorebird patch`

The `shorebird patch` command will print a warning if it detects changes to
files in your compiled app that correspond to asset changes (e.g. added or
removed images, fonts, etc.). This does not always mean that your patch will not
work, but shorebird cannot be sure that the changes are safe.

Shorebird does not (yet) have the
[ability to patch assets](https://github.com/shorebirdtech/shorebird/issues/318)
but intends to add such in the future, at which time this warning may go away.

An example of this warning:

```

✓ Verifying patch can be applied to release (4.0s)

[WARN] The release artifact contains asset changes, which will not be included in the patch.

    Added files:

        base/assets/flutter_assets/assets/images/bg_button_disable.png

    Changed files:

        base/assets/flutter_assets/AssetManifest.bin

        base/assets/flutter_assets/AssetManifest.json

        base/assets/flutter_assets/fonts/MaterialIcons-Regular.otf

Continue anyways? (y/N)
```

So what does this mean? In this case, it means I added a new image to my app.
The warning is because my patched Dart code could _depend_ on those new assets
which will not be present when the patch is applied in the wild. It can be safe
to ignore this kind of warning if you’re removing an asset that is not used by
your code, or your Dart code knows how to handle the asset being missing.

Also included in the above changes are the `AssetManifest` files. These files
change any time you add or remove an asset from your app, and are generally
a symptom rather than the cause of the warning.

The final file changed above is the `MaterialIcons-Regular.otf` font file,
which can happen if your app uses more or fewer icons from the Dart code.
Flutter will automatically “tree shake” your fonts, so if you don’t use an icon
in your Dart code, it will not be included in the final app. You can
disable this behavior with `--no-tree-shake-icons` at the risk of increasing
your app size. This type of warning will also go away once we add
\[ [https://github.com/shorebirdtech/shorebird/issues/318\](asset](https://github.com/shorebirdtech/shorebird/issues/318%5D(asset) patching).

A type of change not shown above is one which changes .dex files on Android or
the `Runner.app` directory on iOS. These changes represent changes to the
native code of your app, and are not patchable by Shorebird. If you see this
warning, you should be very careful about publishing your patch, as it may
cause your app to crash when the Dart code tries to call into native code
which operates differently than expected. See

[the next section](https://docs.shorebird.dev/troubleshooting/#i-see-a-your-app-contains-native-changes-warning-when-running-shorebird-patch-even-though-i-havent-changed-swiftobjective-ckotlinjava-code).

### What happens if I ignore this warning?

You can bypass this warning by passing the `--allow-asset-diffs` flag to the
`shorebird patch` command.

The consequences of ignoring this warning depend on the changes that were made.
In the tree-shaking example above, if you ignore the warning, your app will
render incorrectly if you use an icon that was not included in the release
build. Any assets introduced in a patch will fail to load and your app may crash
if it depends on them.

If you are not sure whether your change is safe, you can
[stage your patch](https://docs.shorebird.dev/guides/staging-patches) and test locally before deploying it
to users.

## I see a `Your app contains native changes` warning when running `shorebird patch`, even though I haven’t changed Swift/Objective-C/Kotlin/Java code

The `shorebird patch` command will print a warning if it detects changes to
files in your compiled app that correspond to native code changes ( `.dex` files
on Android, files in the `Runner.app` directory on iOS). This does not always
mean that your patch will not work, but because shorebird cannot be sure that
the changes are safe, and because shorebird can’t patch non-Dart code, it prints
a warning.

This can be caused by a number of things. The most common causes are:

1. A dependency/plugin you are using has changed its native code. **You should**
**use caution when publishing patches that include changes to native code from**
**plugins. In the worst case, these changes may cause your patched app to**
**crash.**

2. A dependency/plugin produces a different output on every build. This can
happen if the dependency it includes a timestamp indicating when it was
built, for example. This kind of change is usually safe to publish, but you
should be sure this is the only reason you are seeing this warning.

3. (iOS only) The release was built with a different version of Xcode than the
patch. This can be fixed by ensuring that you are using the same
version of Xcode to build the release and the patch. If you’ve upgraded to a
newer version of Xcode since building the release, you can download older
versions of Xcode from
[Apple’s developer downloads page](https://developer.apple.com/download/all/).

4. (iOS only) You are building with an old version of Xcode. Specifically, we’ve
seen this warning when building with Xcode 14.1. If you are using a version
of Xcode that is not the latest, try upgrading to the latest version.

5. The version and build number of the patch do not match that of the release.
For example, if the release was built with version `1.0.0+1`, but the patch
was generated with version `1.0.0+2`, you might see this warning. We have
implemented some safeguards to make this less likely, but it’s worth
verifying if you’re seeing this warning and you don’t know why.


### What happens if I ignore this warning?

If the native code that changed does not interact with your Dart code or Flutter
at all, the patch should run without issue.

If you are not sure whether your change is safe, you can
[stage your patch](https://docs.shorebird.dev/guides/staging-patches) and test locally before deploying it
to users.

If you are sure the changes are safe, you can bypass this warning by passing the
`--allow-native-diffs` flag to the `shorebird patch` command.

## ”Invalid `Podfile` file: cannot load such file” when running `pod install`

You might see this error message if the `FLUTTER_ROOT` definition in your
project’s `ios/Flutter/Generated.xcconfig` points to a Shorebird Flutter
installation. This can be fixed by running any of:

1. `flutter clean`, or
2. `flutter build ios` in your project’s root directory, or
3. `flutter run` in your project’s root directory and targeting an iOS
simulator/device.

## Unsupported class file major version 65

The error `Unsupported class file major version 65` (or 66—the number varies sometimes)
happens when gradle is being executed with an incompatible Java version.

You can check the specific Gradle version that your app is using by running
`shorebird doctor -v` inside the project folder. This command will also print the java version that
shorebird is using.

Refer to the [official Gradle documentation](https://docs.gradle.org/current/userguide/compatibility.html)
to check which Java version works with which Gradle release.

- [Android Studio](https://developer.android.com/studio) comes with a bundled JDK which should be auto
detected by Shorebird and might be the easiest way of solving the issue.
- If in a GitHub Action, the [setup-java](https://github.com/actions/setup-java) action can help.
- Or try Installing the required Java version for your project’s Gradle release and set
the path where it was installed in the `JAVA_HOME` environment variable.

## When creating an iOS release, I see an error saying that I’m missing a provisioning profile or that no signing team was found.

We address this issue in our [releasing guide](https://docs.shorebird.dev/code-push/release). Take a look
at the iOS section for more information.

## Have a problem that’s not addressed here?

We’re happy to help on [Discord](https://discord.gg/shorebird)!
