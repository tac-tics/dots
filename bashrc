for file in $HOME/.bash/*
do
    [ -f $file ] && source $file
done
