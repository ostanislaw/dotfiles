# Personal GitHub account setup for this dotfiles repo

This repo (`ostanislaw/dotfiles`) lives on the **personal** GitHub account
`ostanislaw`. On a machine whose default SSH key belongs to a **work** account,
pushes fail with:

```
ERROR: Permission to ostanislaw/dotfiles.git denied to <work-user>.
```

To fix this, commits from this repo must use the personal identity and pushes
must authenticate with a personal SSH key. The three pieces below are
independent; set up whichever are missing.

## 1. Per-repo commit email

Set the commit identity **locally** on the bare repo so it overrides the global
work email in `~/.gitconfig` without affecting any other repo:

```sh
config config user.name  "Stanislaw Ostrowski"
config config user.email "52103381+ostanislaw@users.noreply.github.com"
```

The `noreply` address is GitHub's private email (Settings → Emails → "Keep my
email addresses private"). Verify the effective value:

```sh
config config user.email
```

> `config config --list` shows `user.email` twice on purpose: once from the
> global `~/.gitconfig` (work) and once from the repo-local `~/.cfg/config`
> (personal). The local value wins.

## 2. Generate a personal SSH key

Skip if `~/.ssh/id_personal` already exists.

```sh
ssh-keygen -t ed25519 -C "ostanislaw personal" -f ~/.ssh/id_personal
```

Add the **public** key to the personal GitHub account
(Settings → SSH and GPG keys → New SSH key):

```sh
cat ~/.ssh/id_personal.pub
```

## 3. SSH config for the personal key

Add a host alias so the personal key is used only when the personal alias is
addressed. The default `github.com` continues to use the work key.

```sh
umask 077
cat >> ~/.ssh/config <<'EOF'
Host github-personal
    HostName github.com
    User git
    IdentityFile ~/.ssh/id_personal
    IdentitiesOnly yes
EOF
chmod 600 ~/.ssh/config
```

Verify the alias authenticates as the personal account:

```sh
ssh -T git@github-personal
# -> Hi ostanislaw! You've successfully authenticated...
```

## 4. Point the repo remote at the alias

```sh
config remote set-url origin git@github-personal:ostanislaw/dotfiles.git
config remote -v
```

Then push:

```sh
config push -u origin master
```

## Notes

- `config` is the alias `git --git-dir=$HOME/.cfg/ --work-tree=$HOME`
  (defined in `.bash_aliases`).
- Only this repo's remote uses `github-personal`; all other repositories keep
  using the default `github.com` (work) key.
