for file in $HOME/.bash/*
do
    [ -f $file ] && [ "$file" != "$HOME/.bash/local" ] && source $file
done

if test -f "$HOME/.bash/local"
then
    source "$HOME/.bash/local"
fi
