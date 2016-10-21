# OpenVPN Ansible Deployment

**Note: The build script generates openvpn server and client, it will do so _every_ time you run it.**

### Requirements:

* RHEL6
* Configured _deploy_ user that can sudo without a password.

### Pre-configuration:

You will need to preconfigure the following;

1. `vars` - Configure the relevant information for the certificates being generated. Country, Provice, Org, Email, etc.
2. `client1.ovpn` - Configure the server address you will be connecting to.
3. `server` - Change the port to the same as your client config if changing from the existing. **Note: if you are changing the openvpn listen port, you need to update this in the main.yml file.**
4. `hosts` - change this info to match your host :D
5. `main.yml` - change the ansible_ssh_user if not using username _deploy_


### Running:

`ansible-playbook main.yml`
