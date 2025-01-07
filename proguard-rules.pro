# Project-specific ProGuard rules
# You can control the set of applied configuration files using the proguardFiles setting in build.gradle.
# For more details, see http://developer.android.com/guide/developing/tools/proguard.html

# Keep main activity to avoid breaking the app
-keep public class uk.lgl.MainActivity {
    public *;
}

# Keep the method signatures of any entry points you call, for example, "Start" methods or other public API methods.
-keepclassmembers class ** {
    public static void Start(...);
}

# Obfuscate everything else except for essential Android classes and libraries.

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name of the JavaScript interface class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Preserve the line number information for debugging stack traces, if necessary.
# You may want to comment this out for full obfuscation.
#-keepattributes SourceFile,LineNumberTable

# Optionally, hide the original source file name if you keep the line number information.
#-renamesourcefileattribute SourceFile

# Keep native libraries (JNI) if you are using any native code.
-keepclasseswithmembers class * {
    native <methods>;
}

# Keep everything inside uk.lgl.modmenu package to ensure the mod menu service works properly.
-keep class uk.lgl.modmenu.** { *; }

# Preserve the attributes necessary for reflection, keep public methods and fields used for modding.
-keepattributes *Annotation*, Signature, EnclosingMethod, InnerClasses

# Keep the entire app's manifest and essential components to avoid issues with app startup.
-keep class **.R$* { *; }
-keep class android.support.v4.** { *; }
-keep class android.support.v7.** { *; }
-keep class androidx.** { *; }

# Keep your API model classes (JSON response models) if needed for serialization/deserialization
-keep class uk.lgl.api.** { *; }

# You can keep or obfuscate any other specific libraries you use here, like Retrofit, Gson, etc.

# Keep any custom classes or libraries required by the app's functionality
# Modify as per your dependencies and custom frameworks.

# Ensure that sensitive functionality related to API calls, encryption, etc., is obfuscated.

# Keep the MainActivity class and all methods
-keep class uk.lgl.MainActivity { *; }

# Obfuscate other classes and methods
-dontwarn uk.lgl.**

# Uncomment this to preserve the line number information for
# debugging stack traces.
-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
-renamesourcefileattribute SourceFile

-keep class retrofit2.** { *; }
-keep class com.google.gson.** { *; }
-keepclassmembers class ** {
    @androidx.annotation.StringRes <fields>;
}

-keep class uk.lgl.api.model.** { *; }

-dontshrink
-optimizationpasses 5


# Enable ProGuard for release builds
-keepattributes *Annotation*
-allowaccessmodification

# Keep the application’s entry point (MainActivity)
-keep public class uk.lgl.MainActivity {
    public *;
}

# Keep method signatures of entry points
-keepclassmembers class ** {
    public static void Start(...);
}

# Obfuscate everything else
# Keep all classes in uk.lgl.modmenu to ensure mod menu works properly
-keep class uk.lgl.modmenu.** { *; }

# Keep any native method declarations
-keepclasseswithmembers class * {
    native <methods>;
}

# Preserve reflection-related attributes
-keepattributes *Annotation*, Signature, EnclosingMethod, InnerClasses

# Keep the entire app's manifest and essential Android components
-keep class **.R$* { *; }
-keep class android.support.v4.** { *; }
-keep class android.support.v7.** { *; }
-keep class androidx.** { *; }

# Keep your API model classes (JSON response models) for serialization/deserialization
-keep class uk.lgl.api.** { *; }

# Obfuscate all other classes and methods
# By default, ProGuard will obfuscate names
-dontwarn uk.lgl.**

# Additional obfuscation options
# Enables full obfuscation of class and method names
-dontshrink
-dontoptimize
-keepattributes SourceFile,LineNumberTable
-renamesourcefileattribute SourceFile

# Ensure that sensitive functionality related to API calls, encryption, etc., is obfuscated
-keepclassmembers class ** {
    @androidx.annotation.StringRes <fields>;
}

# Keep all string fields (optional, uncomment if needed)
# -keepclassmembers class * {
#     java.lang.String *;
# }

# Obfuscate all public classes
# This will rename all public classes, methods, and fields to random names
# Note: This will make debugging difficult; use with caution.
# Use only for release builds where debugging is not required.

# Enable ProGuard for release builds
-allowaccessmodification

# Obfuscate MainActivity, randomizing all methods and variables inside it
# This will ensure MainActivity has highly randomized names for all its members
-keep class uk.lgl.MainActivity {
    <fields>;
    <methods>;
}

# Allow deep obfuscation within MainActivity and remove debug information
-repackageclasses
-keepattributes !SourceFile, !LineNumberTable

# Obfuscate everything else except Android core components
# This will ensure other components also have random names and less readable code
-keep class android.support.v4.** { *; }
-keep class android.support.v7.** { *; }
-keep class androidx.** { *; }

# Remove all non-essential annotations and attributes
# This minimizes the amount of extra information kept in the APK
-keepattributes *Annotation*
-keepattributes EnclosingMethod, InnerClasses

# Obfuscate all native methods to make JNI harder to trace
-keepclasseswithmembers class * {
    native <methods>;
}

# Remove all debugging information
-dontwarn
-dontshrink
-dontoptimize
-dontpreverify
-keepattributes *Annotation*
-renamesourcefileattribute "SiwamWasHere"
-printmapping mapping.txt

# Aggressively rename everything else to random names
-optimizationpasses 10
-overloadaggressively
-flattenpackagehierarchy ""

# Enable full obfuscation, including class, method, and field renaming
-allowaccessmodification

# Remove all debug information to prevent reverse engineering hints
-dontpreverify
-dontshrink
-dontoptimize
-keepattributes *Annotation*

-keepattributes *Annotation*
-allowaccessmodification
-repackageclasses
-dontshrink
-dontoptimize

# Keep all class fields and methods with specific annotations
-keepclassmembers class ** {
    @androidx.annotation.StringRes <fields>;
    @androidx.annotation.DrawableRes <fields>;
}

# Preserve all model classes for serialization
-keep class uk.lgl.api.model.** { *; }

# Keep specific libraries
-keep class okhttp3.** { *; }
-keep class com.squareup.okhttp.** { *; }

# Preserve classes and methods used via reflection
-keep class ** {
    @com.google.gson.annotations.SerializedName <fields>;
    <methods>;
}

# Keep attributes necessary for deserialization
-keepattributes Signature

# Keep main activity to avoid breaking the app
-keep public class uk.lgl.MainActivity {
    public *;
}

# Keep encryption-related classes
-keep class uk.lgl.encryption.** { *; }

# Preserve annotations used for security
-keepattributes *Annotation*

# Keep API model classes
-keep class uk.lgl.api.model.** { *; }

# Preserve method names for API calls
-keepclassmembers class ** {
    public void apiCall(...);
}

# Keep native method classes
-keepclasseswithmembers class * {
    native <methods>;
}

# Preserve line number information for debugging
-keepattributes SourceFile,LineNumberTable

# Keep everything inside uk.lgl.modmenu package to ensure the mod menu service works properly.
-keep class uk.lgl.modmenu.** { *; }

# Preserve reflection-related attributes
-keepattributes *Annotation*, Signature, EnclosingMethod, InnerClasses

# Keep the entire app's manifest and essential components to avoid issues with app startup.
-keep class **.R$* { *; }
-keep class android.support.v4.** { *; }
-keep class android.support.v7.** { *; }
-keep class androidx.** { *; }

# Obfuscate everything else except for essential Android classes and libraries.
-dontwarn uk.lgl.**
-dontshrink
-dontoptimize

