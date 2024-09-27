WORDS
=====

This is a Latin parser and Latin-English dictionary created by William Whitaker (1936–2010).
It was originally cleaned up by Martin Keegan ([github](https://github.com/mk270/whitakers-words))
and was available as a Debian package, but as time went on it started failing to compile on modern
versions of GNAT, Keegan didn't respond to a pull request to fix the problem,
and the package was dropped from Debian. This 2024 fork is meant to provide a version that will compile
again and that can be installed on Linux.

Licensing information is in the file LICENSE.txt. [After some discussion](https://github.com/mk270/whitakers-words/issues/118),
this license was found to be compliant with Debian's guidelines.

Compiling and use on Debian-based systems
=====

    $ sudo apt-get install gprbuild gnat
    $ make
    $ sudo make install
    $ whitakers-words amat ... parses the verb and prints a dictionary definition
    $ whitakers-words ... enters interactive mode

Documentation
=============

[Whitaker's original documentation](https://web.archive.org/web/20111105213921/http://users.erols.com/whitaker/wordsdoc.htm)

[Martin Keegan's documentation](http://mk270.github.io/whitakers-words/)

[Martin Keegan's web site](http://mk270.github.io/whitakers-words/operational.html)

Also see the HOWTO.txt file.

Ruby interface
==============

I made an interface for programs written in the ruby programming language.
The code is in my project [Lemming](https://bitbucket.org/ben-crowell/lemming/src), in the module Lemming::Whitaker.
It shells out to the binary program and communicates with it through pipes, as in an [Expect](https://en.wikipedia.org/wiki/Expect) interface.

Python port
===========

There is a [python port](https://github.com/sjgallagher2/PyWORDS), but it
doesn't implement 100% of the tricks and heuristics that the original did.

