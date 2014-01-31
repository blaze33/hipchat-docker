Hipchat-Docker
==============

Hipchat does not currently allow you to be logged in multiple accounts.
You can [vote for this idea](http://help.hipchat.com/forums/138883-suggestions-issues/suggestions/2716912-let-me-be-a-member-of-and-sign-in-to-multiple-acco).

In the meantime, here a dockerized hipchat, so you can have as many as you want :)

Usage
-----

Build the hipchat docker image

    make build

Launch and connect to an image instance over ssh:

	make hipchat PORT=2014

You just need to pick a free port on localhost.

Tested with
-----------

Ubuntu 13.10 and docker 0.7.6

	$ docker version
	Client version: 0.7.6
	Go version (client): go1.2
	Git commit (client): bc3b2ec
	Server version: 0.7.6
	Git commit (server): bc3b2ec
	Go version (server): go1.2
	Last stable version: 0.7.6

Notes
-----

Use at your own risk, contributions welcomed if you know what you do,
I cannot guarantee I'll have time to study them but I'll try to.
