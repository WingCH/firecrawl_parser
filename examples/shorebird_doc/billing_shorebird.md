---
title: 'Billing | Shorebird'
ogTitle: 'Billing'
description: 'How Shorebird handles Billing'
type: 'article'
url: 'https://docs.shorebird.dev/billing/'
---

[Skip to content](https://docs.shorebird.dev/billing/#_top)

# Billing

Shorebird uses Stripe for all billing. We accept payment in any method that
Stripe accepts.

Annual billing, invoice billing and other payment methods are also available to
customers purchasing over 1M patches per month, or custom enterprise plans. See
our [pricing page](https://shorebird.dev/pricing) for more information.

The Shorebird Pro plan costs $20 per month, due at the beginning of each billing
cycle, starting with time of purchase.

Shorebird charges based on successful patch installs, which are reported by your
app to Shorebird servers on successful launch of your application with a newly
installed patch (you are not charged if the user never launches the patch).

The Shorebird Pro plan includes 50,000 patch installs and supports optional
overage billing for installs beyond 50,000.

See [our blog](https://shorebird.dev/blog/simplified-pricing/) for instructions
on how to enable overage billing.

Overages will appear on the next month’s invoice. For example, if you purchase a
Pro plan (which includes 50,000 patch installs) and use 100,000 patches every
month:

- You will be billed $20 at time of purchase (Month 1)
- At the start of every month afterwards, you will be billed for the 50,000 for
the that month, as well as the 50,000 overages from the previous month, for a
total of $40.

You can view records of patch installs in [your accounts\\
page](https://console.shorebird.dev/account) on the Shorebird Console. These
numbers are updated hourly.
