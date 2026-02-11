# mach-zed

[Zed](https://zed.dev) extension for the [Mach](https://github.com/octalide/mach) programming language.

## Features

- **Syntax highlighting** via [tree-sitter-mach](https://github.com/octalide/tree-sitter-mach)
- **Auto-indentation** for blocks, records, unions, parameter lists, and initializer lists
- **Bracket matching** and auto-closing for `{}`, `[]`, `()`, `""`, `''`
- **Comment toggling** with `#`
- **LSP integration** with [mach-lsp](https://github.com/octalide/mach-lsp) (when available on `$PATH`)

## Installation

### From the Zed Extension Registry

Once published, search for **Mach** in Zed's extension panel (`zed: extensions`) and click **Install**.

### Manual / Development

Clone this repository and symlink or copy it into your Zed extensions directory:

```bash
git clone https://github.com/octalide/mach-zed.git
ln -s "$(pwd)/mach-zed" ~/.local/share/zed/extensions/installed/mach
```

Restart Zed to pick up the extension.

## Language Server

This extension declares support for `mach-lsp`. If the `mach-lsp` binary is on your `$PATH`, Zed will launch it automatically when you open a `.mach` file.

Build `mach-lsp` from source:

```bash
git clone https://github.com/octalide/mach-lsp.git
cd mach-lsp
mach build .
```

Then add the output binary to your `$PATH`.

## Configuration

You can customize Mach-specific editor settings in your Zed `settings.json`:

```json
{
    "languages": {
        "Mach": {
            "tab_size": 4,
            "hard_tabs": false,
            "format_on_save": "off"
        }
    }
}
```

## Project Structure

```
mach-zed/
├── extension.toml              # Extension manifest (grammars, LSP, metadata)
├── languages/
│   └── mach/
│       ├── config.toml         # Language configuration (brackets, comments, etc.)
│       ├── highlights.scm      # Syntax highlighting queries
│       └── indents.scm         # Auto-indentation queries
└── README.md
```

## Contributing

1. Clone this repo alongside [tree-sitter-mach](https://github.com/octalide/tree-sitter-mach).
2. Edit queries in `languages/mach/` and reload the Zed extension to test.
3. For grammar changes, update `tree-sitter-mach` and bump the commit hash in `extension.toml`.

## License

[MIT](../mach/LICENSE)
