# Making menu option
function menu {
    clear
    echo -en "\E[32;1m"
    echo "------ vivo Utility Tool ------"
    echo -en "\E[37;1m"
    echo "1) Combine splitted system binary"
    echo "2) Combine splitted vendor binary"
    echo "3) Exit"
    echo
    echo -en "\E[32;1m"
    echo "Use number to select!"
    echo -en "\E[37;1m"
    read ans
    if [ "$ans" == "1" ]
    then
        clear
        echo "Make sure you have put 15 splitted system binary on this directory"
        echo "Combining..."
        cat system.new.dat* > output.new.dat
        echo "Done!"
        sleep 0.5
        echo
        echo "Removing all splitted binary"
        rm -rf system.new.dat*
        mv output.new.dat system.new.dat
        clear
    elif [ "$ans" == "2" ]
    then
        clear
        echo "Make sure you have put 15 splitted vendor binary on this directory"
        echo "Combining..."
        cat vendor.new.dat* > output.new.dat
        echo "Done!"
        sleep 0.5
        echo
        echo "Removing all splitted binary"
        rm -rf vendor.new.dat*
        mv output.new.dat vendor.new.dat
        clear
    elif [ "$ans" == "3" ]
    then
        clear
        echo "Exitting.."
        sleep 0.5
        clear
        exit 0
    fi
}
while true
do menu; done