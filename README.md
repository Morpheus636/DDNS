# GDDDNS
Simple Dynamic-DNS for use with GoDaddy DDNS using BASH and Systemd Services.

## Usage
### Installing
1. Create an A record for your subdomain.
2. Create a GoDaddy API Key
3. Update `src/gdddns.sh` as follows:
    1. In the quotes next to DOMAIN, put the base-level domain.
    2. In the quotes next to HOSTNAME, put the name of the subdomain (not including the base domain)
    3. In the quotes next to GD_API_KEY, put your API key and then your secret that you generated in Step 2 (separated only by a colon).
4. Run `chmod +x install.sh`
6. Run `sudo ./install.sh`

### Uninstalling
1. Run `chmod +x uninstall.sh`
2. Run `sudo uninstall.sh`

## Credits
Credit to Tod-SoS from [Instructables](https://instructables.com/Quick-and-Dirty-Dynamic-DNS-UsingGoDaddy/) for the base script which I modified and expanded.

