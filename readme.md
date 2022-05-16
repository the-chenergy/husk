# Husk

_Sets up any shell to my taste._

## Usage

1. If you wish, install [Oh My Bash](https://ohmybash.nntoan.com/) or [Oh My Zsh](https://ohmyz.sh/).

1. Clone this repository and its required submodules:

   ```sh
   git clone git@github.com:the-chenergy/husk
   cd husk
   git submodule update --init --recursive
   ```

1. Execute the one-time initialization commands:

   ```sh
   source <path-to-husk>/src/unix/init.sh
   ```

1. Apply the per-launch setup code by appending the following line to `~/.bashrc` or `~/.zshrc`:

   ```sh
   source <path-to-husk>/src/unix/setup.sh
   ```

   (Support for Windows Powershell is on the way.)
