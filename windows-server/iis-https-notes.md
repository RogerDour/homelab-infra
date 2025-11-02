# Windows Server – IIS + HTTPS (Lab Notes)

## Install IIS
- Add Roles: **Web Server (IIS)**.
- Create simple site at `C:\inetpub\wwwroot`.

## HTTPS with Self‑Signed Cert
1. Create self‑signed certificate in IIS Manager.
2. Bind site to port 443 with the certificate.
3. Redirect 80 → 443.
