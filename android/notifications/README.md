# Notifications to be used in Android Studio
This serves as an example of multiple things.
- Shows you how to setup the source code in Android to accept notifications


## Current Version
1.0

## Software Used
Utilized PostMan for both get, post and put calls.
https://www.postman.com/

## Libraries used

#### [Libraries](https://www.npmjs.com/)
```
Java
XML
```
## Gradle.Build(Module: app) (android { section on line 17)
```
 manifestPlaceholders = [
                onesignal_app_id: 'Android_App_ID from OneSignal',
                // Project number pulled from dashboard, local value is ignored.
                onesignal_google_project_number: 'REMOTE'
        ]
```
## Gradle.Build(Module: app) (dependencies section: line 43)
```
implementation 'com.onesignal:OneSignal:3.13.2'
```
## Manifests (AndroidManifest.xml)
```
    <uses-permission android:name="android.permission.INTERNET"></uses-permission>
```
## MainActivity 
```
    import com.onesignal.OneSignal; 
    
    // OneSignal Initialization (Line 17)
        OneSignal.startInit(this)
                .inFocusDisplaying(OneSignal.OSInFocusDisplayOption.Notification)
                .unsubscribeWhenNotificationsAreDisabled(true)
                .init();
```
