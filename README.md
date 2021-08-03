Mac backup for PrusaSlicer
==========================

## Overview

This repository holds my personal PrusaSlicer configurations.

## Backed up files

The following directories are backed up:

```
~/Library/Application Support/PrusaSlicer/filament/*
~/Library/Application Support/PrusaSlicer/printer/*
```

The scripts DO NOT back up the physical_printer directory. If you decide to add this, be aware that it can reveal your
OctoPrint API key!

## Usage

### Backing up:

```
./backup.sh
```

### Restoring:

```
./restore.sh
```

## Thinking of contributing?

Please do! Pull requests will be reviewed and merged.
