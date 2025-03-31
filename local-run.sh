#!/bin/bash



mkdir -p ./tmp/iexec_in
mkdir -p ./tmp/iexec_out
rm -rf tmp/iexec_out/*

docker run -v ./tmp/iexec_in:/iexec_in -v ./tmp/iexec_out:/iexec_out -e IEXEC_IN=/iexec_in -e IEXEC_OUT=/iexec_out ericro/scikit-learn-classification:1.0.0

echo "check result ..." 
echo "xdg-open tmp/iexec_out/result.pdf"