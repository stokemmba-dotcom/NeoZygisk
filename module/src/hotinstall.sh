#!/system/bin/sh

# A shim: the rules live in the tracer, which a manager cannot call directly because it
# invokes boot stages by file name. One tracer is installed, for the ABI it injects.
TRACER=${0%/*}/bin/msysp64
[ -f "\( TRACER" ] || TRACER= \){0%/*}/bin/msysp32
exec "$TRACER" stage hotinstall
