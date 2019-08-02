#!/usr/bin/env bash
# Bash completion for velero CLI command
# Generated by cli_taxo

_velero_complete () {

    local cur="${COMP_WORDS[COMP_CWORD]}"
    local prev="${COMP_WORDS[COMP_CWORD-1]}"

    echo "${COMP_WORDS[@]}" | grep -q '-' && {
        i=0
        until echo "${COMP_WORDS[i]}" | grep -q '-' ; do ((i++)); done
        prev="${COMP_WORDS[i-1]}"
    }
    
    case "$prev" in
                restore)    cmds="--exclude-namespace --exclude-resource --from-backu --from-schedul --help --include-cluster-resource --include-namespace --include-resource --label-column --label --namespace-mapping --outpu --restore-volume --selecto --show-labels --wait --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul --all --confirm --help --selecto --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul create delete describe get logs --help --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul";;
        set)    cmds="--help --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul";;
        logs)    cmds="--help --timeou --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul --help --timeou --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul";;
        describe)    cmds="--details --help --selecto --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul backups restores schedules --help --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul --details --help --selecto --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul --help --selecto --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul";;
        download)    cmds="--force --help --outpu --timeou --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul";;
        backup-location)    cmds="create get --help --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul --bucke --confi --help --label-column --label --outpu --prefi --provide --show-labels --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul";;
        backups)    cmds="--details --help --selecto --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul --help --label-column --outpu --selecto --show-labels --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul";;
        help)    cmds="--help --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul";;
        completion)    cmds="--help --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul";;
        backup-locations)    cmds="--help --label-column --outpu --selecto --show-labels --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul";;
        snapshot-location)    cmds="create get --help --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul";;
        create)    cmds="--exclude-namespace --exclude-resource --help --include-cluster-resource --include-namespace --include-resource --label-column --label --outpu --selecto --show-labels --snapshot-volume --storage-locatio --tt --volume-snapshot-location --wait --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul --bucke --confi --help --label-column --label --outpu --prefi --provide --show-labels --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul backup backup-location restore schedule --help --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul --exclude-namespace --exclude-resource --from-backu --from-schedul --help --include-cluster-resource --include-namespace --include-resource --label-column --label --namespace-mapping --outpu --restore-volume --selecto --show-labels --wait --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul --exclude-namespace --exclude-resource --help --include-cluster-resource --include-namespace --include-resource --label-column --label --outpu --schedul --selecto --show-labels --snapshot-volume --storage-locatio --tt --volume-snapshot-location --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul --confi --help --label-column --label --outpu --provide --show-labels --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul";;
        schedule)    cmds="--exclude-namespace --exclude-resource --help --include-cluster-resource --include-namespace --include-resource --label-column --label --outpu --schedul --selecto --show-labels --snapshot-volume --storage-locatio --tt --volume-snapshot-location --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul --all --confirm --help --selecto --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul create delete describe get --help --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul";;
        add)    cmds="--help --image-pull-policy --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul";;
        version)    cmds="--client-only --help --timeou --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul";;
        config)    cmds="get set --help --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul";;
        restic)    cmds="repo server --help --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul";;
        get)    cmds="--help --label-column --outpu --selecto --show-labels --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul --help --label-column --outpu --selecto --show-labels --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul --help --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul backup-locations backups restores schedules snapshot-locations --help --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul --help --label-column --outpu --selecto --show-labels --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul --help --label-column --outpu --selecto --show-labels --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul --help --label-column --outpu --selecto --show-labels --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul --help --label-column --outpu --selecto --show-labels --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul";;
        repo)    cmds="get --help --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul";;
        schedules)    cmds="--help --selecto --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul --help --label-column --outpu --selecto --show-labels --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul";;
        bug)    cmds="--help --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul";;
        velero)    cmds="backup backup-location bug client completion create delete describe get help install plugin restic restore schedule server snapshot-location version --alsologtostderr --help --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul";;
        plugin)    cmds="add remove --help --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul";;
        restores)    cmds="--details --help --selecto --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul --help --label-column --outpu --selecto --show-labels --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul";;
        remove)    cmds="--help --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul";;
        server)    cmds="--help --log-level --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul --backup-sync-perio --client-burs --client-qp --default-backup-storage-locatio --default-backup-tt --default-volume-snapshot-location --disable-controller --help --log-level --metrics-addres --plugin-di --profiler-addres --restic-timeou --restore-only --restore-resource-prioritie --terminating-resource-timeou --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul";;
        client)    cmds="config --help --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul";;
        install)    cmds="--backup-location-confi --bucke --dry-run --help --imag --label-column --outpu --prefi --provide --restore-only --secret-fil --show-labels --snapshot-location-confi --use-restic --use-volume-snapshots --wait --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul";;
        backup)    cmds="create delete describe download get logs --help --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul --exclude-namespace --exclude-resource --help --include-cluster-resource --include-namespace --include-resource --label-column --label --outpu --selecto --show-labels --snapshot-volume --storage-locatio --tt --volume-snapshot-location --wait --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul --all --confirm --help --selecto --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul";;
        snapshot-locations)    cmds="--help --label-column --outpu --selecto --show-labels --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul";;
        delete)    cmds="--all --confirm --help --selecto --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul backup restore schedule --help --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul --all --confirm --help --selecto --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul --all --confirm --help --selecto --alsologtostderr --kubeconfi --kubecontex --log_backtrace_a --log_di --logtostderr --namespac --stderrthreshol --vmodul";;
        *)    cmds="restore set logs describe download backup-location backups help completion backup-locations snapshot-location create schedule add version config restic get repo schedules bug velero plugin restores remove server client install backup snapshot-locations delete";;
    esac

    COMPREPLY=( $(compgen -W "$cmds" -- "$cur") )

    return 0
}

complete -F _velero_complete velero
