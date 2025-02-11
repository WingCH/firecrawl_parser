---
title: 'Uninstall | Shorebird'
ogTitle: 'Uninstall'
description: 'How to disable Shorebird.'
type: 'article'
url: 'https://docs.shorebird.dev/uninstall/'
---

[Skip to content](https://docs.shorebird.dev/uninstall/#_top)

# Uninstall

_First, do no harm_

Shorebird is designed to be a drop-in replacement for stock Flutter,
and can be disabled at any time with no effect on your users.

## Thank you

Thank you for trying Shorebird. If you’d like to continue using Shorebird
but have questions or concerns, please reach out to us on Discord or
via email at [contact@shorebird.dev](mailto:contact@shorebird.dev).

Otherwise, we hope you’ll consider trying Shorebird again in the future.

## Canceling your subscription

To cancel your subscription, navigate to the [Account](https://console.shorebird.dev/account)
page on the Shorebird console, select the “Edit” dropdown, and click “Cancel Subscription”.

![Screenshot 2024-01-09 at 10 37 23 AM](https://github.com/shorebirdtech/docs/assets/581764/f7abc03d-7dd7-465f-b1f6-7d963bd5aaab)

This will take you to a Stripe page that will allow you to cancel your subscription.
After cancelling, your access (and updates for your users) will continue until the
end of the current billing period. After this, Shorebird will not longer send updates
to your apps, but your apps will continue function otherwise normally.

## Deleting your account

To delete your account, email us at [contact@shorebird.dev](mailto:contact@shorebird.dev). We’ll be happy to help.

## Uninstalling Shorebird

Building with `shorebird build` will include Shorebird code push in your app.
Building with `flutter build --release` will not include Shorebird in your app.
At any time you can simply drop back to `flutter build` and things will work
as they did before.

You can remove `shorebird` from your path by removing it from your `.bashrc` or
`.zshrc` and deleting the `.shorebird` directory located in `~/.shorebird`.
