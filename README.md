# Homelab Infra – Roger Dour

> Personal Systems & Infrastructure home lab documenting hands‑on work in **Windows Server, Active Directory, DNS/DHCP, Linux, Virtualization, Cloud (AWS/Azure), Security (WSUS/EDR)**, and **Automation (PowerShell/Bash)**.

## 🎯 Goals
- Build a realistic junior **SysAdmin** skillset for enterprise environments.
- Keep everything **repeatable & documented** (screenshots, commands, configs).
- Align with my CV claims for the **Infrastructure Systems Administrator** role.

## 🧱 Lab Topology (initial)
- **Virtualization:** VirtualBox (local) – (VMs: `WIN-SRV-DC01`, `WIN10-CL01`, `UBUNTU-SRV01`)
- **Services:** AD DS, DNS, DHCP, IIS, SSH
- **Cloud:** AWS EC2 (Windows/Linux), Azure VM (Windows/Linux)

```
[Host PC] 
   └─ VirtualBox
       ├─ WIN-SRV-DC01 (AD/DNS/DHCP, IIS)
       ├─ WIN10-CL01 (domain joined)
       └─ UBUNTU-SRV01 (SSH, ufw, Zabbix agent)
Cloud:
   ├─ AWS EC2 (snapshot/backups)
   └─ Azure VM (NSG rules + backup)
```

## 📚 Contents
- `windows-server/` – AD, DNS/DHCP, IIS, GPO
- `linux/` – Ubuntu admin, SSH, firewall
- `cloud/` – AWS EC2, Azure VM notes
- `security/` – WSUS/Defender lab
- `monitoring/` – Zabbix notes
- `scripts/` – PowerShell/Bash automation
- `images/` – screenshots

## ✅ Progress Log
- **Day 1:** Repo scaffolded; set learning goals and initial topology.
- **Day 2–3 (plan):** Install Windows Server, promote to DC, configure DNS/DHCP.
- **Day 4–5 (plan):** Join client VM, add OUs/users/groups, create basic GPO.
- **Day 6–7 (plan):** Install Ubuntu Server; SSH + ufw; systemctl/journalctl basics.
- **Day 8 (plan):** Virtualization snapshots; VM networking (NAT/Bridged).
- **Day 9–10 (plan):** AWS EC2 & Azure VM; RDP/SSH; snapshot/backup.
- **Day 11 (plan):** WSUS/Defender lab.
- **Day 12 (plan):** Zabbix + simple backup script (PowerShell).
- **Day 13–14 (plan):** Documentation + screenshots + interview prep.

## 🔗 Usage
Each folder contains short **how‑to notes** you can follow. I’ll keep pushing updates as I progress.
