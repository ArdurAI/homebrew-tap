# ArdurAI Homebrew tap

This tap distributes release formulae and casks for ArdurAI tools. Each section below says how its
package is built and verified.

## Sith

```bash
brew tap ArdurAI/tap
brew trust --formula ArdurAI/tap/sith
brew install sith
sith version --output json
```

Homebrew 6 requires explicit trust for third-party taps. Trusting this one formula preserves a
smaller boundary than trusting every current and future formula in the tap. Older Homebrew releases
that do not implement tap trust can omit the `brew trust` line.

`Formula/sith.rb` is synchronized from the latest stable
[`ArdurAI/sith`](https://github.com/ArdurAI/sith/releases) release. The updater verifies the
formula's keyless Sigstore identity, verifies the signed release checksum manifest, and checks
every formula URL/hash pair against that manifest. It then audits, installs, and runs the candidate
formula on macOS before changing this repository. The Sith repository has no write token for this
tap.

Ordinary human-authored formula changes also run the separate tap CI. Release verification commands
and the trust model live in the
[Sith release guide](https://github.com/ArdurAI/sith/blob/main/docs/RELEASE.md).

## Ardur desktop preview

```bash
brew tap ArdurAI/tap
brew trust --cask ArdurAI/tap/ardur
brew install --cask ArdurAI/tap/ardur
```

Ardur previews are not signed or notarized yet. After installing, approve the app once in
Privacy & Security. Homebrew still checks each download against the SHA-256 in the cask.

`Casks/ardur.rb` is the `ardur.rb` file attached to each
[`ArdurAI/ardur-bot`](https://github.com/ArdurAI/ardur-bot/releases) pre-release. The release
workflow fills its version, DMG URLs and SHA-256 values from the built files; the same release's
`checksums.txt` lists those values. Cask updates are reviewed pull requests. The tap CI checks the
cask against that `checksums.txt`, audits it, and fetches the Apple silicon DMG to verify its
checksum.
