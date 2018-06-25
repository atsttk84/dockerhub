export PATH="$HOME/.anyenv/bin:$PATH"
ENVS='$HOME/.anyenv/envs'
for e in `ls $ENV`; do
    export PATH="$ENVS/$e/shims:$PATH"
done
eval "$(anyenv init -)"
