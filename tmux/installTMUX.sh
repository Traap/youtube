#!/bin/bash
# {{{ main

main() {
	# Setup symlinks.
	deleteSymLinks
	createSymLinks

	# Clone different repositories needed for personalization.
	cloneTmuxRepos
	cloneTmuxPlugins

	# Install editors and terminal multiplexers.
	loadTmuxPlugins
}

# -------------------------------------------------------------------------- }}}
# {{{ setConstants

setConstants() {
	tmuxSrc="https://GitHub.com/Traap/tmux.git"
	tmuxDst="$GITHUB/tmux"

	tmuxPluginsSrc="https://github.com/tmux-plugins/tpm.git"
	tmuxPluginsDst="$GITHOME/tmux/plugins/tpm"

	tmuxPluginsInstall="$GITHOME/tmux/plugins/tpm/bin/install_plugins"

}

# -------------------------------------------------------------------------- }}}
# {{{ cloneTmuxRepos

cloneTmuxRepos() {
	say 'Cloning TMUX repositories.'
	rm -rf "$tmuxDst"
	git clone "$tmuxSrc" "$tmuxDst"
	echo ""
}

# -------------------------------------------------------------------------- }}}
# {{{ cloneTmuxPlugins

cloneTmuxPlugins() {
	say 'Cloning TMUX plugins.'
	git clone "$tmuxPluginsSrc" "$tmuxPluginsDst"
}

# -------------------------------------------------------------------------- }}}
# {{{ deleteSymLinks

deleteSymLinks() {
	echo "Deleting symbolic links."
	rm -rfv ~/.tmux
	rm -rfv ~/.tmux.conf
}

# -------------------------------------------------------------------------- }}}
# {{{ createSymLinks

createSymLinks() {
	say 'Creating symbolic links.'
	ln -fsv ~/git/tmux ~/.tmux
	ln -fsv ~/git/tmux/tmux.conf ~/.tmux.conf
}

# -------------------------------------------------------------------------- }}}
# {{{ loadTmuxPlugins

loadTmuxPlugins() {
	say 'Loading TMUX plugins.'
	"$tmuxPluginsInstall"
}

# -------------------------------------------------------------------------- }}}
# {{{ Echo something with a separator line.

say() {
	echo
	echo '**********************'
	echo "$@"
}

# -------------------------------------------------------------------------- }}}
# {{{ Echo a command and then execute it.

sayAndDo() {
	say "$@"
	"$@"
	echo
}

# -------------------------------------------------------------------------- }}}
# {{{ The stage is set ... start the show!!!

main "$@"

# -------------------------------------------------------------------------- }}}
