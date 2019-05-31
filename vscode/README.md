# The `User` directory

This contains the Code user settings. It should be linked to `~/Library/Application Support/Code/User`, something like this:

```
ln -s ~/repos/dot-files/vscode/User ~/Library/Application\ Support/Code/User
```

# Using `extensions.list`

The `extensions.list` file is a list of extensions to install into code. You can install them using something like this:

```
cat extensions.list | xargs -L 1 /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension
```
