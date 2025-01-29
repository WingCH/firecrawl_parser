---
title: 'Initialize Shorebird | Shorebird'
ogTitle: 'Initialize Shorebird'
description: 'Learn how to add code push to an existing Flutter project.'
type: 'article'
url: 'https://docs.shorebird.dev/code-push/initialize/'
---

[Skip to content](https://docs.shorebird.dev/code-push/initialize/#_top)

# Initialize Shorebird

To configure an existing Flutter project to use Shorebird, use `shorebird init`
at the root of a Flutter project:

```

shorebird init
```

This does three things:

1. Tells Shorebird to create a unique `app_id` for your app. This `app_id` is
how Shorebird identifies your app and knows which updates to send to it. It
does not need to be kept secret.
2. Creates a `shorebird.yaml` file in your project’s root directory.
`shorebird.yaml` contains the `app_id` mentioned above.
3. Adds the `shorebird.yaml` to the assets section of your `pubspec.yaml` file,
ensuring `shorebird.yaml` is bundled with your app’s assets and is available
to the Shorebird updater at runtime.

You can safely commit these changes, they will have no affect on your app
when not using Shorebird.

Example output for an app named `shorebird_test`:

```

$ shorebird init

✓ Detecting product flavors (0.6s)

? How should we refer to this app? (shorebird_test) shorebird_test

✓ Shorebird is up-to-date (0.6s)

✓ Flutter install is correct (4.5s)

✓ AndroidManifest.xml files contain INTERNET permission (23ms)

No issues detected!

🐦 Shorebird initialized successfully!

✅ A shorebird app has been created.

✅ A "shorebird.yaml" has been created.

✅ The "pubspec.yaml" has been updated to include "shorebird.yaml" as an asset.

Reference the following commands to get started:

📦 To create a new release use: "shorebird release".

🚀 To push an update use: "shorebird patch".

👀 To preview a release use: "shorebird preview".

For more information about Shorebird, visit https://shorebird.dev
```

The generated `shorebird.yaml` should look similar to:

```

# This file is used to configure the Shorebird updater used by your application.

# Learn more at https://shorebird.dev

# This file should be checked into version control.

# This is the unique identifier assigned to your app.

# It is used by your app to request the correct patches from Shorebird servers.

app_id: 8c846e87-1461-4b09-8708-170d78331aca
```

If your application contains flavors, `shorebird init` will create an app per flavor and `shorebird.yaml` will include all flavors and their corresponding `app_ids`:

```

# This file is used to configure the Shorebird updater used by your application.

# Learn more at https://shorebird.dev

# This file should be checked into version control.

# This is the unique identifier assigned to your app.

# It is used by your app to request the correct patches from Shorebird servers.

app_id: 864ab1b0-ba78-4b15-990a-a63cec35a41b

flavors:

  development: 864ab1b0-ba78-4b15-990a-a63cec35a41b

  production: 6b6e6631-4fbe-4645-8d9d-d5247656d975
```
