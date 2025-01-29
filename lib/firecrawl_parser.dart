import 'dart:convert';
import 'dart:io';
import 'package:firecrawl_parser/crawl_result_item.dart';

class FirecrawlParser {
  final Directory inputDir;
  final Directory outputDir;

  FirecrawlParser({required this.inputDir, required this.outputDir});

  Future<void> processFiles() async {
    final items = await _parseJsonFiles();
    await _generateMarkdownFiles(items);
  }

  Future<List<CrawlResultItem>> _parseJsonFiles() async {
    final jsonFiles = inputDir
        .listSync()
        .whereType<File>()
        .where((file) => file.path.endsWith('.json'));

    final items = <CrawlResultItem>[];
    for (final file in jsonFiles) {
      final content = await file.readAsString();
      final jsonList = json.decode(content) as List<dynamic>;
      for (final itemData in jsonList) {
        final item = CrawlResultItem.fromJson(itemData as Map<String, dynamic>);
        items.add(item);
      }
    }
    return items;
  }

  Future<void> _generateMarkdownFiles(List<CrawlResultItem> items) async {
    for (final (index, item) in items.indexed) {
      final fileName = _generateFileName(item.metadata?.title, index);
      final mdContent = StringBuffer()
        ..writeln('---')
        ..writeln('title: \'${item.metadata?.title ?? 'Untitled'}\'')
        ..writeln('ogTitle: \'${item.metadata?.ogTitle ?? ''}\'')
        ..writeln('description: \'${item.metadata?.description ?? ''}\'')
        ..writeln('type: \'${item.metadata?.ogtype ?? ''}\'')
        ..writeln('url: \'${item.metadata?.url ?? ''}\'')
        ..writeln('---')
        ..writeln()
        ..writeln(item.markdown ?? '');

      final outputFile = File('${outputDir.path}/$fileName');
      await outputFile.writeAsString(mdContent.toString());
    }
  }

  String _generateFileName(String? title, int index) {
    final baseName =
        title?.replaceAllMapped(RegExp(r'[^a-zA-Z0-9_ ]'), (match) => '') ??
            'untitled_$index';

    // Additional safety processing for filename generation
    final processedName = baseName
        .trim()
        // Convert whitespace sequences to single underscores (e.g. "hello   world" -> "hello_world")
        .replaceAll(RegExp(r'\s+'), '_')
        // Reduce consecutive underscores to single (e.g. "hello__world" -> "hello_world")
        .replaceAll(RegExp(r'_{2,}'), '_')
        // Convert to lowercase for consistency (e.g. "HelloWorld" -> "helloworld")
        .toLowerCase();

    // Length adjustment using processed string length
    final clampedLength = processedName.length.clamp(1, 50);
    return '${processedName.substring(0, clampedLength).replaceAll(RegExp(r'_+$'), '')}.md';
  }
}
