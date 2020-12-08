#!/usr/bin/tcsh -f
#-------------------------------------------
# qflow exec script for project /home/mariajesus1399/Escritorio/Proyecto_microelectronica/Qflow/contador_4_bits
#-------------------------------------------

# /usr/lib/qflow/scripts/synthesize.sh /home/mariajesus1399/Escritorio/Proyecto_microelectronica/Qflow/contador_4_bits contador || exit 1
# /usr/lib/qflow/scripts/placement.sh -d /home/mariajesus1399/Escritorio/Proyecto_microelectronica/Qflow/contador_4_bits contador || exit 1
/usr/lib/qflow/scripts/vesta.sh /home/mariajesus1399/Escritorio/Proyecto_microelectronica/Qflow/contador_4_bits contador || exit 1
# /usr/lib/qflow/scripts/router.sh /home/mariajesus1399/Escritorio/Proyecto_microelectronica/Qflow/contador_4_bits contador || exit 1
# /usr/lib/qflow/scripts/placement.sh -f -d /home/mariajesus1399/Escritorio/Proyecto_microelectronica/Qflow/contador_4_bits contador || exit 1
# /usr/lib/qflow/scripts/router.sh /home/mariajesus1399/Escritorio/Proyecto_microelectronica/Qflow/contador_4_bits contador || exit 1 $status
# /usr/lib/qflow/scripts/cleanup.sh /home/mariajesus1399/Escritorio/Proyecto_microelectronica/Qflow/contador_4_bits contador || exit 1
# /usr/lib/qflow/scripts/display.sh /home/mariajesus1399/Escritorio/Proyecto_microelectronica/Qflow/contador_4_bits contador || exit 1
