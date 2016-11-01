# Inspiration comes from @issmirnov https://github.com/issmirnov/dotfiles/tree/master/i3

# Assumption: hostname is set to a proper predefined format examples:
# laptop-bluenetbook , laptop-gaming 
# desktop-workstation , desktop-gaming
# server-digitalocean01 , server-vrocket 

I3_CONFIG_ROOT="$HOME/.config/i3"
DOT_ROOT="$HOME/.dotfiles/i3"

FULLNAME=$(echo $HOST | cut -f1 -d".")
NAME=$(echo $HOST | cut -f1 -d"-")


######## CONFIG ########
# remove the old config. 
mv $DOT_ROOT/config /tmp/i3-config.bak

# generate new config
cp $DOT_ROOT/config/base $I3_CONFIG_ROOT/config

# Append Module specific configs
roles=($NAME)  #(laptop) or (desktop)
for role in $roles; do
    cat $DOT_ROOT/config/$role >> $I3_CONFIG_ROOT/config
done


######## i3STATUS ########
# remove the old config. 
mv $DOT_ROOT/i3status.conf /tmp/i3status.conf.bak

# generate new config
cp $DOT_ROOT/i3status/base $I3_CONFIG_ROOT/i3status.conf

# Append Module specific configs
roles=($NAME)  #(laptop) or (desktop)
for role in $roles; do
    cat $DOT_ROOT/i3status/$role >> $I3_CONFIG_ROOT/i3status.conf
done

# Restart the i3wm session without closing any windows
i3-msg restart
