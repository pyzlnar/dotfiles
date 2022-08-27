link:
	stow --verbose --target=$$HOME --restow -t ~ */

unlink:
	stow --verbose --target=$$HOME --delete -t ~ */
