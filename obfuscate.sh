function attach()
{
    if [ "$#" -ne 2 ]
        then
            echo 'usage: attach file archive'
        else
            cat "$1" | xxd -ps | zip -q | cat >> "$2"
        fi
}

function retrieve()
{
    if [ "$#" -ne 2 ]
        then
            echo 'usage: retrieve file archive'
        else
            unzip -p "$2" 2>/dev/null | xxd -ps -r >> "$1"
        fi
}
