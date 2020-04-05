function boot_windows
    set -l windows_pos (sudo grep '^menuentry' /boot/grub/grub.cfg | awk '$0~/Windows/ {print NR}')
    if test ! $status -eq 0 -o -z "$windows_pos"
        echo 'cannot find Windows entry in grub.cfg' >&2
    else
        sudo grub-set-default "$windows_pos"
    end
end
