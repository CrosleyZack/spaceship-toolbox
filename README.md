<h1 align="center">
  🔧 + 🚀
  <br>Spaceship Toolbx Section<br>
</h1>

<h4 align="center">
  A <a href="https://containertoolbx.org/" target="_blank">Toolbx</a> section for Spaceship prompt
</h4>

<p align="center">
  <a href="https://github.com/spaceship-prompt/spaceship-section/releases">
    <img src="https://img.shields.io/github/v/release/spaceship-prompt/spaceship-section.svg?style=flat-square"
      alt="GitHub Release" />
  </a>

  <a href="https://github.com/CrosleyZack/spaceship-toolbox/actions">
    <img src="https://img.shields.io/github/actions/workflow/status/spaceship-prompt/spaceship-gradle/ci.yaml?style=flat-square"
      alt="GitHub Workflow Status" />
  </a>

</p>

Current Toolbx version, through Toolbox (`🔧`).

## Installing

You need to source this plugin somewhere in your dotfiles. Here's how to do it with some popular tools:

### [Oh-My-Zsh]

Execute this command to clone this repo into Oh-My-Zsh plugin's folder:

```zsh
git clone https://github.com/CrosleyZack/spaceship-toolbox.git $ZSH_CUSTOM/plugins/spaceship-toolbx
```

Include `spaceship-toolbx` in Oh-My-Zsh plugins list:

```zsh
plugins=($plugins spaceship-toolbx)
```

### Manual

If none of the above methods works for you, you can install Spaceship manually.

1. Clone this repo somewhere, for example to `$HOME/.zsh/spaceship-toolbx`.
2. Source this section in your `~/.zshrc`.

### Example

```zsh
mkdir -p "$HOME/.zsh"
git clone --depth=1 https://github.com/CrosleyZack/spaceship-toolbox.git "$HOME/.zsh/spaceship-toolbx"
```

For initializing prompt system add this to your `.zshrc`:

```zsh title=".zshrc"
source "~/.zsh/spaceship-toolbx/spaceship-toolbx.plugin.zsh"
```

## Usage

After installing, add the following line to your `.zshrc` in order to include Ember section in the prompt:

```zsh
spaceship add toolbx
```

## Options

This section is shown only in directories within a foobar context.

| Variable                   |              Default               | Meaning                              |
| :------------------------- | :--------------------------------: | ------------------------------------ |
| `SPACESHIP_TOOLBX_SHOW`   |               `true`               | Show current section                 |
| `SPACESHIP_TOOLBX_PREFIX` | `$SPACESHIP_PROMPT_DEFAULT_PREFIX` | Prefix before section                |
| `SPACESHIP_TOOLBX_SUFFIX` | `$SPACESHIP_PROMPT_DEFAULT_SUFFIX` | Suffix after section                 |
| `SPACESHIP_TOOLBX_SYMBOL` |               `🔧·`                | Character to be shown before version |
| `SPACESHIP_TOOLBX_COLOR`  |             `#613583`              | Color of section                     |

## Contributing

First, thanks for your interest in contributing!

Contribute to this repo by submitting a pull request. Please use [conventional commits](https://www.conventionalcommits.org/), since this project adheres to [semver](https://semver.org/) and is automatically released via [semantic-release](https://github.com/semantic-release/semantic-release).

## License

MIT © [Zack Crosley](http://crosleyzack.com)

<!-- References -->

[Oh-My-Zsh]: https://ohmyz.sh/
