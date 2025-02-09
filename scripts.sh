#!/bin/bash

function show_help {
   cat << EOF
Usage: ./build.sh [options]

Options:
   -h, --help          Show this help message
   -b, --build         Build all files (default)
   -c, --clean         Clean generated files
   -o, --open          Open index.html after building
   -d, --date          Print current ISO 8601 date
   -i, --install       Install Python requirements
EOF
}

function clean {
   echo "Cleaning generated files..."
   rm -f gen/*.html
   rm -f index.md
   rm -f index.html
   rm -f feed.json
}

function build {
   echo "Building site..."
   mkdir -p gen
   
   # Build all posts first, exactly as Makefile did
   for post in $(find posts/*); do
       if [[ $post == *.md ]]; then
           filename=$(basename "$post" .md)
           echo "Building $filename..."
           pandoc -f markdown+fenced_divs \
                  -s "$post" \
                  -o "gen/${filename}.html" \
                  --template templates/post.html \
                  --css="../styles/common.css" \
                  --toc
       fi
   done

   # Build index after all posts are done
   echo "Building index..."
   python3 make_index.py
   pandoc -s index.md \
          -o index.html \
          --template templates/index.html \
          --css="./styles/common.css" \
          --css="./styles/index.css"
   rm index.md
}

function open_site {
   echo "Opening site..."
   if [[ "$OSTYPE" == "darwin"* ]]; then
       open index.html
   elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
       xdg-open index.html
   elif [[ "$OSTYPE" == "msys" ]]; then
       start index.html
   else
       echo "Unsupported OS for opening files"
   fi
}

function print_date {
   date -u +"%Y-%m-%dT%H:%M:%SZ"
}

function install_requirements {
   echo "Installing Python requirements..."
   pip install -r requirements.txt
}

# Default behavior if no args
if [ $# -eq 0 ]; then
   build
   open_site
   exit 0
fi

# Parse arguments
while [[ $# -gt 0 ]]; do
   case $1 in
       -h|--help)
           show_help
           exit 0
           ;;
       -b|--build)
           build
           shift
           ;;
       -c|--clean)
           clean
           shift
           ;;
       -o|--open)
           build
           open_site
           shift
           ;;
       -d|--date)
           print_date
           shift
           ;;
       -i|--install)
           install_requirements
           shift
           ;;
       *)
           echo "Unknown option: $1"
           show_help
           exit 1
           ;;
   esac
done