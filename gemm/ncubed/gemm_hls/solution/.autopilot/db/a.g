#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /local/ssd/home/mattfel/machsuite/gemm/ncubed/gemm_hls/solution/.autopilot/db/a.g.bc ${1+"$@"}
