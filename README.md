getpass
=======

simple CLI password puller for Keepass

You are using keepass on a daily basis ?
You are happy with it, but sometimes you just need, for some reason, to quickly look for a password to copy/paste?
But you don't want a complete CLI that does everything?
You are using Linux or other unix-like? You are not afraid of perl?
You care about security but you don't honestly really mind to print a password on your terminal and having it in your clipboard?

I have something for you!
Just a little script that will read and parse your keepass 2.x database, grep on the title for something and print out login and password.

Happy? You just have to install File::KeePass (you probably have Term::ReadKey already), and enjoy:

