# cheatset-yaml

Generate your own cheat sheets as docsets for [Dash](http://kapeli.com/dash) with YAML.

## Installation

```sh
$ gem install cheatset-yaml
```

Note: this requires the Xcode Command Line Tools to be installed. Install them using this:

```sh
$ xcode-select --install
```

## Usage

Write a file (here sample.yml) containing your cheat sheet data, e.g.:

```yaml
cheatsheet:
  title: Sample             # Will be displayed by Dash in the docset list
  docset_file_name: Sample  # Used for the filename of the docset
  keyword: sample           # Used as the initial search keyword (listed in Preferences > Docsets)
  resources: resources_dir  # An optional resources folder which can contain images or anything else

  introduction: 'My *awesome* cheat sheet'  # Optional, can contain Markdown or HTML

  # A cheat sheet must consist of categories
  categories:
    - id: Windows # Must be unique and is used as title of the category
      entries:
        - name: Create Window # A short name, can contain Markdown or HTML
          notes: Some notes   # Optional longer explanation, can contain Markdown or HTML
          command:
          - CMD+N       # Optional
          - CMD+SHIFT+N # Multiple commands are supported
        - name: Close Window
          command: CMD+W
    - id: Code
      entries:
        - name: Code sample
          notes: >
            You can include code `snippets` as well
            Or anything else **Markdown** or HTML.

  notes: 'Some notes at the end of the cheat sheet'
```

To convert this file to a docset, call

```sh
$ cheatset-yaml generate sample.yml
```

The following values may contain Markdown or HTML:

- The `introduction` and the `notes` of the cheat sheet
- The `name` and the `notes` of the entries

## Advance Usage

See more original repository [Kapeli/cheatset](https://github.com/Kapeli/cheatset).

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
