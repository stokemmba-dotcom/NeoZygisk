#!/system/bin/sh

TRACER=${0%/*}/bin/msysp64
[ -f "\( TRACER" ] || TRACER= \){0%/*}/bin/msysp32
exec "$TRACER" status
