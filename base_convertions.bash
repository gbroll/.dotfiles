## dec to hex
d2h() {
        if [[ $# -gt 1 ]]; then # iterate
                for arg in "$@"
                do
                        echo "obase=16 ; $arg" | bc
                done
        else
                if [[ $# -eq 0 ]]; then
                        echo "nothing to convert"
                else
                        echo "obase=16 ; $1" | bc
                fi
        fi
}

## hex to dec
h2d() {
        if [[ $# -gt 1 ]]; then # iterate
                for arg in "$@"
                do
                        echo "ibase=16 ; ${arg^^}" | bc
                done
        else
                if [[ $# -eq 0 ]]; then
                        echo "nothing to convert"
                else
                        echo "ibase=16 ; ${1^^}" | bc
                fi
        fi
}

## dec to bin
d2b() {
        if [[ $# -gt 1 ]]; then # iterate
                for arg in "$@"
                do
                        echo "obase=2 ; $arg" | bc
                done
        else
                if [[ $# -eq 0 ]]; then
                        echo "nothing to convert"
                else
                        echo "obase=2 ; $1" | bc
                fi
        fi
}

## bin to dec
b2d() {
        if [[ $# -gt 1 ]]; then # iterate
                for arg in "$@"
                do
                        echo "obase=10 ; ibase=2 ; $arg" | bc
                done
        else
                if [[ $# -eq 0 ]]; then
                        echo "nothing to convert"
                else
                        echo "obase=10 ; ibase=2 ; $1" | bc
                fi
        fi
}

## bin to hex
b2h() {
        if [[ $# -gt 1 ]]; then # iterate
                for arg in "$@"
                do
                        echo "obase=16 ; ibase=2 ; $arg" | bc
                done
        else
                if [[ $# -eq 0 ]]; then
                        echo "nothing to convert"
                else
                        echo "obase=16 ; ibase=2 ; $1" | bc
                fi
        fi
}

## hex to bin
h2b() {
        if [[ $# -gt 1 ]]; then # iterate
                for arg in "$@"
                do
                        echo "obase=i ; ibase=16 ; $arg" | bc
                done
        else
                if [[ $# -eq 0 ]]; then
                        echo "nothing to convert"
                else
                        echo "obase=2 ; ibase=16 ; $1" | bc
                fi
        fi
}