# GCP Web Security Scanner: XSS Lab

This lab deploys an intentionally vulnerable web application on Compute Engine, demonstrates reflected cross-site scripting (XSS), detects it with Web Security Scanner, and applies a code-level remediation.

## Workflow

1. Create a disposable GCP project and VM.
2. Deploy the application over SSH.
3. Test the XSS payload only against the lab VM.
4. Enable the Web Security Scanner API and create a scan configuration.
5. Apply context-aware output encoding and scan again to verify the finding is resolved.

## Evidence

![Project](lab_screenshots/01-gcp-console-project.png)
![VM](lab_screenshots/02-vm-instance-created.png)
![Deployment](lab_screenshots/03-cloud-shell-commands.png)
![SSH](lab_screenshots/04-ssh-vm-deployment.png)
![Application](lab_screenshots/05-vulnerable-app-running.png)
![XSS demonstration](lab_screenshots/06-xss-injection-demo.png)
![API](lab_screenshots/07-web-security-scanner-api.png)
![Scan configuration](lab_screenshots/08-create-scan-config.png)
![Scan](lab_screenshots/09-scan-running.png)
![Finding](lab_screenshots/10-xss-vulnerability-detected.png)
![Remediation](lab_screenshots/11-code-remediation.png)

## Learning outcomes

- Deployed and managed a Compute Engine workload.
- Used a native GCP vulnerability scanner.
- Distinguished an intentionally vulnerable application from its remediated version.
- Applied output encoding appropriate to the rendering context.

**Author:** Kartikeya Uniyal
