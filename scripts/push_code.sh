
path=$(pwd)

path1=~/myspace/work_space

echo "--------------------------------git diff HEAD--------------------------------------"
git diff HEAD
echo "--------------------------------git br -vv-----------------------------------------"
git br -vv
echo "--------------------------------git st---------------------------------------------"
git st

if [ $path == $path1 ]; then
    if [ $# == 1 ]; then
        git push -u origin master

    fi
fi
