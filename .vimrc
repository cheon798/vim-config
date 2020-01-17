" .vimrc config
set nocompatible									" 오리지날 VI와 호환하지 않음
set autoindent										" 자동 들여쓰기
set cindent         	 							" C 프로그래밍용 자동 들여쓰기
set smartindent					      				" 스마트한 들여쓰기
set wrap			
set nowrapscan 			 	    	 				" 검색할 때 문서의 끝에서 처음으로 안돌아감
set nobackup 	      				  				" 백업 파일을 안만듬
set noswapfile
"set visualbell      								" 키를 잘못눌렀을 때 화면 프레시
set ruler        			    					" 화면 우측 하단에 현재 커서의 위치(줄,칸) 표시
set shiftwidth=4     								" 자동 들여쓰기 4칸
set number           								" 행번호 표시, set nu 도 가능
set fencs=ucs-bom,utf-8,euc-kr.latin1				" 한글 파일은 euc-kr로, 유니코드는 유니코드로
set fileencoding=utf-8 								" 파일저장인코딩
set tenc=utf-8       								" 터미널 인코딩
"set expandtab     				  					" 탭대신 스페이스
set hlsearch         								" 검색어 강조, set hls 도 가능
set ignorecase  			     					" 검색시 대소문자 무시, set ic 도 가능
set tabstop=4        								" 탭을 4칸으로
set lbr
set incsearch       			 					" 키워드 입력시 점진적 검색
set cursorline       								" 편집 위치에 커서 라인 설정
set laststatus=2     								" 상태바 표시를 항상한다
syntax on 											" 구문강조 사용
filetype indent on   								" 파일 종류에 따른 구문강조
set background=dark  								" 하이라이팅 lihgt / dark
colorscheme desert  								" vi 색상테마설정-->www.vim.org에서 다운, 
													" 다운받은 테마 파일 /usr/share/vim/vim74/colors/로 이동후 사용
set backspace=eol,start,indent 						" 줄의 끝, 시작, 들여쓰기에서 백스페이스시 이전줄로
set history=1000     								" vi 편집기록 기억갯수 .viminfo에 기록
highlight Comment term=bold cterm=bold ctermfg=4	" 코멘트 하이라이팅
set mouse=a          								" vim에서 마우스 사용
set t_Co=256         								" 색 조정
filetype plugin indent on

" Vundle Installation
" $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" /home/lamech/.vim/ 디렉토리가 생성됨
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" $ vim           --> vim 실i행
" : PluginList    --> PluginList를 .vimrc에서 불러옴
"                 --> 아래의 43 ~ 50번째까지의 Plugin들이 나타남
" : PluginInstall --> 아래의 43 ~ 50번째까지의 Plugin들이 자동 설치됨 
Plugin 'VundleVim/Vundle.vim'
Plugin 'The-NERD-tree'
Plugin 'AutoComplPop'
Plugin 'taglist-plus'
Plugin 'snipMate'
Plugin 'srcexpl'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()

nmap<F2> :NERDTreeToggle<CR>
nmap<F3> :TlistToggle<CR>
nmap<F4> :SrcExplToggle<CR>
nmap<C-h> <C-w>h
nmap<C-j> <C-w>j
nmap<C-k> <C-w>k
nmap<C-l> <C-w>l

filetype on

" NERD Tree
let NERDTreeWinPos="left"
let NERDTreeQuitOnOpen=0
let NERDTreeShowHidden=1

" Tag list(taglist-plus)
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_Inc_Winwidth = 0
let Tlist_Exit_OnlyWindow = 0
let Tlist_Auto_Open = 0
let Tlist_Use_Right_Window = 1

" vim-airline
let g:airline#extensions#tabline#enabled = 1 " turn on buffer list
let g:airline_theme='hybrid'

" Source Explorer Config(srcexpl)
let g:SrcExpl_winHeight = 8  
let g:SrcExpl_refreshTime = 100 
let g:SrcExpl_jumpKey = "<ENTER>"
let g:SrcExpl_gobackKey = "<SPACE>"
let g:SrcExpl_isUpdateTags = 0   
