#
## Author: ZnHoCn
##
## Use:
#    ./dump.sh                   Capture router wlan0 packet
#    ./dump.sh date file_name    Rename UTC timestamp to year-month-day-hour,minute,second
#    ./dump.sh utc 1532779430    Convert timestamp to readable format

# tcpdump -i wlan0 -w wlan0_$(date +%F-%H%M%S).cap
# tcpflow -r wlan0_2018-01-01-081831.cap

if [ "$1" == "date" ]; then
    if [ -n "$2" ]; then
#        mv $2 $(echo $2 | cut -d '_' -f 1)_$(date -d @`echo $2 | cut -d '_' -f 2 | head -c 10` +%Y-%m-%d-%H%M%S).cap
        for i in `ls $2* | grep cap`; do echo $i; mv $i $(echo $i | cut -d _ -f 1)_$(date -d @`echo $i | cut -d _ -f 2 | cut -d . -f 1` +%Y-%m-%d-%H%M%S).cap; done
    else
#        for i in `ls *.cap`; do mv $i $(echo $i | cut -d _ -f 1)_$(date -d @`echo $i | cut -d _ -f 2 | head -c 10` +%Y-%m-%d-%H%M%S).cap; done
        echo "No file name specified"
    fi
elif [ "$1" == "utc" ]; then
    date -d @$2 +%Y-%m-%d-%H%M%S
else
    tcpdump -i wlan0 -w wlan0_$(date +%F-%H%M%S).cap
fi
