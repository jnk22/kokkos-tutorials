crun:
  #!/usr/bin/env bash
  cd {{invocation_directory()}}/build; cmake --build . || exit 1; OMP_PROC_BIND=spread OMP_PLACES=threads ./$(pwd | sed -r 's/.*\/(.*)\/[Solution|Begin].*/\1/g')_Exercise

runs:
  #!/usr/bin/env bash
  cd {{invocation_directory()}}; OMP_PROC_BIND=spread OMP_PLACES=threads ./$(pwd | sed -r 's/.*\/(.*)\/[Solution|Begin].*/\1/g')_Exercise.host

runt:
  #!/usr/bin/env bash
  cd {{invocation_directory()}}; OMP_PROC_BIND=spread OMP_PLACES=threads ./$(pwd | sed -r 's/.*\/(.*)\/[Solution|Begin].*/\1/g')_Exercise.host

runo:
  #!/usr/bin/env bash
  cd {{invocation_directory()}}; OMP_PROC_BIND=spread OMP_PLACES=threads ./$(pwd | sed -r 's/.*\/(.*)\/[Solution|Begin].*/\1/g')_Exercise.host

rung:
  #!/usr/bin/env bash
  cd {{invocation_directory()}}; OMP_PROC_BIND=spread OMP_PLACES=threads ./$(pwd | sed -r 's/.*\/(.*)\/[Solution|Begin].*/\1/g')_Exercise.cuda

cconfig:
  #!/usr/bin/env bash
  cd {{invocation_directory()}}; mkdir -p build && cd build; cmake ..

cbuild:
  #!/usr/bin/env bash
  cd {{invocation_directory()}}; mkdir -p build && cd build; cmake --build .

makes:
  #!/usr/bin/env bash
  cd {{invocation_directory()}}; make -j KOKKOS_PATH=$HOME/Projects/kokkos KOKKOS_DEVICES=Serial KOKKOS_ARCH=

maket:
  #!/usr/bin/env bash
  cd {{invocation_directory()}}; make -j KOKKOS_PATH=$HOME/Projects/kokkos KOKKOS_DEVICES=Threads KOKKOS_ARCH=

makeo:
  #!/usr/bin/env bash
  cd {{invocation_directory()}}; make -j KOKKOS_PATH=$HOME/Projects/kokkos KOKKOS_DEVICES=OpenMP KOKKOS_ARCH=

makeg:
  #!/usr/bin/env bash
  cd {{invocation_directory()}}; make -j KOKKOS_PATH=$HOME/Projects/kokkos KOKKOS_DEVICES=Cuda KOKKOS_ARCH=
