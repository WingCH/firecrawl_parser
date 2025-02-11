---
title: 'Releasing to the Apple App Store | Shorebird'
ogTitle: 'Releasing to the Apple App Store'
description: 'Release a Code Push App to the Apple App Store'
type: 'article'
url: 'https://docs.shorebird.dev/guides/submitting/app-store/'
---

[Skip to content](https://docs.shorebird.dev/guides/submitting/app-store/#_top)

# Releasing to the Apple App Store

This guide walks through releasing a code push app to the Apple App Store and applying a patch to that release.

The app we will be releasing in this guide is Shorebird Clock, our demo code push app. ( [source](https://github.com/shorebirdtech/time_shift/))

## Prerequisites

To follow along with this guide, you will need the following:

1. An existing Shorebird app. If you don’t have one, you can create one by following the [code push quickstart](https://docs.shorebird.dev/) guide.
2. Access to hardware running macOS. This is required to build iOS apps.
3. A valid Apple Developer account. This is required to release iOS apps.
4. An app in [App Store Connect](https://appstoreconnect.apple.com/). See the [official documentation](https://developer.apple.com/help/app-store-connect/create-an-app-record/add-a-new-app) for more information about how to create one.
5. An iOS Distribution certificate. You can create one at [https://developer.apple.com/account/resources/certificates/add](https://developer.apple.com/account/resources/certificates/add).
6. An iOS App Store provisioning profile. See the [official documentation](https://developer.apple.com/help/account/manage-provisioning-profiles/create-an-app-store-provisioning-profile) for instructions on how to create one.

### Specify a development team in Xcode

To build an iOS app for distribution, we need to specify a development team in Xcode. Open `ios/Runner.xcworkspace` in Xcode and select the `Runner` target:

![Xcode development team](https://github.com/shorebirdtech/docs/assets/581764/786b1def-6198-4be0-90ac-d307e9b1a289)

## Creating a release

### Determine the release version

Navigate to your app on the [Shorebird console](https://console.shorebird.dev/)
to see the current set of releases. For our app, we see that the latest release
version is `1.0.3+1`, so the version of our next release will be `1.0.4+1`.

### Create a release in App Store Connect

Because the App Store does not include the build number (the `+1` part of `1.0.4+1`) in app versions, this will show up in the App Store as `1.0.4`. Follow the instructions in the [official documentation](https://developer.apple.com/help/app-store-connect/update-your-app/create-a-new-version) to create a new version in App Store Connect.

![App Store Connect version](https://github.com/shorebirdtech/docs/assets/581764/549a42ac-0202-4c72-a9a9-d0196a0308b6)

### Update the version in `pubspec.yaml`

Update the version in `pubspec.yaml` to `1.0.4+1`:

```

name: shorebird_clock

description: A demo app for Shorebird

 version: 1.0.3+1

 version: 1.0.4+1
```

### Create a Shorebird release

Create a Shorebird release by running the `shorebird release ios` command:

```

$ shorebird release ios

✓ Fetching apps (0.1s)

✓ Building release (56.2s)

✓ Getting release version (37ms)

✓ Fetching releases (0.1s)

🚀 Ready to create a new release!

📱 App: time_shift (f2184ee6-9a85-498c-bfeb-114d638c462e)

📦 Release Version: 1.0.4+1

🕹️ Platform: ios

Would you like to continue? (y/N) Yes

✓ Fetching Flutter revision (36ms)

✓ Creating release (0.2s)

✓ Creating artifacts (8.0s)

✓ Updating release status (57ms)

✅ Published Release!

Your next step is to upload your app to App Store Connect.

To upload to the App Store, do one of the following:

    1. Open build/ios/archive/Runner.xcarchive in Xcode and use the "Distribute App" flow.

    2. Drag and drop the build/ios/ipa/time_shift.ipa bundle into the Apple Transporter macOS app (https://apps.apple.com/us/app/transporter/id1450874784).

    3. Run xcrun altool --upload-app --type ios -f build/ios/ipa/time_shift.ipa --apiKey your_api_key --apiIssuer your_issuer_id.

       See "man altool" for details about how to authenticate with the App Store Connect API key.
```

## Upload to the App Store

Open the .xcarchive in Xcode and use the “Distribute App” flow:

![Xcode Organizer](https://github.com/shorebirdtech/shorebird/assets/581764/eafebdee-0e26-410a-8997-4eed056d4b6d)

As of Xcode 15, you will make the following choices:

1. “Custom” as the distribution method.
![Xcode distribution method 1](https://github.com/shorebirdtech/docs/assets/581764/8b049b0b-d6f5-419e-a91f-511923997f50)
2. “App Store Connect” as the distribution method.
![Xcode distribution method 2](https://github.com/shorebirdtech/docs/assets/581764/4fd6821a-80b4-4a35-b081-e8f97c59b8a2)
3. “Upload” as the destination.
![Upload destination](https://github.com/shorebirdtech/docs/assets/581764/f05c3603-c045-4662-84ad-c0a218e7145b)
4. A few distribution options that are up to you. Importantly, **Manage Version and Build Number must be unchecked for Shorebird to work**. Because Shorebird targets patches at specific release versions, changing the version or build number will prevent your app from receiving patches.
![Xcode distribution options](https://github.com/shorebirdtech/shorebird/assets/581764/c6ae0857-7ad8-4a8f-ae8b-55d05d52f3b3)
5. Automatically manage signing or manually manage signing. This is up to you. If you choose to manually manage signing, you will need to select the appropriate development team, provisioning profile, and signing certificate for your app.
6. Confirm the upload.

Xcode will upload your archive, and if no issues are found, will show a message telling you that the upload was successful:

![Xcode upload succeeded](https://github.com/shorebirdtech/shorebird/assets/581764/678354e5-a445-4c55-94fc-7608ff0b241d)

After a short delay (usually a minute or two), you will see the build listed as “Processing” in App Store Connect:

![App Store Connect Processing](https://github.com/shorebirdtech/docs/assets/581764/a87cdb31-9f8d-4838-b21b-38a3dbf9dcd1)

Once the app has finished processing, we can add it to our release:

![App Store Connect add build](https://github.com/shorebirdtech/docs/assets/581764/da2f1253-610b-4ee5-abb4-7c088da1631c)

## Submit the app for review

When we attempt to submit the app for review, App Store Connect will list the issues we need to resolve before we can submit the app:

![App Store Connect review issues](https://github.com/shorebirdtech/docs/assets/581764/576459e0-3212-4ead-8388-eabb3b01c68a)

## After the release is approved

Once the release has been approved, you will be able to download it from the App Store.

## Creating a patch

Patches can be pushed to fix bugs in the `App Store` release without requiring a new submission to the App Store.

### Make code changes

For the purposes of this guide, we will change the default clock face to `generative` in `lib/main.dart`:

```

  (clock) => clock.name == clockName,

  orElse: () => ClockFace.particle,

  orElse: () => ClockFace.generative,

);
```

### Create a Shorebird patch

To make this patch available to your users, run `shorebird patch ios`.

```

$ shorebird patch ios

✓ Fetching apps (0.4s)

✓ Building release (61.5s)

✓ Detected release version 1.0.4+1 (44ms)

✓ Fetching releases (0.1s)

✓ Fetching Flutter revision (23ms)

🚀 Ready to publish a new patch!

📱 App: time_shift (f2184ee6-9a85-498c-bfeb-114d638c462e)

📦 Release Version: 1.0.4+1

📺 Channel: stable

🕹️ Platform: ios [aarch64 (4.17 MB)]

Would you like to continue? (y/N) Yes

✓ Creating patch (72ms)

✓ Uploading artifacts (0.5s)

✓ Fetching channels (58ms)

✓ Promoting patch to stable (61ms)

✅ Published Patch!
```
