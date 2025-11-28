# Keep all Google Play Core SplitInstall / SplitCompat classes
-keep class com.google.android.play.core.** { *; }
-dontwarn com.google.android.play.core.**

# Keep Flutter Deferred Components manager
-keep class io.flutter.embedding.engine.deferredcomponents.** { *; }

# Keep Flutter embedding
-keep class io.flutter.** { *; }
-dontwarn io.flutter.**

# Keep Kotlin metadata
-keep class kotlin.** { *; }
-dontwarn kotlin.**

# Keep AndroidX
-keep class androidx.** { *; }
-dontwarn androidx.**
