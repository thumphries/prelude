# prelude

A small BSD-licensed Haskell Prelude, designed for copying-and-pasting
directly into projects.

This is intended as a starting point for your project-specific
Prelude.

## Use case

There are many alternative Preludes available on Github and
Hackage. Personally, I prefer to avoid incurring dependencies for a
module of aliases and re-exports. I also like to have a place to dump
very general combinators as I come up with them. I decided to create a
canonical Prelude to improve this workflow somewhat.

## Guidelines

- Whitelist, not blacklist
- `base` only for now (may eventually allow libraries distributed with GHC)
- Partial functions should have WARNING pragmas