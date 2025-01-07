# SecureShield-ProGuard 🛡️

**Ultimate ProGuard Configuration for Android Security**  
Efficiently secure, obfuscate, and optimize your Android app with this powerful ProGuard ruleset.
## **Changing the Package Name**  
To make this ProGuard configuration work with your app, replace all instances of `uk.lgl` with your app's actual package name.

For example, if your package name is `com.example.app`, you should replace all occurrences of `uk.lgl` with `com.example.app` in the ProGuard file.

This includes the package name for:
- **MainActivity**
- **ModMenu**
- **API models**
- Any other references to `uk.lgl`

Make sure the package name used in the ProGuard file matches the package name of your app.

---

## **Features**  
- 🔒 **Code Obfuscation**: Obfuscates class, method, and package names to prevent reverse engineering.  
- 🎯 **Essential Component Preservation**: Keeps Android libraries, resources, and main components intact.  
- 🚀 **Performance Optimization**: Includes multiple optimization passes for improved build efficiency.  
- 🌐 **Reflection & Library Compatibility**: Maintains support for Gson, Retrofit, OkHttp, and other critical libraries.  
- 🔐 **Sensitive Code Protection**: Safeguards encryption methods, API models, and other sensitive logic.

---
---

# **ProGuard Setup Guide**

Follow these steps to set up ProGuard and optimize your Android app:

### **Step 1: Update ProGuard Configuration**
- Open the `proguard-rules.pro` file in your project.
- Replace all instances of `com.mycompany.myapp` with **your app’s package name**.  
  Example: If your package name is `com.example.myapp`, replace accordingly.

---

### **Step 2: Enable ProGuard in `build.gradle`**
- Open the `build.gradle` file located in your app module.
- Ensure the following lines are added to the `release` block:
  ```gradle
  buildTypes {
      release {
          minifyEnabled true
          shrinkResources true
          proguardFiles getDefaultProguardFile('proguard-android-optimize.txt'), 'proguard-rules.pro'
      }
  }
  ```

---

### **Step 3: Enable Dex Optimization in AIDE**
- Open **AIDE Settings**.
- Navigate to **Build > Advanced > Build and Run**.
- Enable the **Dex Optimization** option.

---

### **Step 4: Refresh the Build in AIDE**
- Tap the **three dots** in the top-right corner of AIDE.
- Go to **Projects**.
- Select **Refresh Build**.

---

### **Step 5: Generate and Install APK**
- Open **Build > Generate Signed APK** in AIDE.
- Follow the steps to create a signed APK file.
- Install the APK on your device.

---

### **Note**
- Ensure you’ve replaced all instances of `com.mycompany.myapp` in your code and ProGuard rules.
- Obfuscation and optimization will only work for release builds

## **Benefits**  
- **Security**: Obfuscates sensitive code, making it harder for attackers to reverse-engineer.
- **Performance**: Helps reduce APK size and improves runtime efficiency with optimizations.
- **Compatibility**: Ensures the app remains functional even with extensive obfuscation, by preserving key classes and libraries.

---

## **FAQ**  
**Q: Can I use this with existing Android projects?**  
- Yes! Simply integrate the ProGuard rules into your project and ensure that `minifyEnabled` is set to `true` for release builds.

**Q: Does it support both Java and Kotlin?**  
- Yes! This configuration works for both Java and Kotlin-based Android projects.

---

## **Contributing**  
Feel free to contribute by opening issues or submitting pull requests for improvements!

---

## **Credits**  
- Developed by **Siwam** ([@Siwam_Mods](https://t.me/Siwam_Mods))  
- Based on the work of various contributors in the Android development community.  
- Special thanks to the open-source community for their continuous efforts in improving Android security tools.

---

## **License**  
This project is licensed under the [MIT License](LICENSE).
