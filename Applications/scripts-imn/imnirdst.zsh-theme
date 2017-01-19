local ret_status="%(?:%{$fg_bold[green]%}[iman@E530:%{$fg_bold[green]%}[iman@E530)"
PROMPT='${ret_status} %{$fg[blue]%}%c%{$reset_color%} $(git_prompt_info)$fg_bold[green]]$fg[white]$ '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}%{$fg[white]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}%{$fg[red]%} **"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}"
