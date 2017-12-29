# DotFiles
These are the configuration I use when setting up a new computer.
Most of these files are based on the amazing dotfiles by [Mathias Bynens](https://mths.be/dotfiles)

When setting up Mac one of the first things I do is install xcode command line tools

```bash
xcode-select --install
```

# .macos
These are sensible Mac OS settings

# .bash_profile
The ```.bash_profile``` and ```.bashrc``` configure terminal settings.
Instead of having one long file, configurations are organized into other dot files.

- .bash_prompt -- Sets the prompt
- .bash_aliases -- Sets the aliases
- .bash_exports -- Sets system variables
- .bash_functions -- Define useful functions
- .bash_paths -- appends to $PATH

# .vimrc
Configuration for vim editor. This setup uses pathogen package manager.
Pathogen packages are stored in .vim directory

# .screenrc
Configuration for GNU-screen

# Homebrew
Homebrew is a package manager for Mac that makes software installation simple.
The ```brew.sh``` script installs formulaes (or command line tools) and
```brew-cask.sh``` mainly installs gui applications.
To install these formulaes and casks run the following commands.

```
./brew.sh
./brew-cask.sh
```

## Formulaes
Here is a list of formulaes installed by ```brew.sh```
You can search for formulae [here](http://formulae.brew.sh/search/screen)
Formulae can be installed using :

```bash
brew install <formulae>
```

or you can add them to ```brew.sh```
Here are the formulaes currently installed by ```brew.sh```

- [coreutils](https://www.gnu.org/software/coreutils)
- [moreutils](https://joeyh.name/code/moreutils/)
- [findutils](https://www.gnu.org/software/findutils/)
- [ack](https://beyondgrep.com)
- [rvm](https://rvm.io/rvm/install)
- [nvm](https://github.com/creationix/nvm#usage)
- [gnu-sed --with-default-names](https://www.gnu.org/software/sed/)
- [bash](https://www.gnu.org/software/bash/)
- [bash-completion2](https://github.com/scop/bash-completion)
- [php56 --with-gmp](https://secure.php.net/downloads.php#v5.6.32)
- [brew-cask-completion](https://github.com/xyb/homebrew-cask-completion)
- [wget --with-iri](https://www.gnu.org/software/wget/)
- [rename](http://plasmasturm.org/code/rename/)
- [tree](http://mama.indstate.edu/users/ice/tree/)
- [wifi-password](https://github.com/rauchg/wifi-password)
- [git](https://git-scm.com)
- [git-extras](https://github.com/tj/git-extras/blob/master/Commands.md#git-alias)
- [nco](http://nco.sourceforge.net)
- [vim --with-override-system-vi](https://vim.sourceforge.io)
- [--HEAD universal-ctags/universal-ctags/universal-ctags](http://ctags.sourceforge.net)
- [grep](https://www.gnu.org/software/grep/)
- [openssh](https://www.openssh.com)
- [ssh-copy-id](https://www.openssh.com)
- [screen](https://www.gnu.org/software/screen/)
- [csvkit](https://csvkit.readthedocs.io/en/1.0.2/)
- [datamash](https://www.gnu.org/software/datamash/)
- [drake](https://github.com/Factual/drake)

## Casks
Here is a list of casks installed by ```brew-cask.sh```
You can search for casks [here](https://caskroom.github.io/search)
Casks can be installed with the command

```bash
brew cask install <cask>
```
Here are the caskes currently installed by ```brew-cask.sh```

- java
- spectacle
- dropbox
- google-drive-file-stream
- adobe-creative-cloud
- spark
- iterm2
- atom
- sublime-text
- mactex
- skype
- slack
- google-chrome
- spotify
- ncar-ncl

# Python
Install python packages not included with anaconda with the following command

```
./conda-installs.sh
```

# Other
Now that everything is installed. Here is some other stuff I do

- Map caps-lock to control (or esc). This is done through "System Preferences" - Keyboard - "Modifier Keys"
- Setup remote machines for keyless login
```bash
ssh-keygen
ssh-copy-id <USER>@<REMOTE.MACHINE>
```
- Install VPN clients
- Install Globus personal endpoint
- Video on setting up Atom editor for Python development is [here](https://www.youtube.com/watch?v=DjEuROpsvp4)
- Video on setting up Sublime text for Python development is [here](https://www.youtube.com/watch?v=xFciV6Ew5r4)
