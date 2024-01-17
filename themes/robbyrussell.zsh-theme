declare -A archs
archs=(
    ["arm64"]="$bg_bold[yellow]%}%{$fg_bold[black]%}m1%{$reset_color%}"
    ["x86_64"]="$bg_bold[red]%}%{$fg_bold[black]%}x86%{$reset_color%}"
)
arch=$(uname -m)
label=$archs[$arch]
  https://github.com/ohmyzsh/ohmyzsh.git
PROMPT="%{$label"
PROMPT+=' %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'
PROMPT+=" %(?:%{$fg_bold[green]%}❯ :%{$fg_bold[red]%}❯ )%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}%1{✗%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

