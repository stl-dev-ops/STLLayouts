# Security Policy

## Supported Versions

| Version | Supported          |
| ------- | ------------------ |
| 1.0.x   | :white_check_mark: |
| < 1.0   | :x:                |

---

## Reporting a Vulnerability

**DO NOT** create a public GitHub issue for security vulnerabilities.

Instead, please report security vulnerabilities via:

**Email**: security@stlmanufacturing.com  
**Subject**: [SECURITY] STL Layouts Vulnerability Report

### What to Include

- **Description**: Clear description of the vulnerability
- **Impact**: Potential impact if exploited
- **Steps to Reproduce**: Detailed steps to reproduce the vulnerability
- **Proof of Concept**: Code or screenshots demonstrating the vulnerability (if applicable)
- **Suggested Fix**: If you have ideas for how to fix the vulnerability
- **Disclosure Timeline**: When you plan to publicly disclose (if at all)

### Response Timeline

- **Acknowledgment**: Within 48 hours
- **Initial Assessment**: Within 5 business days
- **Status Update**: Every 10 business days until resolved
- **Resolution**: Target 30 days for critical vulnerabilities

---

## Security Best Practices

### For Users

1. **Keep Software Updated**: Always use the latest version
2. **Strong Passwords**: Use strong Windows domain passwords
3. **Least Privilege**: Request only necessary permissions
4. **Report Suspicious Activity**: Report unusual behavior immediately

### For Developers

1. **Input Validation**: Validate and sanitize all user input
2. **Parameterized Queries**: Use parameterized queries to prevent SQL injection
3. **Authentication**: Use Windows Authentication (no password storage)
4. **Encryption**: Encrypt sensitive data at rest and in transit
5. **Dependency Updates**: Keep NuGet packages up-to-date
6. **Code Review**: Peer review all code changes for security issues
7. **Security Testing**: Run security scans and penetration tests

---

## Known Security Considerations

### Windows Authentication

- Application uses Windows Authentication (Active Directory)
- No password storage in application
- SQL Server connections use Integrated Security
- Network share access uses Windows credentials

### Database Security

- Application database: Read/Write for app service account, Read-only for auditors
- CRMDB: Read-only for all application users
- Sensitive configuration data encrypted at rest
- SQL injection prevented via parameterized queries

### Network Security

- SQL Server connections encrypted (if configured)
- Network share access over SMB (encrypted by default on modern Windows)
- Application binaries signed with Authenticode certificate

### Audit Logging

- All user actions logged
- Logs are tamper-evident (hash chain or immutable storage)
- Audit logs retained for 1 year for compliance

---

## Vulnerability Disclosure Policy

We follow **coordinated disclosure**:

1. **Private Disclosure**: Report vulnerability privately
2. **Acknowledgment**: We acknowledge receipt within 48 hours
3. **Investigation**: We investigate and develop a fix
4. **Fix Release**: We release a patched version
5. **Public Disclosure**: After fix is released, we publicly disclose the vulnerability (with credit to reporter, if desired)

**Embargo Period**: Minimum 30 days from initial report before public disclosure

---

## Security Updates

Security updates are released as soon as possible after a vulnerability is confirmed and fixed.

**Notification**:
- Email to all registered users
- Release notes in CHANGELOG.md
- Security advisory on GitHub (if applicable)

---

## Compliance

STL Layouts is designed to comply with:

- **GDPR**: Data protection and privacy (if applicable)
- **SOX**: Audit logging and data retention (if applicable)
- **ISO 27001**: Information security management

---

## Contact

**Security Team**: security@stlmanufacturing.com  
**DevOps Lead**: [Name] <devops@stlmanufacturing.com>

---

**Last Updated**: December 15, 2025
