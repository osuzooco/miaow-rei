#!/bin/bash

# Command Guide Script - Works with bash/PowerShell

show_help() {
    cat << 'EOF'
=== Command Guide ===

Usage: ./himom.sh [command]

Examples:
  ./himom.sh ls        - List files
  ./himom.sh cd        - Change directory
  ./himom.sh grep      - Search text
  ./himom.sh help      - Show this help

Type a command to get guidance or execute it.
EOF
}

if [ $# -eq 0 ]; then
    show_help
    exit 0
fi

case "$1" in
    help)
        show_help
        ;;
    ls)
        echo "📋 LS - List directory contents"
        echo "Usage: ls [options] [directory]"
        echo "Examples: ls, ls -la, ls /tmp"
        ;;
    cd)
        echo "📂 CD - Change directory"
        echo "Usage: cd [path]"
        echo "Examples: cd .., cd ~, cd /home"
        ;;
    grep)
        echo "🔍 GREP - Search text patterns"
        echo "Usage: grep [options] pattern [file]"
        echo "Examples: grep 'text' file.txt, grep -r 'text' ."
        ;;
    *)
        echo "❓ Unknown command: $1"
        echo "Run './himom.sh help' for guidance"
        ;;
esac