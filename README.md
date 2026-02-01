# Homebrew Tap for musicd

This repository is a Homebrew tap for installing **musicd** as a native macOS CLI tool using `brew`.

`musicd` is a terminal-native music player daemon powered by mpv and yt-dlp.

This tap does not contain the musicd source code.  
It only contains the Homebrew formula that tells brew how to install musicd from its GitHub releases.

---

## Install

```bash
brew tap ykarakoti77/musicd
brew install musicd
```

Homebrew will automatically install all required dependencies:

- python@3.12
- mpv
- yt-dlp

After installation, the `dj` command becomes globally available.

```bash
dj --help
```

---

## How This Works (Architecture)

There are three parts involved:

1. **musicd repository**  
   Contains the Python project and GitHub releases (tarballs).

2. **homebrew-musicd repository (this repo)**  
   Contains the formula (`Formula/musicd.rb`) which tells brew how to install musicd.

3. **Homebrew local tap clone**  
   When you run `brew tap ykarakoti77/musicd`, brew clones this repo into its own internal directory and uses that copy for all operations.

Brew never reads your local folders. It only reads its internal tap clone.

---

## Maintainer Workflow (Very Important)

After running:

```bash
brew tap ykarakoti77/musicd
```

You must edit the tap **inside brew’s directory**, not a separate local copy.

Go to the real tap location:

```bash
cd $(brew --repo ykarakoti77/musicd)
```

This is the repository brew uses.

---

## Releasing a New Version of musicd

After creating a new GitHub release in the `musicd` repo (for example `v0.1.2`):

```bash
cd $(brew --repo ykarakoti77/musicd)

brew bump-formula-pr --write \
  --url=https://github.com/Ykarakoti77/musicd/archive/refs/tags/v0.1.2.tar.gz \
  musicd

brew audit --strict musicd
git commit -am "musicd v0.1.2"
git push
```

This automatically updates the URL and sha256 in the formula.

---

## License

MIT
