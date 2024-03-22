# Session #10 (Shell expansion shell variables in Linux.)

## CMD's

1. echo $HOSTNAME
2. echo $USER
3. echo $SHELL
4. <varaible_name> = 'value' // firstName=Mohit // echo $firstName will set value
5. set // list all shell variables in linux (Note : list showed as per shell 1) bash 2) zsh)
6. prefix=Super // echo 'Hello ${prefix}man and ${prefix}girl'
7. export var4 // if var4=batman then export cmd will export and add to all shells
8. set -u // by this cmd we will get error for unbound variables

## My Questions

1. What's the difference between bashrc and bash profile files in Linux

The main difference between the `.bashrc` and `.bash_profile` files in Linux lies in their purpose and when they are executed.

a **`.bashrc`**:

- **Purpose**: The `.bashrc` file is a script file that is executed each time a new interactive non-login shell is started. This means it is executed every time you open a new terminal window or start a new shell session within an existing terminal.
- **Use Case**: `.bashrc` is typically used to set up the shell environment for interactive sessions, such as defining aliases, setting environment variables, customizing the shell prompt, and configuring other shell-specific settings.
- **Scope**: `.bashrc` applies to individual users and is located in their home directory (`~/.bashrc`).

b. **`.bash_profile`**:

- **Purpose**: The `.bash_profile` file is a script file that is executed only once when a user logs in to the system. It is executed for login shells, which are shell sessions that require authentication, such as when you log in to the system via the console or SSH.
- **Use Case**: `.bash_profile` is typically used to set up the user's environment for login sessions, such as defining environment variables, executing initialization scripts, and performing other tasks that should only be done once per login session.
- **Scope**: `.bash_profile` applies to individual users and is located in their home directory (`~/.bash_profile`).

In summary, `.bashrc` is executed for each new interactive non-login shell, while `.bash_profile` is executed once for each login shell session. They serve different purposes and are used to set up the shell environment for different types of shell sessions. It's common for `.bash_profile` to source `.bashrc` to ensure that settings defined in `.bashrc` are also applied to login shells.

2. How to list all shells in Linux
   To list all installed shells on a Linux system, you can inspect the contents of the `/etc/shells` file. Each line in this file represents a valid shell executable. You can simply display the contents of this file using a command like `cat` or `less`. Here's how:

```bash
cat /etc/shells
```

This command will display a list of all shells installed on your system. It may include paths like `/bin/bash`, `/bin/sh`, `/bin/zsh`, and others, depending on the shells installed on your system.

3. How can I add current? date and time in PS1 in linux
   To add the current date and time to your `PS1` prompt in Linux, you can include the `\D{format}` escape sequence within your `PS1` environment variable, where `{format}` specifies the desired format for the date and time. Here's how you can do it:

```bash
export PS1='\[\e[1;32m\]\u@\h:\w \[\e[1;34m\]\D{%F %T}\[\e[0m\]\$ '
```

In this example:

- `\D{%F %T}` represents the current date and time in the format `YYYY-MM-DD HH:MM:SS`.

- `\u` represents the current username.

- `\h` represents the hostname.

- `\w` represents the current working directory.

- `\[\e[1;32m\]` and `\[\e[1;34m\]` are ANSI escape sequences to set the color of the username/host and date/time respectively.

- `\[\e[0m\]` resets the color to the default.

You can customize the format of the date and time by adjusting the `{format}` parameter inside the `\D{format}` escape sequence according to your preference. For example, you can use `%A` for the full weekday name, `%B` for the full month name, `%H` for the hour (24-hour format), `%M` for the minute, and so on.

After setting the `PS1` variable, your shell prompt will display the current date and time along with other information every time you open a new terminal session.
