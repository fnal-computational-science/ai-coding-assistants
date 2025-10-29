# Getting started with Visual Studio Code and GitHub Copilot


## Installation

These instructions assume you are on a local machine that you
have permission to install code. From this machine, you
may log into a remote machine to do code development, or you may build
and run code locally on the machine.

If you do not already have [Visual Studio
Code](https://code.visualstudio.com/download) (VS Code) installed,
install it. During the installation it will ask you to set up Copilot
and prompt you to log in to your GitHub account. You must already have a
GitHub account established. Through you GitHub account, you can enable
GitHub Copilot features; go to
https://github.com/settings/copilot/features, which will direct you to
your own account’s settings.

[fig-extension]: images/extensions.png
![The Extensions icon in Visual Studio
Code][fig-extension]

If you do not already have it, install the GitHub Copilot extension.
[^1] In VS Code, in the left-hand sidebar, choose “Extensions” (the icon
for “Extensions” is shown in [fig-extension]; this is the extension 
storefront where extensions can be installed. 
The copilot extension can also be installed from [the VS Code marketplace](https://marketplace.visualstudio.com/items?itemName=GitHub.copilot))

When you are editing code, you may choose to work *locally* or
*remotely*. Working locally means the code you are editing, and for
compiled languages the builds you are creating reside on your laptop.
Working remotely means the code you are editing and for compiled
language the builds you are creating reside on a remote (typically
Linux) machine.

## Setting up to work locally

To work locally, you must have a repository (or repositories) for the
code you are developing on your laptop.

The first step is to establish your *workspace directory*. If you are
working with one repository, that directory is your workspace directory.
If you are working on several repositories at the same time, we
recommend having all those repositories cloned in the same directory. In
this case, the directory into which the several repositories are cloned
is your workspace directory.

There are a few good ways to start VS Code with the appropriate active
workplace. 

1. Open a terminal window and start VS Code by executing `code {workplace dir}`

2. Click `File | Open Folder`, navigate to your workspace and press `Open`

3. Open the command pane with `shift + cmd{/ctrl} + p`, type `> File: Open Folder`, enter your workspace. 

You should then see the `Explorer` window of VS Code showing the
directory structure under your workspace directory.

## Setting up to work remotely

To work remotely additional VS Code extensions are required. We
recommend following the instructions at
https://code.visualstudio.com/docs/remote/ssh to install and configure
the extensions.

To connect to a remote machine, open the extension by either

1. Click the [remote-connection] button (bottom corner, highlighted) and click "Connect to Host" in the command pane.

![Button with less than and great than signs][remote-connection]

or 

2. Open the command pane with `shift + cmd{/ctrl} + p` and type `Remote-SSH: Connect to Host`

Then enter "Add New SSH Host" and enter your SSH command as you normally would (E.G. `ssh user@host`).
You will be additionally prompted for login information (if the resource uses a username/password). 

### Using Kerberos
If you are connecting to a resource that uses Kerberos for login, first verify your ticket is current using `klist` in a local terminal. 
You will then need to verify the host has GSSAPI auth by opening the ssh config file located as `~/.ssh/config`. (Accessable through VS Code through the `Configure SSH Hosts` option in `Remote-SSH`)

Your host should be listed in this file with the settings: 

```sh
  Host {your-host.fnal.gov}
    HostName {your-host.fnal.gov}
    GSSAPIAuthentication yes
    GSSAPIDelegateCredentials yes
    User {user}
```

If it is not, manually edit this file to add these options. 

## Using GitHub Copilot to configure your VS Code workspace


[fig-extension]: images/extensions.png
[remote-connection]: images/remote.png

[^1]: VS Code may have prompted you to set up Copilot when you first
    started it. If you have done that, you already have the extension
    and it is properly configured.
