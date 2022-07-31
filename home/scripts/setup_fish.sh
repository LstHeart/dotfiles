## setup fish
if [ ! -d ~/.config/fish/conf.d ]; then
  mkdir -p ~/.config/fish/conf.d
fi
curl https://raw.githubusercontent.com/skywind3000/z.lua/master/z.lua > ~/.config/fish/conf.d/z.lua \
&& echo "lua ~/.config/fish/conf.d/z.lua --init fish | source" > ~/.config/fish/conf.d/z.fish

fish -c "fisher install jorgebucaran/nvm.fish"
fish -c "fisher install PatrickF1/fzf.fish"
fish -c "fisher install franciscolourenco/done"
fish -c "fisher install jorgebucaran/autopair.fish"
fish -c "fisher install andreiborisov/sponge"
fish -c "echo y | fisher install ilancosman/tide@v5"
