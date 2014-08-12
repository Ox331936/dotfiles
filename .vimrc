colorscheme molokai

"####表示設定
set number					"行番号を表示する
set title					"編集中のファイル名を表示
set showmatch				"括弧入力時の対応する括弧を表示
syntax on					"コードの色分け
set tabstop=4				"インデントをスペース４つ分に設定
set autoindent				"オートインデント

"####検索設定
set ignorecase				"大文字/小文字の区別なく検索する
set smartcase				"検索文字列に大文字が含まれている場合は区別する
set wrapscan				"検索時に最後まで行ったら最初に戻る

"neobundle
set nocompatible
filetype off

if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim
	call neobundle#rc(expand('~/.vim/bundle'))
endif

"ここにインストールしたいプラグインのリストを書く
NeoBundle "tyru/caw.vim.git"        " \c
nmap <Leader>c <Plug>(caw:i:toggle);
vmap <Leader>c <Plug>(caw:i:toggle);

filetype plugin on
filetype indent on

