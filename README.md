# Dev Shell: 1632

## What is this?

A shell with all the package requirements for this class. Run everything you
need on your machine with a single command, no manual Java installation
necessary.

<p align="center">
  <img src="/.github/media/terminal.gif" />
</p>

## Why?

> Codespaces are very useful, but sometimes you just need a quick terminal
> for debugging.

## How do I use this?

First, you will need to install the [Nix package manager](https://nixos.org/download).

Enable experimental `nix` features (one time setup):

```bash
echo "extra-experimental-features = nix-command flakes" >>
~/.config/nix/nix.conf

```

Clone this repository:

```bash
git clone git@github.com/aaronjsutton/dev-shell-1632
```

**Run the shell via `nix develop`**:

```bash
cd dev-shell-1632
nix develop
```

Wait a _hot minute_ for the magic to happen, and you'll see a new shell has been
started. This shell has `git`, `mvn`, and all the Java 11 tools necessary&mdash;
have a blast.

### What platforms?

- macOS, and any Linux distro provided you have Nix.
- Docker
- Windows?

### Does it support Docker?

Yes.

```bash
cd dev-shell-1632
docker run -it -v $PWD:/root/workspace -w /root/workspace nixos/nix
```

### Does it support Windows?

Probably yes, if you use [WSL](https://learn.microsoft.com/en-us/windows/wsl/about).

### Does it support Apple Silicon?

Probably not.
