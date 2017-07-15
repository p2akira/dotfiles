
"----------------------------------------------------
" 基本的な設定関係
"----------------------------------------------------
" vimの独自拡張機能を使う（viとの互換性をとらない)
set nocompatible
" 自動認識させる改行コードを指定する
set fileformats=unix,dos,mac
" バックスペースキーで削除できるものを指定
set bs=indent,eol,start
" 起動時のメッセージを表示しない
set shortmess+=I
" クリップボード連携
set clipboard=unnamedplus
" 他で書き換えられたら自動で読み直す
set autoread


"----------------------------------------------------
" バックアップ関係
"----------------------------------------------------
" バックアップをとらない
set nobackup
" viminfoファイルをとらない
set viminfo=
" スワップファイルを作成しない
set noswapfile
"----------------------------------------------------
" 表示関係
"----------------------------------------------------
" 編集中のファイル名を表示
set title
" 行番号を表示する
set number
" ルーラーを表示
set ruler
" 入力中のコマンドをステータスに表示する
set showcmd
" ステータスラインを常に表示
set laststatus=2
" 括弧入力時に対応する括弧を強調する
set showmatch
" 対応する括弧の表示時間を2にする
set matchtime=2
" 構文ごとに色分け表示する
syntax on
" カラースキーム
" colorscheme molokai
" [ syntax on ] の場合のコメント文の色を変更する
highlight Comment ctermfg=lightgrey
" 背景色
if has('gui_running')
  set background=light
else
  set background=dark
endif
" ウィンドウ幅で行を折り返す
set wrap
" 全角スペースの表示
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /　/
" カレント行ハイライトON
set cursorline
" カレント行にアンダーラインを引く(color terminal)
highlight CursorLine cterm=underline ctermfg=NONE ctermbg=NONE
" カレント行にアンダーラインを引く(gui)
highlight CursorLine gui=underline guifg=NONE guibg=NONE

"----------------------------------------------------
" インデント
"----------------------------------------------------
" タブが対応する空白の数
set tabstop=2
" タブやバックスペースの使用等の編集操作をするときに、タブが対応する空白の数
set softtabstop=2
" インデントの各段階に使われる空白の数
set shiftwidth=2
" タブを空白文字に置換
set expandtab
" スマートインデント
set autoindent
" オートインデント
set smartindent

"----------------------------------------------------
" 国際化関係
"----------------------------------------------------
" 文字コードの設定
" fileencodingsの設定ではencodingの値を一番最後に記述する
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,euc-jp,cp932,iso-2022-jp
set fileencodings+=,ucs-2le,ucs-2,utf-8

"----------------------------------------------------
" 検索関係
"----------------------------------------------------
" 検索履歴を50個残す
set history=50
" 検索時に大文字小文字を区別しない
set ignorecase
" 検索語に大文字を混ぜると検索時に大文字を区別する
set smartcase
" 検索語にマッチした単語をハイライトする
set hlsearch
" インクリメンタルサーチを使う ( 検索語を入れている途中から随時マッチする文字列の検索を開始)
set incsearch
"検索時に最後まで行ったら最初に戻る
set wrapscan
"検索結果のハイライトをEsc連打でクリアする
" nnoremap <ESC><ESC> :nohlsearch<CR>
