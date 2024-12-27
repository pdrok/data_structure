## Vim Settings
Unlike Emacs, Vim’s default settings are not very good for editing C programs. You can fix this by creating a file called .vimrc in your home directory with the following commands:
```sh
set shiftwidth=4
set autoindent
set backup
set cindent
set hlsearch
set incsearch
set showmatch
set number
syntax on
filetype plugin on
filetype indent on
```

## Compile
```sh
gcc -g3 -o foo foo.c
```

## Fix issue:

```sh
gcc -g3 -o bogus bogus.c
bogus.c:1:10: fatal error: stdio.h: No such file or directory
    1 | #include <stdio.h>
      |          ^~~~~~~~~
compilation terminated.
```

Ubuntu

```sh
sudo apt-get install libc6-dev
```

Alpine


```sh
apk add libc-dev
```
