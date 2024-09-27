WORDS
=====

This is a Latin parser and Latin-English dictionary, originally by William Whitaker (1936–2010).
It was originally cleaned up by Martin Keegan ([github](https://github.com/mk270/whitakers-words))
and was available as a Debian package, but as time went on it started failing to compile on modern
versions of GNAT, Keegan didn't respond to a pull request to fix the problem,
and the package was dropped from Debian. This fork is meant to provide a version that will compile
again and that can be installed on Linux.

Compiling and use on Debian-based systems
=====

    $ sudo apt-get install gprbuild gnat
    $ make
    $ bin/words

Documentation
=============

See the HOWTO.txt file included, 
and documentation on the [Project Website](http://mk270.github.io/whitakers-words/operational.html)

Licensing
=========

WORDS, a Latin dictionary, by Colonel William Whitaker (USAF, Retired)

Copyright William A. Whitaker (1936-2010)

This is a free program, which means it is proper to copy it and pass
it on to your friends. Consider it a developmental item for which
there is no charge. However, just for form, it is Copyrighted
(c). Permission is hereby freely given for any and all use of program
and data. You can sell it as your own, but at least tell me.

This version is distributed without obligation, but the developer
would appreciate comments and suggestions.

All parts of the WORDS system, source code and data files, are made freely
available to anyone who wishes to use them, for whatever purpose.
