# gandi-dydns mod for swag

This mod adds a gandip python script to update your DNS with your current public IP

In openssh-server docker arguments, set an environment variable `DOCKER_MODS=linuxserver/mods:swag-gandi-dyndns`

If adding multiple mods, enter them in an array separated by `|`, such as `DOCKER_MODS=linuxserver/mods:swag-gandi-dyndns|linuxserver/mods:mod2`

# Configuration

This mod expects a `GANDI_APIKEY` environment variable, which contains your gandi API key.

You can set one from a file using `FILE__GANDI_APIKEY=/config/path/to/api.key` in your docker-compose.yml

