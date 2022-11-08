# DDNS
Simple Dynamic-DNS for use with Cloudflare DNS using BASH and Systemd Services. Developed for use in my Homelab.

## Features
- Simple install script
- Easy to configure

## Technologies
- BASH
- Systemd

## Usage
### Configuration
1. Create an A record for your subdomain.
2. Create a Cloudflare API Key
3. Update `src/gdddns.sh` as follows:
    - In the quotes next to CF_API_KEY, put your Cloudflare API key.
    - In the quotes next to CF_EMAIL, put the email associated with your Cloudflare account.
    - In the quotes next to CF_ZONE_ID, put the zone identifier associated with the domain
    - In the quotes next to CF_RECORD_ID, put the identifier associated with the record.

### Installing (via Install Script)
1. Run `chmod +x install.sh`
2. Run `sudo ./install.sh`

### Uninstalling
1. Run `chmod +x uninstall.sh`
2. Run `sudo uninstall.sh`

## Contributing
This project is unmaintained, developed for my personal use and released for the benefit of anyone interested. Issues may not be addressed and pull requests will likely be closed without merging.

## Credits
Credit to Tod-SoS from [Instructables](https://instructables.com/Quick-and-Dirty-Dynamic-DNS-UsingGoDaddy/) for the base script which I modified and expanded.
