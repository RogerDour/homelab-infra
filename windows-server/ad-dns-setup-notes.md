# Windows Server – AD DS + DNS/DHCP (Lab Notes)

## Install & Promote to DC
1. Install Windows Server 2022 (VirtualBox).
2. Set static IP (e.g., 192.168.56.10/24).
3. Add roles: **AD DS**, **DNS**, **DHCP**.
4. Promote to Domain Controller (Server Manager) → Domain: `lab.local`.

## Create OUs / Users
- OUs: `IT`, `HR`, `Students`
- Users from CSV (see `scripts/create_ad_users.ps1`)

## DNS
- Forward Lookup Zone: `lab.local`
- A records: `dc01.lab.local`, `win10-cl01.lab.local`

## DHCP
- Scope: `192.168.56.100 – 192.168.56.200`
- Options: Router (if any), DNS = `192.168.56.10`

## Join Client
- On `WIN10-CL01`: set DNS to DC IP → Join domain `lab.local`

## GPO (Basic)
- Disable Control Panel for `Students`
- Enforce password policy
