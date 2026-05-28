# Flutter Stripe Proguard Rules
-keep class com.stripe.android.** { *; }
-dontwarn com.stripe.android.**
-keep class com.reactnativestripesdk.** { *; }
-dontwarn com.reactnativestripesdk.**

# Suppress R8 warnings for missing classes
-dontwarn com.stripe.android.pushProvisioning.**
