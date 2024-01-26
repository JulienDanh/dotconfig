if which brew >/dev/null 2>&1; then
	echo "Homebrew already installed"
else
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	(
		echo
		echo 'eval "$(/opt/homebrew/bin/brew shellenv)"'
	) >>/Users/juliendanh/.zprofile
	eval "$(/opt/homebrew/bin/brew shellenv)"
	export PATH="/opt/homebrew/bin:$PATH" >>~/.zshrc
fi
brew bundle install

echo "source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc
