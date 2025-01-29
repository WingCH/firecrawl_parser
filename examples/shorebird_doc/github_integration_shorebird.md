---
title: 'GitHub Integration | Shorebird'
ogTitle: 'GitHub Integration'
description: 'Integrate Shorebird into your GitHub workflow'
type: 'article'
url: 'https://docs.shorebird.dev/ci/github/'
---

[Skip to content](https://docs.shorebird.dev/ci/github/#_top)

# GitHub Integration

The [Setup Shorebird](https://github.com/shorebirdtech/setup-shorebird) GitHub Action allows you to integrate Shorebird into your existing GitHub Workflows.

## Prerequisites

✅ Shorebird CLI is installed on your machine

✅ You are logged into a Shorebird account.

## Quick Start

To integrate Shorebird into your CI, use the `setup-shorebird` action. The `setup-shorebird` action downloads Shorebird and adds it to the system path.

```

name: Shorebird Workflow Example

on:

  workflow_dispatch:

jobs:

  example:

    defaults:

      run:

        shell: bash

    runs-on: ubuntu-latest

    steps:

      # Use the setup-shorebird action to configure Shorebird

      - name: 🐦 Setup Shorebird

        uses: shorebirdtech/setup-shorebird@v1

        with:

          cache: true # Optionally cache your Shorebird installation

      # Now we're able to use Shorebird CLI in our workflow

      - name: 🚀 Use Shorebird

        run: shorebird --version
```

In the above workflow, we’re using the `setup-shorebird` action to configure Shorebird in our CI and in subsequent steps we can execute any Shorebird commands.

## Authentication

Most Shorebird functionality, like creating releases and patches, requires being
authenticated. In order to authenticate with Shorebird in CI, you will need to
generate a CI token.

```

shorebird login:ci
```

You will be prompted to go through a similar OAuth Flow as when using `shorebird login`, however, `shorebird login:ci` will not store any credentials on your
device. Instead, it will output a base-64 encoded auth token that you will use
in your CI environment.

The output of this command should look something like:

```

$ shorebird login:ci

The Shorebird CLI needs your authorization to manage apps, releases, and patches on your behalf.

In a browser, visit this URL to log in:

https://accounts.google.com/o/oauth2/v2/auth...

Waiting for your authorization...

🎉 Success! Use the following token to login on a CI server:

qwerasdf1234asdfqwer1234asdfqwer1234asdfqwer1234asdfqwer1234asdfqwer1234asdfqwer1234asdfqwer1234asdfqwer1234asdfqwer1234asdfqwer1234asdfqwer1234asdfqwer1234asdfqwer1234asdfqwer1234asdfqwer1234asdfqw==

Example:

export SHOREBIRD_TOKEN="$SHOREBIRD_TOKEN" && shorebird patch android
```

Next, copy the generated `SHOREBIRD_TOKEN` and navigate to your GitHub repository secrets via:

`"Settings" -> "Secrets and variables" -> "Actions"`.

Then, click `"New repository secret"` and paste your `SHOREBIRD_TOKEN`:

```

name: SHOREBIRD_TOKEN

secret: <THE GENERATED SHOREBIRD_TOKEN>
```

Now we can use the `SHOREBIRD_TOKEN` in our GitHub workflow to perform authenticated functions such as creating patches 🎉

## Create Releases

The simplest way to create a release is using the official Shorebird GitHub Actions:

- [Setup Shorebird GitHub Action](https://github.com/marketplace/actions/setup-shorebird).
- [Shorebird Release GitHub Action](https://github.com/marketplace/actions/shorebird-release).

```

name: Shorebird Release

on:

  workflow_dispatch:

env:

  SHOREBIRD_TOKEN: ${{ secrets.SHOREBIRD_TOKEN }}

jobs:

  release:

    defaults:

      run:

        shell: bash

    runs-on: ubuntu-latest

    steps:

      - name: 📚 Git Checkout

        uses: actions/checkout@v3

      - name: 🐦 Setup Shorebird

        uses: shorebirdtech/setup-shorebird@v1

        with:

          cache: true

      - name: Set up Java

        uses: actions/setup-java@v4

        with:

          distribution: 'temurin'

          java-version: '17'

      - name: 🚀 Shorebird Release

        uses: shorebirdtech/shorebird-release@v0

        with:

          platform: android # or 'ios'
```

## Create Patches

```

name: Shorebird Patch

on:

  workflow_dispatch:

env:

  SHOREBIRD_TOKEN: ${{ secrets.SHOREBIRD_TOKEN }}

jobs:

  patch:

    defaults:

      run:

        shell: bash

    runs-on: ubuntu-latest

    steps:

      - name: 📚 Git Checkout

        uses: actions/checkout@v3

      - name: 🐦 Setup Shorebird

        uses: shorebirdtech/setup-shorebird@v1

        with:

          cache: true

      - name: Set up Java

        uses: actions/setup-java@v4

        with:

          distribution: 'temurin'

          java-version: '17'

      # Note: all signing information (key.properties, etc.) must be set up on

      # this runner for `shorebird patch android` to work.

      - name: 🚀 Shorebird Patch

        uses: shorebirdtech/shorebird-patch@v0

        with:

          platform: android # or 'ios'
```

For an example of a fully automated development workflow, see our [Development Workflow Guide](https://docs.shorebird.dev/guides/development-workflow).
