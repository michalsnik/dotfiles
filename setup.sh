git pull origin master;

########## Variables

dir=~/.dotfiles
olddir=~/.dotfiles_old
files=".bashrc .zshrc .gitconfig .git-templates"

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
  echo "Moving any existing dotfiles from ~ to $olddir"
  mv ~/$file $olddir/
  echo "Creating symlink to $file in home directory."
  ln -s $dir/$file ~/$file
done

vscfiles="keybindings.json settings.json"
vscdir="$HOME/Library/Application Support/Code/User"

for file in $vscfiles; do
  echo "---------------------------------------------"
  echo "---> Creating backup of VSC's settings"
  mv "$vscdir/$file" "$vscdir/_$file"
  echo "---------------------------------------------"
  echo "---> Creating symlink to vsc/$file in $vscdir"
  ln -s "$dir/vsc/$file" "$vscdir"
  echo "---------------------------------------------"
done

source ~/.bashrc
source ~/.zshrc
