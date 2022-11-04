THE IMPACT OF INPUT FLUCTUATIONS ON THE FREQUENCY-CURRENT
RELATIONSHIPS IN A BIOPHYSICAL NEURON MODEL

(1)Arsiero, M., (1)Luescher, H.-R., (2)Lundstrom, B.N., and
   (1,3)Giugliano, M.

(1) Institute of Physiology, University of Bern, Bühlplatz 5, CH-3012
    Bern, Switzerland

(2) Department of Physiology and Biophysics, University of Washington,
    Seattle, Washington 98195, USA.

(3) Laboratory of Neural Microcircuitry, Brain Mind Institute, Ecole
    Polytechnique Fédérale de Lausanne - EPFL, CH-1015 Lausanne,
    Switzerland

Corresponding author: Michele Giugliano, mgiugliano@gmail.com,
http://www.giugliano.info


This package is running with the NEURON simulation program written by
  Michael Hines and available on internet at:
  http://www.neuro.duke.edu/neuron/home.html

It contains mechanisms (.mod files) and programs (.hoc files) needed
to simulate the biophysical model, modified from the standard
Hodgkin-Huxley model, as described in the following submitted
manuscript

Arsiero, M., Luescher, H.-R., Lundstrom, B.N., and Giugliano,
M. (2007) The Impact of Input Fluctuations on the Frequency-Current
Relationships of Layer 5 Pyramidal Neurons in the Rat Medial
Prefrontal Cortex. sumbitted.

The paper examines in vitro frequency vs. current (f-I) relationships
of layer 5 (L5) pyramidal cells of the rat medial prefrontal cortex
(mPFC) using fluctuating stimuli. Studies in the somatosensory cortex
show that L5 neurons become insensitive to input fluctuations as input
mean increases and that their f-I response becomes linear. In
contrast, mPFC L5 pyramidal neurons retain an increased sensitivity to
input fluctuations, while their sensitivity to the input mean
diminishes to near zero.

A phenomenological approach, based on a novel Integrate-and-Fire model
is presented and employed to describe quantitatively the data and to
quantify the statistical significance of the new finding. An
underlying biophysical mechanism for the observed phenomenon is
proposed, based on a slow inactivating component of the sodium
current. The NEURON package provided here aims at giving the readers
the possibility of reproducing the simulations of the paper (Figure
4A), in the case of a standard Hodgkin-Huxley model (1952), modified
to include a slow inactivation component as described by Miles et
al. (2005).

The NEURON package thus include two new mechanisms: 1) a fluctuating
current-clamp injection, to mimick the experiments; 2) a modified
Hodgkin-Huxley model, including the additional gate variable. The gate
variable and its kinetics are from the contribution of Miles et al.,
(2005).

This model can be used to produce an ASCII text file (i.e. TF.x),
containing the mean firing rate for each combination of input current
mean and variance. A simple matlab script is then provided to plot
such results.

By opening the main simulation file 'runme.hoc' and modifying line 14
(i.e. the value of a_hhin) is possible to include or exclude the
additional slow inactivation of sodium channels

Questions on how to use this model should be addressed to Michele
Giugliano (mgiugliano@gmail.com)


Under unix systems:
===================
to compile the mod files use the command
nrnivmodl
and run the simulation hoc file with the command
nrngui runme.hoc

Under Windows:
==============
to compile the mod files use the "mknrndll DOS box" and
follow on-screen instructions.
A double click on the simulation file
runme.hoc
will open the simulation window.


Changelog
=========

* 20220924: Update MOD files to avoid declaring variables and functions with the same name.
  See https://github.com/neuronsimulator/nrn/pull/1992

