# ios_user_defaults

Package to retrieve UserDefaults on iOS from a Flutter project.

# Why?

Because [shared_preferences](https://pub.dev/packages/shared_preferences) has a prefix (`flutter.`) and masks some behaviors.
We don't want the cache, we just want to access the `UserDefaults` data from Flutter.