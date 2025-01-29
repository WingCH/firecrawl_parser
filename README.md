# Firecrawl JSON Parser

![Dart Version](https://img.shields.io/badge/dart-3.4.0%2B-blue.svg)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A local file processor for Firecrawl JSON outputs. Converts downloaded Firecrawl results into organized markdown documentation. Optimized for LLM preprocessing with clean text output.


## Installation

### Prerequisites
- Dart SDK 3.4.0+

```bash
fvm dart run firecrawl_parser <input_directory> <output_directory>
```

### Parameters
| Parameter          | Description                              |
| ------------------ | ---------------------------------------- |
| `input_directory`  | Path containing Firecrawl JSON files     |
| `output_directory` | Target path for processed markdown files |

### Input/Output Structure

#### Input Structure
```
input_directory/
├── file1.json
├── file2.json
└── ...
```

#### Output Structure
```
output_directory/
├── file1.md    # Contains cleaned markdown with metadata
├── file2.md    # Ready for LLM processing
└── ...
```

```json
[
  {
    "html": "<html>...</html>",
    "links": [
        "https://example.com/link1",
        "https://example.com/link2",
    ],
    "markdown": "markdown content",
    "metadata": {
        ...
    }
}
]
```
