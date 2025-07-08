import 'dart:io';

void main(List<String> arguments) async {
  final assetsDir = arguments.isNotEmpty ? arguments.first : 'assets';
  final outputPath = 'lib/generated/assets.dart';

  if (!Directory(assetsDir).existsSync()) {
    print('Directory "$assetsDir" does not exist.');
    exit(1);
  }

  final buffer = StringBuffer();
  buffer.writeln('// GENERATED CODE - DO NOT MODIFY BY HAND');
  buffer.writeln('class AppAssets {');

  final dir = Directory(assetsDir);
  await for (var entity in dir.list(recursive: true)) {
    if (entity is File) {
      final relativePath = entity.path.replaceAll('\\', '/');
      final name = relativePath
          .replaceFirst('$assetsDir/', '')
          .replaceAll(RegExp(r'[/.]'), '_')
          .replaceAll(RegExp(r'_+'), '_');

      buffer.writeln("  static const String $name = '$relativePath';");
    }
  }

  buffer.writeln('}');

  final outFile = File(outputPath);
  await outFile.create(recursive: true);
  await outFile.writeAsString(buffer.toString());

  print('✅ Asset file generated at: $outputPath');
}
