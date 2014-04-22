#!/bin/bash

alias pptp_connect="pptpsetup --create Moscow --server asusrtn10u.asuscomm.com --username pptp --password pptp --encrypt --start"
alias pptp_route_up="route add default dev ppp0; route del default em1"
alias pptp_route_down="route add default dev em1; route del default ppp0"
alias pptp_disconnect="pptpsetup --delete Moscow"

alias pptp_up="pptp_connect; pptp_route_up"
alias pptp_down="pptp_disconnect; pptp_route_down"
