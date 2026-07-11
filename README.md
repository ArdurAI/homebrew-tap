# ArdurAI Homebrew tap

This tap distributes signed release formulae for ArdurAI tools.

## Sith

```bash
brew tap ArdurAI/tap
brew install sith
sith version --output json
```

`Formula/sith.rb` is synchronized from the latest stable
[`ArdurAI/sith`](https://github.com/ArdurAI/sith/releases) release. The updater verifies the
formula's keyless Sigstore identity, verifies the signed release checksum manifest, and checks
every formula URL/hash pair against that manifest before changing this repository. The Sith
repository has no write token for this tap.

Published formula updates run Homebrew audit, install, and test on macOS. Release verification
commands and the trust model live in the
[Sith release guide](https://github.com/ArdurAI/sith/blob/main/docs/RELEASE.md).
