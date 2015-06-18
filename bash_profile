#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
if [ -e /home/mwilson/.nix-profile/etc/profile.d/nix.sh ]; then . /home/mwilson/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
