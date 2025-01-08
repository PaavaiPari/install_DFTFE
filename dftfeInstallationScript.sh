#!/bin/bash

cd $PSCRATCH
git clone https://github.com/PaavaiPari/install_DFTFE.git install_DFTFE
cd install_DFTFE
git checkout perlmutterScriptDealii9.5.2_withPetscSlepc
cp src/rcrc $HOME/.rcrc
. ./bin/getrc.sh $HOME/$LMOD_SYSTEM_NAME
rc -l
. ./dftfe2.rc
install_blis
install_libflame
install_alglib
install_libxc
install_spglib
install_p4est
install_scalapack
install_elpa
install_kokkos
install_petsc
install_slepc
install_numdiff
install_dealii_real
install_dealii_complex
