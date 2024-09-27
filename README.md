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
    $ bin/words

Documentation
=============

[Whitaker's original documentation](https://web.archive.org/web/20111105213921/http://users.erols.com/whitaker/wordsdoc.htm)

[Martin Keegan's documentation](http://mk270.github.io/whitakers-words/)

[Martin Keegan's web site](http://mk270.github.io/whitakers-words/operational.html)

Also see the HOWTO.txt file.

