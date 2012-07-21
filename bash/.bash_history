condition2 <= ( ! ( ( DanWuzHereS . ( ! DanWuzHereT ) ) + ( ( ! DanWuzHereS ) . DanWuzHereT ) ) );
DanWuzHereO1 <= ( condition2 . DanWuzHereI1 + (! condition2) . DanWuzHereI1 );
condition3 <= ( ! ( ( DanWuzHereS . ( ! DanWuzHereT ) ) + ( ( ! DanWuzHereS ) . DanWuzHereT ) ) );
DanWuzHereO2 <= ( condition3 . ( DanWuzHereI0 . DanWuzHereI3 ) + (! condition3) . ( DanWuzHereI0 . DanWuzHereI3 ) );
O7 <= ( ( DanWuzHereJ0 . ( ! DanWuzHereJ1 ) ) + ( ( ! DanWuzHereJ0 ) . DanWuzHereJ1 ) );
O8 <= ( ! ( DanWuzHereJ1 . DanWuzHereJ0 ) );
condition4 <= ( ! ( ( DanWuzHereS . ( ! 1 ) ) + ( ( ! DanWuzHereS ) . 1 ) ) );
DanWuzHereO3 <= ( condition4 . DanWuzHereI0 + (! condition4) . DanWuzHereI0 );
condition5 <= ( ! ( ( DanWuzHereS . ( ! 1 ) ) + ( ( ! DanWuzHereS ) . 1 ) ) );
DanWuzHereO4 <= ( condition5 . DanWuzHereI1 + (! condition5) . DanWuzHereI1 );
condition6 <= ( ! ( ( DanWuzHereS . ( ! 1 ) ) + ( ( ! DanWuzHereS ) . 1 ) ) );
DanWuzHereO5 <= ( condition6 . ( DanWuzHereI2 . DanWuzHereI3 ) + (! condition6) . ( DanWuzHereI2 . DanWuzHereI3 ) );
condition7 <= ( ! ( ( DanWuzHereS . ( ! 1 ) ) + ( ( ! DanWuzHereS ) . 1 ) ) );
DanWuzHereO6 <= ( condition7 . DanWuzHereS + (! condition7) . DanWuzHereS );
echo "condition1 <= ( ! ( ( DanWuzHereS . ( ! DanWuzHereT ) ) + ( ( ! DanWuzHereS ) . DanWuzHereT ) ) );"
DanWuzHereO0 <= ( condition1 . DanWuzHereI0 + (! condition1) . DanWuzHereI0 );
condition2 <= ( ! ( ( DanWuzHereS . ( ! DanWuzHereT ) ) + ( ( ! DanWuzHereS ) . DanWuzHereT ) ) );
DanWuzHereO1 <= ( condition2 . DanWuzHereI1 + (! condition2) . DanWuzHereI1 );
condition3 <= ( ! ( ( DanWuzHereS . ( ! DanWuzHereT ) ) + ( ( ! DanWuzHereS ) . DanWuzHereT ) ) );
DanWuzHereO2 <= ( condition3 . ( DanWuzHereI0 . DanWuzHereI3 ) + (! condition3) . ( DanWuzHereI0 . DanWuzHereI3 ) );
O7 <= ( ( DanWuzHereJ0 . ( ! DanWuzHereJ1 ) ) + ( ( ! DanWuzHereJ0 ) . DanWuzHereJ1 ) );
O8 <= ( ! ( DanWuzHereJ1 . DanWuzHereJ0 ) );
condition4 <= ( ! ( ( DanWuzHereS . ( ! 1 ) ) + ( ( ! DanWuzHereS ) . 1 ) ) );
DanWuzHereO3 <= ( condition4 . DanWuzHereI0 + (! condition4) . DanWuzHereI0 );
condition5 <= ( ! ( ( DanWuzHereS . ( ! 1 ) ) + ( ( ! DanWuzHereS ) . 1 ) ) );
DanWuzHereO4 <= ( condition5 . DanWuzHereI1 + (! condition5) . DanWuzHereI1 );
condition6 <= ( ! ( ( DanWuzHereS . ( ! 1 ) ) + ( ( ! DanWuzHereS ) . 1 ) ) );
DanWuzHereO5 <= ( condition6 . ( DanWuzHereI2 . DanWuzHereI3 ) + (! condition6) . ( DanWuzHereI2 . DanWuzHereI3 ) );
condition7 <= ( ! ( ( DanWuzHereS . ( ! 1 ) ) + ( ( ! DanWuzHereS ) . 1 ) ) );
DanWuzHereO6 <= ( condition7 . DanWuzHereS + (! condition7) . DanWuzHereS );
ls
cd ..
gvim blah.f
gvim -d blah.f vhdl/soln.out/synthesize/dlyu_test_case_advanced.f 
ls
rm blah.f 
ls
pwd
cd vhdl/
cat dlyu_test_case_advanced.vhd 
cat soln.out/split/dlyu_test_case_advanced.vhd 
make clean && make testsynthesize 
make clean
make clean && make testsplit 
make clean
exit
gvim .bashrc
source .bashrc
gvim .bashrc
source .bashrc
ls
cd workspace/ece351-amzillur/
ls
bash
clear
cd ..
ls
cd ..
ls
sls
ls
gvim .bashrc
source .bashrc
ls
source .bashrc
ls
exit
ls
clear
vim
ks
git init
ls
git status
echo "*" > .gitignore
ls
git status
gvim .gitignore 
git status
git add .bashrc
git commit -m "added initial bashrc"
git push
git remote add origin https://github.com/areek/dotfiles.git
git push
git status
git config --global user.name "Your Name"
git config --global user.name "Areek Zillur"
git push
git status
git log
git remote add origin https://github.com/areek/dotfiles.git
touch README
git add .gitignore
git commit -m "added initial gitignore file"
git add git add README
git add  README
gvim .gitignore 
git add  README
git commit -m "initial readme file"
git push
git config
ls
git status
gvim .gitconfig
git lol
git status
git add .vim
ls
vim .vimrc
ls | grep 'ala'
ls | grep 'alia'
ls 
ls -la | grep '.bash'
cat .bash_aliases 
ack
ack "leader"
ls
cd .vim/
ack "leader"
gvim /etc/bash_completion
quote
quote areek
ls
cat Rakefile 
find
find -ii name ropevim
find -i name ropevim
find ropevim
find 'ropevim'
find 'vim'
find --help
exit
ls
exit
ls
ls -la | grep 'vim'
ls -la | grep 'bash'
cat .bash_profile 
cat .bash_history 
ls
clear
mkdir dotfiles
ls
cd dotfiles/
ls
git status
ls
cd ..
ls
echo "\!dotfiles" >> .gitignore 
cat .gitignore 
gvim .gitignore 
git add dotfiles/
ls
git status
git add .gitignore
cd dotfiles/
ls
mkdir bash
cd bash/
ls
mv ~/.bashrc .
ks
ls
ls -la
cd ..
ls
cd ..
ls
ls -la
bash
exit
ln -s ~/dotfiles/bash/.bashrc ~/.bashrc
bash
ls
ls -la | grep 'bash'
mv .bash_* dotfiles/bash/
ls
ls -la | grep 'bash'
gvim -d blah.f vhdl/soln.out/synthesize/dlyu_test_case_advanced.f 
ln -s ~/dotfiles/bash/.bash_aliases ~/.bash_aliases
ln -s ~/dotfiles/bash/.bash_history ~/.bash_history
ln -s ~/dotfiles/bash/.bash_logout ~/.bash_logout
ln -s ~/dotfiles/bash/.bash_profile ~/.bash_profile
ls -la | grep 'bash'
ls
git add dotfiles/
git commit -m "moved bash stuff to dotfiles"
history | grep 'ln -s'
git add README
git commit -m "updated readme"
git push
uw
ls
git log
git add dotfiles/
ls
git status
git add dotfiles/bash/
git add .gitignore
git commit -m "fixed gitignore"
git push
cd dotfiles/
ls
mkdir vim
ls
cd vim/
ls
source ../bash/.bash_aliases 
install curl
ls
mkdir autoload  bundle  sessions  undodir  vimrc
ls
cd autoload/
ls
cd ..
git clone git://github.com/tpope/vim-pathogen.git pathogen
ls
cd pathogen/
ls
cd autoload/
ls
cd ..
ls
cd ..
ls
mv pathogen/autoload/ autoload/
ls
ls *
cd autoload/
ls
cd autoload/
ls
mv pathogen.vim ../
ls
cd ..
ls
rmdir autoload/
ls
cd ..
ls
cd pathogen/
rm * -r
ls
cd ..
rmdir pathogen/
ls
cd pathogen/
ls
ls -la
rm .git/
rm -r .git/*
ls
cd rmdir git
rmdir .git
ls
cd ..
mv pathogen/ /dev/null 
mv pathogen /dev/null 
git status
cd ..
ls
cd vim/
ls
git add .
git status
pwd
cd ~/
gvim .gitignore 
git add .
ls
git log
git status
git add dotfiles/
git status
git add .gitignore
git commit -m "added structure"
git push
ls
cd dotfiles/
ls
cd vim/
ls
cd vimrc/
ls
touch .vimrc
git add .
ls -la | grep '.git'
ls -la | grep 'git'
cd ~
ls -la | grep 'git'
cat .gitconfig
cd .git/
ls
cat config 
cd ..
ls
mv .git dotfiles/
ls
cd dotfiles/
ls
git status
git add bash/ vim/
git commit -m "changed git dir"
git push
git pull
ls
cd ..
ls
rm .gitignore 
ls
cd dotfiles/
ls
git status
git commit -m "restructure"
git rm .bashrc
git status
git rm .gitignore
cd ..
ls
cd dotfiles/
ls
git mv ../README .
mv ../README /
mv ../README .
ls
git status
git rm .vim
git rm dotfiles
git rm -r dotfiles
git status
git commit -m "restructured"
git push
ls
git status
cd vim/
ls
cd vimrc/
ls
ls -la
cd ..
ls
cd ..
ls
git status
git add .gitignore
git commit -m "added gitignore"
git push
ls
cd vim/
ks
ls
cd pathogen/
ks
ls
rm -rf .git/
ls
ls -la
cd ..
ls
rmdir pathogen/
ls
s
ls
cd ..
ls
cd vim/
cd ..
ls
history | grep 'git sub'
ls
cd vim/
ls
cd bundle/
ls
cd ..
ls
cd ..
ls
git submodule init && git submodule update 
git status
git .
git add .
ls
git push
git status
git add .gitmodules vim/bundle/fugitive/
git push
git commit -m "added fugitive"
git push
ls
git submodule add git://git.wincent.com/command-t.git vim/bundle/command-t
git submodule init && git submodule update
cd vim/bundle/command-t/ruby/command-t/
ruby extconf.rb 
make
git status
cd ../..
ls
cd ..
ls
cd ..
ls
cd ..
ls
git status
git add .gitmodules vim/bundle/command-t/
git commit -m "added command-t"
git push
git submodule add git://github.com/Raimondi/delimitMate.git bundle/delmitmate
ls
rm -rf bundle/
ls
git submodule add git://github.com/Raimondi/delimitMate.git vim/bundle/delmitmate
git submodule init && git submodule update
git status
ls
rm -rf bundle/
ls
git status
git add .gitmodules vim/bundle/delmitmate/
git commit -m "delmitate"
git push
git status
git rm bundle/delmitmate
git status
git commit -m "removed bundles"
git push
git submodule add git://github.com/kevinw/pyflakes-vim.git vim/bundle/pyflakes
git submodule update
git submodule init && git submodule update
git status
git add .gitignore vim/bundle/pyflakes/
git commit -m "added pyflakes"
git push
git submodule add git://github.com/vim-scripts/supertab.git vim/bundle/supertab
git submodule add git://github.com/ervandew/supertab.git vim/bundle/supertab
git submodule init && git submodule update 
git status
git add .gitmodules vim/bundle/supertab/
git commit -m "added supertab"
git push
git status
git add vim/
git commit -m "added context for supertab"
git push
git submodule add git://github.com/majutsushi/tagbar.git vim/bundle/tagbar
git submodule init && git submodule update
git status
git add .gitmodules vim/bundle/tagbar/
git push
git commit -m "added tagbar"
git status
git add vim/vimrc/
git commit -m "added more vimrc settings with comment"
git push
ADJFK git submodule add  git://github.com/altercation/vim-colors-solarized.git bundle/solarized
git submodule init && git submodule update
git status
git add vim/
git status
git commit -m "added solarized color scheme"
git push
git submodule add git://github.com/msanders/snipmate.vim.git vim/bundle/snipmate
git submodule init && git submodule update
ls
cat .gitmodules 
git submodule init
git submodule update
cd vim/
ls
cd bundle/
ls
rm -rf snipmate/
ls
cd ..
git submodule add git://github.com/garbas/vim-snipmate.git vim/bundle/snipmate
git submodule init && git submodule update
ls
mkdir vim/bundle/tlib_vim vim/bundle/vim-addon-mw-utils vim/bundle/snipmate-snippets
git submodule init && git submodule update
git submodule add git://github.com/tomtom/tlib_vim.git vim/bundle/tlib_vim/
git submodule add git://github.com/tomtom/tlib_vim.git vim/bundle/tlib_vim
git submodule init
git submodule update
rmdir vim/bundle/tlib_vim vim/bundle/snipmate-snippets/ vim/bundle/vim-addon-mw-utils/
git submodule add git://github.com/tomtom/tlib_vim.git vim/bundle/tlib_vim
git submodule init
git submodule update 
git submodule add git://github.com/MarcWeber/vim-addon-mw-utils.git vim/bundle/vim-addon-mw-utils
git submodule init 
git submodule update 
git submodule add git://github.com/honza/snipmate-snippets.git vim/bundle/snipmate-snippets
git submodule init 
git submodule update 
git status
git add .gitmodules vim/bundle/
git commit -m "added snipmate and its dependencies"
git push
exit
