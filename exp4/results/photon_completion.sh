#!/usr/bin/env bash
# Bash completion for photon CLI command
# Generated by cli_taxo

_photon_complete () {

    local cur="${COMP_WORDS[COMP_CWORD]}"
    local prev="${COMP_WORDS[COMP_CWORD-1]}"

    echo "${COMP_WORDS[@]}" | grep -q '-' && {
        i=0
        until echo "${COMP_WORDS[i]}" | grep -q '-' ; do ((i++)); done
        prev="${COMP_WORDS[i-1]}"
    }
    
    case "$prev" in
                set)    cmds="--nocertcheck --limits --limits";;
        attach-iso)    cmds="--path --name";;
        image)    cmds="create delete list show tasks iam --help";;
        attach-disk)    cmds="--disk";;
        vm)    cmds="create delete show list tasks start stop suspend resume restart attach-disk detach-disk attach-iso detach-iso set-metadata set-tag networks mks-ticket create-image acquire-floating-ip release-floating-ip --help";;
        set-metadata)    cmds="--metadata";;
        tasks)    cmds="--state --state --state --state --state --kind --state --state --state";;
        exclude)    cmds="--limits --limits";;
        datastore)    cmds="list show --help";;
        disk)    cmds="create delete show list tasks --help";;
        flavor)    cmds="create delete list show tasks --help";;
        iam)    cmds="show add remove --help show add remove --help show add remove --help";;
        subnet)    cmds="create delete list show update set-default --help";;
        service)    cmds="create show list list-vms resize delete trigger-maintenance cert-to-file change-version get-kubectl-auth --help";;
        create)    cmds="--security-groups --limits --username --password --address --availability_zone --tag --metadata --name --image_replication --project --name --kind --cost --limits --percent --tenant --security-groups --default-router-private-ip-cidr --name --flavor --capacityGB --affinities --tenant --tags --project --name --flavor --image --boot-disk-flavor --disks --environment --affinities --networks --tenant --project --tenant --project --name --type --vm_flavor --master-vm-flavor --worker-vm-flavor --disk_flavor --subnet_id --image-id --worker_count --dns --gateway --netmask --number-of-masters --master-ip --master-ip2 --load-balancer-ip --container-network --number-of-etcds --etcd1 --etcd2 --etcd3 --ssh-key --registry-ca-cert --admin-password --batchSize --wait-for-ready --name --privateIpCidr --tenant --project --name --description --privateIpCidr --router --type --portgroups --name";;
        system)    cmds="status add-hosts info pause pause-background-tasks resume set-security-groups --help";;
        configure-nsx)    cmds="--nsx-address --nsx-username --nsx-password --private-ip-root-cidr --floating-ip-root-range-start --floating-ip-root-range-end --t0-router-id --edge-cluster-id --overlay-transport-zone-id --tunnel-ip-pool-id --host-uplink-pnic --host-uplink-vlan-id --dns-server-addresses";;
        add)    cmds="--principal --role --principal --role --principal --role";;
        resize)    cmds="--wait-for-ready";;
        zone)    cmds="create delete list show tasks --help";;
        change-version)    cmds="--image-id --wait-for-ready";;
        set-tag)    cmds="--tag";;
        photon)    cmds="auth system target tenant host datastore deployment image task flavor project disk vm service router subnet zone help --non-interactive --log-file --output --detail --help --version";;
        enable-service-type)    cmds="--type --image-id";;
        get-api-tokens)    cmds="--username --password";;
        quota)    cmds="set show update exclude --help set show update exclude --help";;
        auth)    cmds="show show-login-token get-lightwave-ca-cert get-api-tokens --help";;
        update)    cmds="--limits --limits --name --name";;
        host)    cmds="create delete list show list-vms set-availability-zone tasks provision suspend resume enter-maintenance exit-maintenance --help";;
        deployment)    cmds="list list-hosts list-vms configure-nsx enable-service-type disable-service-type update-image-datastores sync-hosts-config --help";;
        acquire-floating-ip)    cmds="--network_id";;
        tenant)    cmds="create delete show list set get tasks set-security-groups iam quota --help";;
        detach-disk)    cmds="--disk";;
        task)    cmds="list show monitor --help";;
        get-kubectl-auth)    cmds="--username --password";;
        target)    cmds="set show info login logout --help";;
        create-image)    cmds="--name --image_replication";;
        disable-service-type)    cmds="--type";;
        get-lightwave-ca-cert)    cmds="--filename";;
        list)    cmds="--name --entityId --entityKind --state --name --kind --tenant --tenant --project --summary --name --tenant --project --summary --name --tenant --project --summary --tenant --project --name --name --router-id";;
        remove)    cmds="--principal --role --principal --role --principal --role";;
        project)    cmds="create delete show get set list tasks set-security-groups iam quota --help";;
        update-image-datastores)    cmds="--datastores";;
        router)    cmds="create delete list show update --help";;
        login)    cmds="--access_token --username --password --windows";;
        *)    cmds="set attach-iso image attach-disk vm set-metadata tasks exclude datastore disk flavor iam subnet service create system configure-nsx add resize zone change-version set-tag photon enable-service-type get-api-tokens quota auth update host deployment acquire-floating-ip tenant detach-disk task get-kubectl-auth target create-image disable-service-type get-lightwave-ca-cert list remove project update-image-datastores router login";;
    esac

    COMPREPLY=( $(compgen -W "$cmds" -- "$cur") )

    return 0
}

complete -F _photon_complete photon