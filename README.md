## Overview
Noyes is a signal processing library.  It is unique in that it is designed to
be fast, efficient, portable, and expressive.  For more information on how this
is accomplished please read the design section.  It has enough signal
processing routines to produce features suitable for speech recognition, but it
has many other uses.  This release contains independent implementations written
in Ruby, C, and Java.

## Pronunciation
Typically pronounced the same as 'noise'.  But "No!... Yes!" is
considered acceptable if you say it with sufficient conviction to make people
think you have truly changed your mind.

## Raison d'être
Noyes is a general purpose signal processing tool that is flexible enough for
many purposes.  However, it exists because there is a need for low-latency high
quality speech recognition on portable wireless devices.  The most powerful
speech recognizers are very large with huge models running on powerful cloud
based systems.  But transmitting raw audio to these recognizers creates too
much latency because raw audio uses too much bandwidth.  By sending compressed
features instead of raw audio the bandwidth can be greatly reduced without
compromising recognition accuracy.  In some cases the effect of inadequate
bandwidth on latency can be reduced to zero.

## Requirements:
Almost any version of Ruby & rake.
Java, if you want to use the Java implementation
A C compiler if you want to use the C version

Some of the utility scripts such as nrec may use sox, but
none of the core routines use it.

## Build instructions
  rake -T