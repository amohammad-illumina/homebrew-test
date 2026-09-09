# homebrew-test

Throwaway Homebrew tap used to validate the dual-architecture formula mechanism
(arm64 vs. amd64 selection on macOS) end-to-end, before the real BASE-89703
change to `basespace/homebrew-basespace` ships.

It ships a tiny hello-world Go binary (built with the same Go version as the
BaseSpace CLI, go 1.25.9) for both `arm64-osx` and `amd64-osx`, committed
directly into the repo under `dist/<version>/<arch>/hello`. The formula selects
the correct one automatically via `on_macos { on_arm / on_intel }`.

## Install / test

```bash
brew tap amohammad-illumina/test https://github.com/amohammad-illumina/homebrew-test.git
brew install amohammad-illumina/test/hello-cli

hello                              # prints the arch it was built for
lipo -archs "$(brew --prefix)/bin/hello"   # arm64 on Apple Silicon, x86_64 on Intel
```

## Cleanup

```bash
brew uninstall hello-cli
brew untap amohammad-illumina/test
```

## Layout

```
src/main.go                  # hello-world source
dist/1.0.0/arm64-osx/hello   # committed native arm64 binary
dist/1.0.0/amd64-osx/hello   # committed native amd64 binary
hello-cli.rb                 # the formula (mirrors the real dual-arch structure)
```
