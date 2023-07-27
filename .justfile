# List available commands.
default:
    #!/usr/bin/env bash
    set -euxo pipefail
    just --list

crun:
    #!/usr/bin/env bash
    cd {{ invocation_directory() }}/build; cmake --build . || exit 1; command ./$(fd -I --glob "*[Ee]xercise")

runh:
    #!/usr/bin/env bash
    cd {{ invocation_directory() }}; command ./$(fd -I --glob "*.host")

rung:
    #!/usr/bin/env bash
    cd {{ invocation_directory() }}; command ./$(fd -I --glob "*.cuda")

cconfig:
    #!/usr/bin/env bash
    cd {{ invocation_directory() }}; mkdir -p build && cd build; cmake ..

cbuild:
    #!/usr/bin/env bash
    cd {{ invocation_directory() }}; mkdir -p build && cd build; cmake --build .

makes:
    #!/usr/bin/env bash
    cd {{ invocation_directory() }}; make -j KOKKOS_PATH=$HOME/Projects/kokkos KOKKOS_DEVICES=Serial KOKKOS_ARCH=

maket:
    #!/usr/bin/env bash
    cd {{ invocation_directory() }}; make -j KOKKOS_PATH=$HOME/Projects/kokkos KOKKOS_DEVICES=Threads KOKKOS_ARCH=

makeo:
    #!/usr/bin/env bash
    cd {{ invocation_directory() }}; make -j KOKKOS_PATH=$HOME/Projects/kokkos KOKKOS_DEVICES=OpenMP KOKKOS_ARCH=

makeg:
    #!/usr/bin/env bash
    cd {{ invocation_directory() }}; make -j KOKKOS_PATH=$HOME/Projects/kokkos KOKKOS_DEVICES=Cuda KOKKOS_ARCH=
