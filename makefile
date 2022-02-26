dotfiles := .bashrc .tmux.conf .vimrc

all: $(dotfiles)
	for f in $(dotfiles); do \
		mv -f "${HOME}/$$f" "${HOME}/$$f.tmp" > /dev/null 2>&1; \
		cp "$$f" ~/; \
	done

clean:
	for f in $(dotfiles); do \
		mv -f "${HOME}/$$f.tmp" "${HOME}/$$f" > /dev/null 2>&1; \
	done
