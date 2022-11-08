# DDNS
Simple Dynamic-DNS for use with Cloudflare DNS using BASH and Systemd Services.

## Features
- Simple install script
- Easy to configure

## Technologies
- BASH
- Systemd

## Usage
### Installing
1. Create an A record for your subdomain.
2. Create a Cloudflare API Key
3. Update `src/gdddns.sh` as follows:
    1. In the quotes next to DOMAIN, put the domain (or subdomain) you want to update.
    2. In the quotes next to CF_API_KEY, put your Cloudflare API key.
    3. In the quotes next to CF_EMAIL, put the email associated with your Cloudflare account.
4. Run `chmod +x install.sh`
6. Run `sudo ./install.sh`

### Uninstalling
1. Run `chmod +x uninstall.sh`
2. Run `sudo uninstall.sh`

## Contributing
This project is unmaintained, developed for my personal use and released for the benefit of anyone interested. Issues may not be addressed and pull requests will likely be closed without merging.

## Credits
Credit to Tod-SoS from [Instructables](https://instructables.com/Quick-and-Dirty-Dynamic-DNS-UsingGoDaddy/) for the base script which I modified and expanded.
