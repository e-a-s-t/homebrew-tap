# e-a-s-t/homebrew-tap

Homebrew tap.

## Install tap

```bash
brew tap e-a-s-t/tap
```

## Install ctop

```bash
brew install e-a-s-t/tap/ctop
```

## Install lore

```bash
brew install e-a-s-t/tap/lore
```

## Install x9s

```bash
brew tap e-a-s-t/tap
brew install x9s
```

Or install it directly from the tap:

```bash
brew install e-a-s-t/tap/x9s
```


## Upgrade

```bash
brew update
brew upgrade ctop
brew upgrade lore
brew upgrade x9s
```

## x9s formula updates

The `Update x9s formula` workflow checks daily for the latest stable x9s
release. It verifies that all four macOS and Linux release archives are
available, calculates their SHA256 checksums, validates the updated formula
with Homebrew, and commits the change only when the formula version changes.
To run it manually, open **Actions → Update x9s formula → Run workflow**. The
version field is optional; leave it blank for the latest stable release or
enter a published stable version such as `0.1.5` or `v0.1.5`.
