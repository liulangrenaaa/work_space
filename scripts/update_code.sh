
path=$(pwd)


path1=~/myspace/work_space

echo "--------------------------------git diff HEAD--------------------------------------"
git diff HEAD
echo "--------------------------------git br -vv-----------------------------------------"
git br -vv
echo "--------------------------------git st---------------------------------------------"
git st

if [ $# == 1 ]; then
    if [ $path == $path1 ]; then
        git fetch origin
        git rebase origin/master

    fi
fi

