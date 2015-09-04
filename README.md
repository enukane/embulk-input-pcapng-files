# Pcapng Files input plugin for Embulk

embulk plugin for pcapng files input.

Obsoletes enukane/embulk-plugin-input-pcapng-files

## Overview

* **Plugin type**: input
* **Load all or nothing**: yes
* **Resume supported**: no

## Configuration

### Original options

|name|type|required?|default|description|
|:---|:---|:--------|:------|:----------|
| paths | string | required | [] | paths where pcapng files exist (no recursive searching|
| convertdot | string | optional | nil | convert "." in field name (for outputing into DB who doesn't accept "dot" in schema)|
| schema| array of field hash | required | nil | list of field to extract from pcapng file |
|field hash| hash ({name, type}) | required | nil | "name" matches field name for tshakr (-e), "type" should be "long", "double", "string" |

## Example

```yaml
in:
  type: pcapng_files
  paths: [ /Users/enukane/Desktop/emtestpcap/ ]
  convertdot: "__"
  threads: 2
  schema:
    - { name: frame.number,                 type: long }
    - { name: frame.time_epoch,             type: double }
    - { name: frame.len,                    type: long }
    - { name: wlan_mgt.ssid,                type: string }
```

## Build

```
$ rake
```
