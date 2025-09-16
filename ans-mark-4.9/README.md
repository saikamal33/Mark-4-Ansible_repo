# This project is Automated AWS Host Security Audit & Remediation! 🔐

I recently developed an Ansible playbook that automates the security auditing and remediation of AWS EC2 instances using dynamic inventory with the aws_ec2 plugin.

What it does:

1️⃣ Dynamic Inventory:

Automatically pulls hosts from AWS based on tags, filtering only relevant EC2 instances.

2️⃣ Security Audit:

Checks if SSH port is set to anything other than the default 22.

Identifies any users with UID 0 other than root (potential privilege escalation risks).

Detects if password authentication is enabled in sshd_config.

Verifies if firewalls (UFW or firewalld) are active.

3️⃣ Remediation (when triggered with --tags remediation):

Resets SSH port to 22 for consistency and security.

Removes or disables non-root UID 0 users.

Disables password authentication in SSH to enforce key-based login.

Ensures firewall (UFW or firewalld) is enabled and running.

4️⃣ Reporting:

Saves all audit data per host into structured JSON files for clear visibility and compliance tracking.
