echo "-------------------------------rm files--------------------------------------"
mkdir ~/.vim
mkdir ~/.vim/autoload
# cp ./vim/plugins ~/.vim/plugins -rf

echo "-------------------------------rm files--------------------------------------"
rm ~/.gitignore_global
rm ~/.git_ci.txt
rm ~/.gitconfig
rm ~/.bashrc
rm ~/.vim/autoload/plug.vim
rm ~/.vim/vimrc
rm ~/.vimrc
rm ~/.tmux.conf

echo "-------------------------------ln links--------------------------------------"
ln   ./git/.gitignore_global  ~/.gitignore_global
ln   ./git/.git_ci.txt  ~/.git_ci.txt
ln   ./git/.gitconfig  ~/.gitconfig
ln   ./bash/.bashrc  ~/.bashrc
ln   ./bash/.tmux.conf  ~/.tmux.conf
ln   ./vim/autoload/plug.vim  ~/.vim/autoload/plug.vim
ln   ./vim/vimrc  ~/.vim/vimrc
ln -s ~/vim/vimrc  ~/.vimrc
# ln -s /home/sh/myspace/work_space/vim/plugins ~/.vim/plugins

if [ $1 == zip ];then
    rm ./vim/plugins -rf
    rm ./vim/plugins.zip
    cp ~/.vim/plugins/ ./vim/ -rf
    zip -r ./vim/plugins.zip ./vim/plugins
    echo "zippd............."
elif [ $1 == unzip ];then
    rm     ~/.vim/plugins -rf
    unzip  ./vim/plugins.zip -d ~/.vim/plugins
    cp     ~/.vim/plugins/vim/plugins/*   ~/.vim/plugins/ -rf
    rm     ~/.vim/plugins/vim -rf
    echo "unzippd............."
fi
