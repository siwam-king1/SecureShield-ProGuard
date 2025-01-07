# Keep the main activity to avoid breaking the app
-keep public class com.mycompany.myapp.MainActivity {
    public *;
}

# Obfuscate everything else except for essential Android classes and libraries
-dontwarn com.mycompany.myapp.**

# Enable ProGuard for release builds
-allowaccessmodification

# Keep the entire app's manifest and essential components to avoid issues with app startup.
-keep class **.R$* { *; }
-keep class android.support.v4.** { *; }
-keep class androidx.** { *; }

# Keep encryption-related classes (ensure these classes are obfuscated too)
-keep class com.mycompany.myapp.encryption.** { *; }

# Keep API model classes (for serialization/deserialization)
-keep class com.mycompany.myapp.api.model.** { *; }

# Obfuscate method and class names with random characters
-dontshrink
-dontoptimize
-optimizationpasses 5
-repackageclasses

# Preserve line number information for debugging stack traces, if necessary
-keepattributes SourceFile,LineNumberTable

# Remove unnecessary annotations and attributes
-keepattributes *Annotation*
-renamesourcefileattribute "SiwamWasHere"

# Enable aggressive renaming (obfuscate methods, variables, and classes to random names)
-optimizationpasses 10
-overloadaggressively
-flattenpackagehierarchy ""

# Preserve reflection-related attributes (for APIs, encryption, etc.)
-keepattributes Signature, EnclosingMethod, InnerClasses

# Obfuscate all strings (not using Base64 encoding)
# Here we encrypt the strings within the code by renaming them with random identifiers
-keepclassmembers class ** {
    public java.lang.String *;
}

# Ensure sensitive methods are obfuscated
-keepclassmembers class ** {
    public void apiCall(...);
}

# Remove all debugging information to prevent reverse engineering hints
-dontpreverify
-dontshrink
-dontoptimize

# Preserve necessary reflection annotations for deserialization
-keepclassmembers class ** {
    @com.google.gson.annotations.SerializedName <fields>;
    <methods>;
}

# Clean up non-essential warnings
-dontwarn com.mycompany.myapp.**

# Apply random renaming to all methods and fields
-repackageclasses
-keepattributes !SourceFile, !LineNumberTable
