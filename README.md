# asset_gen

[![Pub Version](https://img.shields.io/pub/v/asset_gen)](https://pub.dev/packages/asset_gen)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

> A Dart CLI tool to automatically generate a Dart file containing constants for all assets in your Flutter project.

---

## ✨ Features

- 🔍 Recursively scans your `assets/` directory
- 🧾 Generates a `lib/generated/assets.dart` file
- 🔒 Avoids hardcoded strings and typos
- 🤖 Great for code completion in IDEs
- ✅ Simple to use — just one command!

---

## 🚀 Getting Started

### 1. ✅ Activate the package globally:

```bash
dart pub global activate asset_gen
```

### 2. 📁 Project structure (example):

```
my_flutter_app/
├── assets/
│   ├── images/
│   │   └── logo.png
│   └── icons/
│       └── user.png
├── lib/
```

### 3. ▶️ Run the generator:

```bash
asset_gen
```

This will generate the file:

```
lib/generated/assets.dart
```

---

## 📦 Output Example

Generated `lib/generated/assets.dart`:

```dart
// GENERATED CODE - DO NOT MODIFY BY HAND

class AppAssets {
  static const String images_logo_png = 'assets/images/logo.png';
  static const String icons_user_png = 'assets/icons/user.png';
}
```

---

## 🛠 Usage in Code

```dart
import 'generated/assets.dart';

Image.asset(AppAssets.images_logo_png);
```

---

## ⚙️ Command Options

You can optionally specify a custom asset folder:

```bash
asset_gen my_custom_assets/
```

This will scan `my_custom_assets/` instead of the default `assets/` folder.

---

## 💡 Why Use `asset_gen`?

- Prevent errors from typos in asset file paths
- Enable autocomplete for assets in your IDE
- Cleaner code — no more `'assets/.../file.png'` strings
- Easy to regenerate when assets are added/removed
- Fits right into your build or CI pipeline

---

## 📄 License

Licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

## 🙋 Contributing

Contributions, issues, and feature requests are welcome!

1. Fork this repo
2. Create your feature branch: `git checkout -b feature/awesome-feature`
3. Commit your changes: `git commit -m 'Add awesome feature'`
4. Push to the branch: `git push origin feature/awesome-feature`
5. Open a pull request

---

## 🌍 Links

- 📦 Pub.dev: [https://pub.dev/packages/asset_gen](https://pub.dev/packages/asset_gen)
- 💻 Dart SDK: [https://dart.dev](https://dart.dev)
- 🐙 GitHub: [https://github.com/yourusername/asset_gen](https://github.com/yourusername/asset_gen)

---

## ❤️ Built for Flutter Developers

Save time, reduce bugs, and make your Flutter code cleaner with `asset_gen`.
