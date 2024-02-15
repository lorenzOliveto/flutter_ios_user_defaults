# Flutter + iOS UserDefaults

Package to retrieve iOS  UserDefaults from a Flutter project.

# Why?

Why do we needed this plugin, and we couldn't use the standard [shared_preferences](https://pub.dev/packages/shared_preferences):
 
- To get rid of the `flutter.` prefix 
- Using [Appetize](appetize.io) the data passed as launch parameters were not present anymore
- We don't want the cache, we just want to access the `UserDefaults` data from Flutter.