# prelude

A small BSD-licensed Haskell Prelude, designed for copying-and-pasting
directly into projects.

This is intended as a starting point for your project-specific
Prelude.

## Usage

Copy `P.hs` into your project. Feel free to rename it.

Check it in, edit it however you like, and feel free to suggest robust
changes via GitHub issues!

## Guidelines

- Re-export from `base` only
    - may also eventually allow libraries distributed with GHC
- Unsafe exports must have `WARNING` pragmas
    - Partial functions are only provided for interactive use
- Maintain portability across three versions of GHC
    - current compatibility window: 7.10, 8.0, 8.2
- Whitelist, not blacklist
    - Breakage from upstream is unacceptable
