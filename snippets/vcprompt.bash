fancyprompt() {
	# Check if vcprompt is available.
	command -v vcprompt >/dev/null 2>&1
	if [ $? -eq 0 ]; then
		export PS1="\u@\h:\w \[$COLOR256_130\]\$(vcprompt -f '[%n:%b%u%m] ')\[$RESET\]\$ "
	else
		defaultprompt
	fi
}

defaultprompt() {
	export PS1='\u@\h:\w $ '
}
