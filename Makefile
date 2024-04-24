.PHONY	: compile watch checkout-fonts

FLAGS	:= --font-path assets/fonts

compile:
	typst compile $(FLAGS) main.typ

watch:
	typst watch $(FLAGS) main.typ

checkout-fonts:
	git checkout origin/fonts -- assets/fonts
	git rm --cached -r assets/fonts
