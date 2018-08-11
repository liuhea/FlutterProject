# flutter_app

A new Flutter application.

## Getting Started

For help getting started with Flutter, view our online
[documentation](https://flutter.io/).

## Issue List

1. 环境配置完成,hello world运行提示错误

```
Android 项目配置环境local.properties下

Unable to locate a development device; please run 'flutter doctor' for information about installing additional components.
```

2. 运行flutter doctor ,日志如下:

```
Doctor summary (to see all details, run flutter doctor -v):
[✓] Flutter (Channel beta, v0.5.1, on Linux, locale en_US.UTF-8)
[!] Android toolchain - develop for Android devices (Android SDK 28.0.1)
    ✗ Android SDK file not found: /home/liuhe/Android/Sdk/build-tools/28.0.1/aapt.
[✓] Android Studio (version 3.1)
[!] IntelliJ IDEA Ultimate Edition (version 2018.1)
    ✗ Flutter plugin not installed; this adds Flutter specific functionality.
    ✗ Dart plugin not installed; this adds Dart specific functionality.
[!] VS Code (version 1.25.1)
[✓] Connected devices (2 available)
! Doctor found issues in 3 categories.
```

**解决:** 

​	(1) 升级build-tools版本,

​	(2) 否则尝试使用以下方法: https://blog.csdn.net/langzxz/article/details/80933515

3.图片资源无法加载
```
Error on line 30, column 4 of pubspec.yaml: Expected a key while parsing a block mapping.
   assets:
   ^
pub get failed (65)
```

## 其他
    1. 在Dart语言中使用下划线前缀标识符，会强制其变成私有的。
    2. 在Flutter中，导航器管理应用程序的路由栈。
    将路由推入（push）到导航器的栈中，将会显示更新为该路由页面。 从导航器的栈中弹出（pop）路由，将显示返回到前一个路由。
