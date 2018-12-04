# Using the directory

This directory should be linked to `~/Library/Application Support/Code/User`.

# Using the extensions

The `extensions.list` file is a list of extensions to install into code. You can install them using something like this:

```
cat extensions.list | xargs -L 1 echo /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension
```
