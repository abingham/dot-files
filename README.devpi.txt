Here's how to use the plist for devpi to load and start the service:

    launchctl bootstrap gui/<UID> net.devpi.plist
    launchctl start net.devpi

Here's how to stop and unload it:

    launchctl stop net.devpi
    launchctl bootout gui/<UID> net.devpi.plist

Use the server:

    devpi use http://localhost:4040

Log in as root:

    devpi login root

Creating a mirror index of the artifactory repo:

    devpi index -c artifactory type=mirror mirror_url=https://<user>:<pass>@sixtynorthartifactory1.jfrog.io/artifactory/api/pypi/internal-python-packages/simple

Unfortunately we seem to have to provide an artifactory username and password to devpi; it doesn't honor .netrc when fetching packages, I guess.

Then create a devpi index based on pypi and artifactory:

    devpi index -c toplevel bases=/root/pypi,/root/artifactory

Use this 'toplevel' one as your package server.
