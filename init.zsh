# framing by-way-of zim-mise, passing in directory holding the script
(( ${+commands[niri]} )) && () {
  local command=${commands[niri]}

    # generating completions
  local compfile=$1/functions/_niri
  if [[ ! -e $compfile || $compfile -ot $command ]]; then
    $command completions zsh >| $compfile
    print -u2 -PR "* Detected a new version 'niri'. Regenerated completions."
  fi
} ${0:h}  
