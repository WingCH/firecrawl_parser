import 'dart:io';
import 'package:firecrawl_parser/firecrawl_parser.dart';

void main(List<String> arguments) async {
  if (arguments.length != 2) {
    print('Usage: dart script.dart <input_directory> <output_directory>');
    exit(1);
  }

  final inputDir = Directory(arguments[0]);
  final outputDir = Directory(arguments[1]);

  // Ensure output directory exists
  if (!outputDir.existsSync()) {
    outputDir.createSync(recursive: true);
  }

  final parser = FirecrawlParser(inputDir: inputDir, outputDir: outputDir);
  await parser.processFiles();
}
