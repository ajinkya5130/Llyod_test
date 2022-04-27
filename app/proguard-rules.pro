# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile

# From here

##---------------Begin: proguard configuration common for all Android apps ----------
#-optimizationpasses 5
#-dontusemixedcaseclassnames
#-dontskipnonpubliclibraryclasses
#-dontskipnonpubliclibraryclassmembers
#-dontpreverify
#-verbose
##-dump class_files.txt
#-printseeds seeds.txt
#-printusage unused.txt
#-printmapping mapping.txt
#-optimizations !code/simplification/arithmetic,!field/*,!class/merging/*
#
#-allowaccessmodification
#-keepattributes *Annotation*
#-renamesourcefileattribute SourceFile
#-keepattributes SourceFile,LineNumberTable
#-repackageclasses ''
#
#-keep public class * extends android.app.Activity
#-keep public class * extends android.app.Application
#-dontnote com.android.vending.licensing.ILicensingService
#
## Explicitly preserve all serialization members. The Serializable interface
## is only a marker interface, so it wouldn't save them.
#-keepclassmembers class * implements java.io.Serializable {
#    static final long serialVersionUID;
#    private static final java.io.ObjectStreamField[] serialPersistentFields;
#    private void writeObject(java.io.ObjectOutputStream);
#    private void readObject(java.io.ObjectInputStream);
#    java.lang.Object writeReplace();
#    java.lang.Object readResolve();
#}
#
## Preserve all native method names and the names of their classes.
#-keepclasseswithmembernames class * {
#    native <methods>;
#}
#
##-keepclasseswithmembernames class * {
##    public <init>(android.content.Context, android.util.AttributeSet);
##}
#
#-keepclasseswithmembernames class * {
#    public <init>(android.content.Context, android.util.AttributeSet, int);
#}
#
## Preserve static fields of inner classes of R classes that might be accessed
## through introspection.
#-keepclassmembers class **.R$* {
#  public static <fields>;
#}
#
## Preserve the special static methods that are required in all enumeration classes.
#-keepclassmembers enum * {
#    public static **[] values();
#    public static ** valueOf(java.lang.String);
#}
#
#-keep public class * {
#    public protected *;
#}
#
#-keep class * implements android.os.Parcelable {
#  public static final android.os.Parcelable$Creator *;
#}
###---------------End: proguard configuration common for all Android apps ----------
#
##---------------Begin: proguard configuration for support library  ----------
#-keep class android.support.v4.app.** { *; }
#-keep interface android.support.v4.app.** { *; }
#-keep class com.actionbarsherlock.** { *; }
#-keep interface com.actionbarsherlock.** { *; }
#
## The support library contains references to newer platform versions.
## Don't warn about those in case this app is linking against an older
## platform version. We know about them, and they are safe.
#-dontwarn android.support.**
#-dontwarn com.google.ads.**
###---------------End: proguard configuration for Gson  ----------
#
###---------------Begin: proguard configuration for Gson  ----------
## Gson uses generic type information stored in a class file when working with fields. Proguard
## removes such information by default, so configure it to keep all of it.
#-keepattributes Signature
#
## For using GSON @Expose annotation
#-keepattributes *Annotation*
#
##-keep class com.google.gson.stream.** { *; }
#
## Application classes that will be serialized/deserialized over Gson
#-keep class com.ajinkya.llyodtest.model.** { *; }
#
#-dontwarn retrofit.**
#-keep class retrofit.** { *; }
#-keepattributes Signature
#-keepattributes Exceptions
#
#-keepattributes Signature
#-keepattributes *Annotation*
#-keep class okhttp3.** { *; }
#-keep interface okhttp3.** { *; }
#-dontwarn okhttp3.**
#-dontnote okhttp3.**

##---------------End: proguard configuration for Gson  ----------

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}
