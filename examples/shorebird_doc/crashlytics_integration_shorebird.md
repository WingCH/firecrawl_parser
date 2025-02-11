---
title: 'Crashlytics Integration | Shorebird'
ogTitle: 'Crashlytics Integration'
description: 'Integrate Shorebird into your Crashlytics crash reporting'
type: 'article'
url: 'https://docs.shorebird.dev/guides/crash-reporting/integrations/crashlytics/'
---

[Skip to content](https://docs.shorebird.dev/guides/crash-reporting/integrations/crashlytics/#_top)

# Crashlytics Integration

If you’re using Crashlytics for crash reporting, it will work out-of-the-box
with Shorebird releases and patches. However, if you have multiple patches, it
can be unclear which patch caused the crash. This document shows how you can use
Crashlytics to differentiate between patches.

## Add the `shorebird_code_push` package to your project.

[shorebird\_code\_push](https://pub.dev/packages/shorebird_code_push) is available
on pub.dev and lets you programmatically determine your app’s current patch
number. To add it to your project, follow the instructions on the package’s
pub.dev page.

## Configure Crashlytics

If you haven’t already, follow the Crashlytics [getting started with\\
Flutter](https://firebase.google.com/docs/crashlytics/get-started?platform=flutter) guide.

Update the Firebase init code to include the patch number as a custom key. This will look
something like:

```

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(

    options: DefaultFirebaseOptions.currentPlatform,

  );

  final patchNumber = await ShorebirdCodePush().currentPatchNumber();

  // Add the patch number as a tag. You can use whatever name you would like

  // as the key. `$patchNumber` will be "null" if there is no patch. You may

  // wish to handle this case differently.

  FirebaseCrashlytics.instance.setCustomKey(

    'shorebird_patch_number',

    '$patchNumber',

  );

  runApp(const MyApp());

}
```
