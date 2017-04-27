## dotfiles

**To checkout:**

```console
$ git clone --recursive https://github.com/dholt/dotfiles.git
```

**To install:**

```console
$ make
```

This will create symlinks from this repo to your home folder.

**To customize:**

Save env vars, etc in a `.extra` file, that looks something like
this:

```bash
###
### Git credentials
###

GIT_AUTHOR_NAME="Your Name"
GIT_AUTHOR_EMAIL="my@email.com"
GH_USER="nickname"
GPG_KEY_ID="0x..."

GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"

git config --global user.name "$GIT_AUTHOR_NAME"
git config --global user.email "$GIT_AUTHOR_EMAIL"
git config --global github.user "$GH_USER"
git config --global user.signingkey "$GPG_KEY_ID"
```

#### `.vim`

Update submodules:

```console
$ git submodule update --init
```

Example for adding new plugins:

```console
$ cd .vim/bundle && \
  git submodule add git://github.com/altercation/vim-colors-solarized.git
```
