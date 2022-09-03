# Oh My Zsh Installer

This is a script to automate [Oh My Zsh](https://ohmyz.sh/) installation in development containers.
Works with any image based on Alpine, Ubuntu, Debian, CentOS or Amazon Linux.

Original code is from [zsh-in-docker](https://github.com/deluan/zsh-in-docker#readme).

## Usage

One line installation: add the following line in your `Dockerfile`:

```Dockerfile
# Default powerline10k theme, no plugins installed
RUN sh -c "$(wget -O- https://raw.githubusercontent.com/entelecheia/ekorpkit-book/main/scripts/zsh/zsh-install.sh)"
```


#### Optional arguments:

- `-d <dependency>` - Set to any value (such as `nodep`) not to install dependencies.

- `-t <theme>` - Selects the theme to be used. Options are available
  [here](https://github.com/robbyrussell/oh-my-zsh/wiki/Themes). By default the script installs
  and uses [Powerlevel10k](https://github.com/romkatv/powerlevel10k), one of the
  "fastest and most awesome" themes for `zsh`. This is my recommended theme. If `<theme>` is a url, the script will try to install the theme using `git clone`.
- `-p <plugin>` - Specifies a plugin to be configured in the generated `.zshrc`. List of bundled
  Oh My Zsh plugins are available [here](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins).
  If `<plugin>` is a url, the script will try to install the plugin using `git clone`.
- `-a <line>` - You can add extra lines at the end of the generated `.zshrc` (but before loading oh-my-zsh) by 
  passing one `-a` argument for each line you want to add. This is useful to customize plugins or themes. 
  For example, if you want to enable [case sensitive completion](https://stackoverflow.com/a/28021691):
  
  ```Dockerfile
  RUN sh -c "$(wget -O- https://raw.githubusercontent.com/entelecheia/ekorpkit-book/main/scripts/zsh/zsh-install.sh)" -- \
  -a 'CASE_SENSITIVE="true"'
  ```

#### Examples:

```Dockerfile
# Uses "robbyrussell" theme (original Oh My Zsh theme), with no plugins
RUN sh -c "$(wget -O- https://raw.githubusercontent.com/entelecheia/ekorpkit-book/main/scripts/zsh/zsh-install.sh)" -- \
    -t robbyrussell
```

```Dockerfile
# Uses "git", "ssh-agent" and "history-substring-search" bundled plugins
RUN sh -c "$(wget -O- https://raw.githubusercontent.com/entelecheia/ekorpkit-book/main/scripts/zsh/zsh-install.sh)" -- \
    -p git -p ssh-agent -p 'history-substring-search' \
    -a 'bindkey "\$terminfo[kcuu1]" history-substring-search-up' \
    -a 'bindkey "\$terminfo[kcud1]" history-substring-search-down'

```

```Dockerfile
# Uses "Spaceship" theme with some customization. Uses some bundled plugins and installs some more from github
RUN sh -c "$(wget -O- https://raw.githubusercontent.com/entelecheia/ekorpkit-book/main/scripts/zsh/zsh-install.sh)" -- \
    -t https://github.com/denysdovhan/spaceship-prompt \
    -a 'SPACESHIP_PROMPT_ADD_NEWLINE="false"' \
    -a 'SPACESHIP_PROMPT_SEPARATE_LINE="false"' \
    -p git \
    -p ssh-agent \
    -p https://github.com/zsh-users/zsh-autosuggestions \
    -p https://github.com/zsh-users/zsh-completions
```

```Dockerfile
# Uses "git", "ssh-agent" and "history-substring-search" bundled plugins and installs some more from github
RUN sh -c "$(wget -O- https://raw.githubusercontent.com/entelecheia/ekorpkit-book/main/scripts/zsh/zsh-install.sh)" -- \
    -t gnzh \
    -p git -p ssh-agent -p 'history-substring-search' \
    -p https://github.com/zsh-users/zsh-autosuggestions \
    -p https://github.com/zsh-users/zsh-completions \
    -a 'bindkey "\$terminfo[kcuu1]" history-substring-search-up' \
    -a 'bindkey "\$terminfo[kcud1]" history-substring-search-down'

```


## Notes

- The examples above use `wget`, but if you prefer `curl`, just replace `wget -O-` with `curl -L`
- This scripts requires `git` and `curl` to work properly. If your `Dockerfile` uses `root` as the
  main user, it should be fine, as the script will install them automatically. If you are using a
  non-root user, make sure to install the `sudo` package _OR_ to install `git` and `curl` packages
  _before_ calling this script
- By default this script will install the `powerlevel10k` theme, as it is one of the fastest and most
  customizable themes available for zsh. If you want the default Oh My Zsh theme, use the option
  `-t robbyrussell`
  
