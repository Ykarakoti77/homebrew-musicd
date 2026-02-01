# Maintainer Guide — Homebrew Tap for musicd

This file explains how to maintain the Homebrew formula for musicd.

---

## Important

After running:

```bash
brew tap ykarakoti77/musicd
```

Homebrew clones this repo into its own directory and uses that copy.

Always work inside the directory Brew uses:

```bash
cd $(brew --repo ykarakoti77/musicd)
```

Do not edit a separate local copy of this repo.

---

## When a New Version of musicd is Released

Example: `v0.1.2`

### 1. Go to the tap directory

```bash
cd $(brew --repo ykarakoti77/musicd)
```

### 2. Update the formula automatically

```bash
brew bump-formula-pr --write \
  --url=https://github.com/Ykarakoti77/musicd/archive/refs/tags/v0.1.2.tar.gz \
  musicd
```

### 3. Audit

```bash
brew audit --strict musicd
```

### 4. Test installation

```bash
brew reinstall --build-from-source musicd
```

### 5. Commit and push

```bash
git commit -am "musicd v0.1.2"
git push
```

---
