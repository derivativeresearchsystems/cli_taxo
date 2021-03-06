#!/usr/bin/env bash
# Bash completion for vic-machine CLI command
# Generated by cli_taxo

_vic-machine_complete () {

    local cur="${COMP_WORDS[COMP_CWORD]}"
    local prev="${COMP_WORDS[COMP_CWORD-1]}"

    echo "${COMP_WORDS[@]}" | grep -q '-' && {
        i=0
        until echo "${COMP_WORDS[i]}" | grep -q '-' ; do ((i++)); done
        prev="${COMP_WORDS[i-1]}"
    }
    
    case "$prev" in
                upgrade)    cmds="--target --user --password --thumbprint --id --name --compute-resource --appliance-iso --bootstrap-iso --force --timeout --rollback --reset-progress";;
        configure)    cmds="--target --user --password --thumbprint --ops-user --ops-password --id --name --compute-resource --volume-store --dns-server --container-network --container-network-gateway --container-network-ip-range --container-network-dns --container-network-firewall --memory --memory-reservation --memory-shares --cpu --cpu-reservation --cpu-shares --tls-server-key --tls-server-cert --tls-cname --tls-cert-path --no-tlsverify --registry-ca --https-proxy --http-proxy --force --timeout --reset-progress --debug";;
        firewall)    cmds="--target --user --password --thumbprint --compute-resource --timeout --allow --deny";;
        config)    cmds="--format --target --user --password --thumbprint --id --name --compute-resource --timeout --tls-cert-path";;
        create)    cmds="--target --user --password --thumbprint --name --compute-resource --image-store --volume-store --bridge-network --client-network --public-network --management-network --container-network --memory --cpu --tls-server-key --tls-server-cert --tls-cname --tls-cert-path --no-tlsverify --registry-ca --insecure-registry --whitelist-registry --force --timeout --extended-help";;
        inspect)    cmds="config --target --user --password --thumbprint --id --name --compute-resource --timeout --tls-cert-path --help";;
        update)    cmds="firewall --help";;
        ls)    cmds="--target --user --password --thumbprint --compute-resource --timeout";;
        debug)    cmds="--target --user --password --thumbprint --id --name --compute-resource --enable-ssh --authorized-key --rootpw --timeout";;
        vic-machine)    cmds="create configure delete ls inspect upgrade version debug update help --help --version";;
        delete)    cmds="--target --user --password --thumbprint --id --name --compute-resource --force --timeout";;
        *)    cmds="upgrade configure firewall config create inspect update ls debug vic-machine delete";;
    esac

    COMPREPLY=( $(compgen -W "$cmds" -- "$cur") )

    return 0
}

complete -F _vic-machine_complete vic-machine

