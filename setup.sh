#
# Xcode
#

xcode() {
    echo "Xcode - start"
    xcode-select --print-path &> /dev/null
    [ $? -eq 0 ] && echo "Xcode already installed, skipping"
    [ $? -ne 0 ] && xcode-select --install
    echo "Xcode - end"
}

#
# Homebrew
#

install_homebrew() {
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
}

homebrew() {
    echo "Homebrew - start"
    type brew &> /dev/null
    [ $? -eq 0 ] && echo "Homebrew already installed, skipping"
    [ $? -ne 0 ] && install_homebrew
    echo "Homebrew - end"
}

#
# Run
#

run() {
    echo "Machine - start"
    echo
    xcode
    echo
    homebrew
    echo
    echo "Machine - end"
}

#
# Starts here
#

run
