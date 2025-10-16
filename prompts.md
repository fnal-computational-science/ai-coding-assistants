# Some Useful Prompts for GitHub Copilot


## Using GitHub Copilot to help configure VS Code

### To enable Intellisense in the code editor.

    Create a .vscode directory with all appropriate configuration files to allow Intellisense to do code navigation and code completion.

### To enable VS Code to build code and run tests.

This assumes you have already run the command to build the code and run
the tests in a terminal window. In many cases you will need several
iteration with Copilot to get to the point where you have commands that
work as you want them to. The prompt below is a good starting point.

    Write tasks.json to allow building code and running tests.
    The commands I use in my terminal window are
    <copy and paste the command used to build the code and run the tests here.>
