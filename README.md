# Pcapng Files input plugin for Embulk

embulk plugin for pcapng files input.

Obsoletes enukane/embulk-plugin-input-pcapng-files

## Overview

* **Plugin type**: input
* **Load all or nothing**: yes
* **Resume supported**: no

## Configuration

- **paths**: Paths to search pcapng (not recursive)
- **schema**: List of fields to extract

## Example

```yaml
in:
  type: pcapng_files
  paths: [ /Users/enukane/Desktop/emtestpcap/ ]
  threads: 2
  schema:
    - { name: frame.number,                 type: long }
    - { name: frame.time_epoch,             type: long }
    - { name: frame.len,                    type: long }
```

## Build

```
$ rake
```
