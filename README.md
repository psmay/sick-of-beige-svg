Sick of Beige SVG generator
===========================

This is an XSLT transform (on a null document) that converts a set of
parameters into an SVG drawing representing the corresponding [Sick of
Beige
v1](http://dangerousprototypes.com/docs/Sick_of_Beige_standard_PCB_sizes_v1.0)
board. In particular, the generated drawing contains:

*   A shape representing the board itself
*   An outline representing edge keepout, inset from the edge of the
    board
*   Shapes representing corner keepouts
*   Circles representing mounting holes
*   Crossed lines indicating the center of the board as well as the USB
    mini-B mounting centers
*   Text expressing the model number and dimensions

Most of the specific dimensions for these marks happen to be parameters
for the XSLT, but the default values (except for width and height) apply
to the entire series.

The objects are organized into Inkscape layers (or `svg:g` groups, if
you're not using Inkscape), which may be useful if you intend to convert
the drawings further.

Usage
-----

With `xsltproc`, assuming that `empty.xml` exists and is any valid XML
document, the drawing for a width `$W` and height `$H`, in millimeters,
is generated thus:

    xsltproc --param width $W --param height $H dp.xsl empty.xml > out.svg

A shell script, `generate-all-v1-sizes.sh`, creates a `build` directory
(destroying it first, if it exists), and populates it with a drawing for
each standard v1 size. The default output is included in this repository
for those who just want that, but could be useful to anyone who might
want to mess with the template.

Notice
------

This XSLT script and its default product are hereby contributed to the
public domain.
