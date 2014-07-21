# jsphere

## About

`jsphere` is a pair of scripts that automate logins to all devices in a
[Junosphere][1] topology.  It does this by reading a [CSV file][2]
containing the list of devices and their details in the same format as
provided by Junosphere.

## Security Concerns

This script utilizes two `ssh` options that pose a security risk.  For
this reason, it is strongly recommended that you only ever use `jsphere`
for Junosphere devices and only when connected to a Junosphere topology.
The options used are:

```
StrictHostKeyChecking=no        # Disables host key checks
UserKnownHostsFile=/dev/null    # Sets known hosts to /dev/null to allow
                                #   for password authentication
```

## Installation

Clone this repository and create a symlink for `jsphere`.  An example of
how to do this is provided below, though you are free to modify paths if
you want.

```bash
git clone https://github.com/supertylerc/jsphere $HOME/src/jsphere
ln -s $HOME/src/jsphere/jsphere $HOME/bin/jsphere
echo PATH=$PATH:$HOME/bin >> $HOME/.zshrc
```

> If you're using `bash`, you should change `.zshrc` to `.bashrc`.  If
> you already have `$HOME/bin` in your `PATH` variable (you can check by
> typing `echo $PATH` at the commandline), you can skip the last step.

You may need to close your shell/terminal and open a new one.

## Using `jsphere`

Using `jsphere` is simple!

First, log into Junosphere and select the "**Active Topology**".  Next,
click the "**export**" button and save `virtualMachines.csv` to the
installation directory (`$HOME/src/jsphere`).

Now just type `jsphere` and you'll start a session with all of the
Junosphere routers in your topology!

### Screen Commands

This script uses `screen` to make magic happen.  If you're not
familiar with `screen`, you can  [read its manual here][3]
However, here are a few tips to get you started.

Enter command mode by pressing `ctrl+A`.  Select a specific
numbered window simply by pressing its number.  Move left by
pressing `p` (**previous**), and move right by pressing `n`
(**next**).  Finally, get a list of all of the `screen`
windows by pressing `"` (double-quotation mark).

> If you don't have anything in your `.screenrc`, enter the
> following command in a terminal window:
>     echo 'caption always "%-Lw%{= BW}%50>%n%f* %t%{-}%+Lw%<"' >> ~/.screenrc

## License

This package is licensed under the BSD 2-Clause license, and your use
of this package requires that you accept those terms.  You can view
the license locally in the "LICENSE" file, or online on the
[Open Source Licenses page][4].

## Contributors

Tim Hoffman - Testing


[1]: http://junosphere.com/ "Junosphere"
[2]: http://en.wikipedia.org/wiki/Comma-separated_values "CSV"
[3]: http://www.gnu.org/software/screen/manual/screen.html "screen"
[4]: http://opensource.org/licenses/BSD-2-Clause "BSD 2-Clause License"
