#!/bin/bash

d0=$(dirname "$0") ;

set -e ;
set -x ;

cd $d0 ;
[[ -d koans ]] || rake gen ;

echo ;
rake
# decide to run rake automatically from now on as you edit
gem install watchr
watchr ./koans/koans.watchr

set +x ;
set +e ;

#
