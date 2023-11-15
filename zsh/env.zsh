# -------------------------------------------------------------------
# --- GMT ---
# NOTE: once you change the gmt version using gmtswitch, you should refresh the terminal or source ~/.zshrc to reset the GS_LIB
# for more information, see
# https://docs.gmt-china.org/latest/module/gmtswitch/
# https://docs.gmt-china.org/latest/install/macOS/#gmt
export GMTHOME=$HOME/this_gmt
# export GMTHOME=/Applications/GMT-6.4.0.app/Contents/Resources
export PATH=${GMTHOME}/bin:${PATH}
export PROJ_LIB=$GMTHOME/share/proj
GMT_VERSION=$(gmt --version)
if [[ "$GMT_VERSION" == "6.2.0" ]]; then
	export GS_LIB=$GMTHOME/share/ghostscript/9.53.3/Resource/Init
else
	export GS_LIB=$GMTHOME/share/ghostscript/Resource/Init
fi
export MAGICK_CONFIGURE_PATH=$GMTHOME/lib/GraphicsMagick/config


# -------------------------------------------------------------------
# --- NVIM SETTINGS ---
export MYNVIMRC="~/.config/nvim/init.vim"
# DO NOT LOAD DEFAULT RC, USING THE COUSTOM ONE
export RANGER_LOAD_DEFAULT_RC="false"
# change the default editor to nvim
export EDITOR=nvim

# -------------------------------------------------------------------
# --- CONDA ---
export conda="/Users/zelong/opt/miniconda3/etc/profile.d/conda.sh"



