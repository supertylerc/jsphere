# jsphere

## About

`jsphere` is a pair of scripts that automate logins to all
devices in a [Junosphere](http://junosphere.com/ "Junosphere") 
topology.  It does this by reading a 
[CSV file](http://en.wikipedia.org/wiki/Comma-separated_values)
containing the list of devices and their details in the same
format as that provided by Junosphere.

## Security Concerns

This script utilizes two `ssh` options that pose a security 
risk.  For this reason, it is strongly recommended that you 
only ever use `jsphere` for Junosphere devices and only when
connected to a Junosphere topology.  The options are:

    StrictHostKeyChecking=no        # Disables host key checks
    UserKnownHostsFile=/dev/null    # Sets known hosts to
                                    #   /dev/null to allow for
                                    #   password authentication

## Installation

Installation is provided via an install bash script.  To install
`jsphere`, open a terminal session and enter the following command:

    curl http://oss-stack.io/scripts/jsphere/install.sh | sh

> If you don't trust me or the script, leave off the `| sh` and read
> through the commands it uses to install `jsphere`.

The script installs `jsphere` to the following location:

    $HOME/scripts/junosphere

## Using `jsphere`

Using `jsphere` is simple.  i

First, log into Junosphere and select the "**Active Topology**".
Next, click the "**export**" button and save `virtualMachines.csv`
to the installation directory (`$HOME/scripts/junosphere`).

Next, Navigate to the installation directory 
(`$HOME/scripts/junosphere`) and enter the following command:

    ./jsphere

That's it!

### Screen Commands

This script uses `screen` to make magic happen.  If you're not 
familiar with `screen`, you can 
[read its manual here](http://www.gnu.org/software/screen/manual/screen.html).
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
[Open Source Licenses page](http://opensource.org/licenses/BSD-2-Clause).

## Contributors

Tim Hoffman - Testing

