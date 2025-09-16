# This project is Automated AWS Host Security Audit & Remediation!

I recently developed an Ansible playbook that automates the security auditing and remediation of AWS EC2 instances using dynamic inventory with the aws_ec2 plugin.

What it does:

- Dynamic Inventory:

Automatically pulls hosts from AWS based on tags, filtering only relevant EC2 instances.

- Security Audit:

Checks if SSH port is set to anything other than the default 22.

Identifies any users with UID 0 other than root (potential privilege escalation risks).

Detects if password authentication is enabled in sshd_config.

Verifies if firewalls (UFW or firewalld) are active.

- Remediation (when triggered with --tags remediation):

Resets SSH port to 22 for consistency and security.

Removes or disables non-root UID 0 users.

Disables password authentication in SSH to enforce key-based login.

Ensures firewall (UFW or firewalld) is enabled and running.

- Reporting:

Saves all audit data per host into structured JSON files for clear visibility and compliance tracking.

## Working
We need to have aws ec2 instances with "Role = webserver". so the dynamic inventory will collect those and use them as inventory in this playbook.

we can run the below command to execute the playbook

      ansible-playbook -i aws_ec2.yml playbook.yml -K --skip-tags handlers,remediation
here we have "aws_ec2.yml" which has dynamic inventory configuration to take the roles.

The "-K" is used to provide the password to swith to root as the files need to be stored in local where root is required.

We are using "--skip-tags" to skip the task such as handlers and remediation as tags whiich only need to run when the tag is involved.
