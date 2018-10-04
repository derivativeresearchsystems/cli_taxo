#!/usr/bin/env bash
# Bash completion for harbor CLI command
# Generated by cli_taxo

_harbor_complete () {

    local cur="${COMP_WORDS[COMP_CWORD]}"
    local prev="${COMP_WORDS[COMP_CWORD-1]}"

    echo "${COMP_WORDS[@]}" | grep -q '-' && {
        i=0
        until echo "${COMP_WORDS[i]}" | grep -q '-' ; do ((i++)); done
        prev="${COMP_WORDS[i-1]}"
    }
    
    case "$prev" in
                harbor)    cmds="change-password get-cert get-conf info job-list job-log list list-tags logs member-list policy-list project-create project-delete project-list project-show revoke-admin search set-admin show target-list target-ping top usage user-create user-delete user-list user-show user-update version whoami bash-completion help --debug --timings --version --os-username --os-password --os-project --timeout --os-baseurl --insecure --os-cacert --os-api-version";;
        help)    cmds="--project-id --sortby --sortby --project-id --is-public --sortby --project-id --count --username --password --email --realname --comment --sortby --email --realname --comment --detail";;
        *)    cmds="harbor help";;
    esac

    COMPREPLY=( $(compgen -W "$cmds" -- "$cur") )

    return 0
}

complete -F _harbor_complete harbor

