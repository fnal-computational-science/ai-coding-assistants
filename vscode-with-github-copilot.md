# Getting started with Visual Studio Code and GitHub Copilot


## Installation

These instructions assume you are working on a Mac laptop and that you
have permission to install code on that laptop. From this laptop, you
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

![The Extensions icon in Visual Studio
Code](images/extensions.png)/{#fig-extensions}

If you do not already have it, install the GitHub Copilot extension.
[^1] In VS Code, in the left-hand sidebar, choose “Extensions” (the icon
for “Extensions” is shown in **?@fig-extensions**; the Copilot extension
is circled in red. Your sidebar may show additional extensions you have
already installed some).

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

There are two good ways to start VS Code with the appropriate active
workspace. One is to open a terminal window and to go to your workspace
directory. You can start VS Code by executing the command `code .` (note
the dot) in that directory. This establishes the directory as your
current VS Code workspace.

Another choice is to open the VS Code application, and then to click
`File | Open Folder`. This brings up a file browser dialog box. Navigate
to your workspace directory and press the `Open` button.

You should then see the `Explorer` window of VS Code showing the
directory structure under your workspace directory.

## Setting up to work remotely

To work remotely additional VS Code extensions are required. We
recommend following the instructions at
https://code.visualstudio.com/docs/remote/ssh to install and configure
the extensions.

> [!NOTE]
>
> Add instructions here for getting started with a remote connection.

## Using GitHub Copilot to configure your VS Code workspace

[^1]: VS Code may have prompted you to set up Copilot when you first
    started it. If you have done that, you already have the extension
    and it is properly configured.
