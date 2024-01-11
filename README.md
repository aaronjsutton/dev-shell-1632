# Dev Shell: 1632

## What is this?

A shell with all the package requirements for this class. Run everything you
need on your machine with a single command.

<p align="center">
  <img src="/.github/media/terminal.gif" />
</p>

## Why?

> Because I like my terminal better than I do GitHub Codespaces.

## How do I use this?

First, you need to install the [Nix package manager](https://nixos.org/download).

Clone this repository:

```bash
git clone git@github.com/aaronjsutton/dev-shell-1632
cd dev-shell-1632
```

**Run the shell**:

```bash
nix develop
```

Wait a hot second for the magic to happen, and you'll see a new shell has been
started. This shell has `git`, `mvn`, and all the Java 11 tools necessary&mdash;
have a blast.

### What platforms?

- macOS, and any Linux distro provided you have Nix.
- Docker
- Windows?

### Does it support Docker?

Yes.

```bash
docker run -it -v $PWD:/root/workspace -w /root/workspace nixos/nix
```

### Does it support Windows?

Probably yes, if you use [WSL](https://learn.microsoft.com/en-us/windows/wsl/about).

### Does it support Apple Silicon?

Probably not.
