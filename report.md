# Week 14 Project Report – Automated Backup System

## 1. What hurdles have you faced so far?
- Initial confusion with `cron` syntax and testing scheduled runs
- Getting `mail` to work properly in the CSX environment
- Debugging path errors when running via cron

## 2. How did you solve them?
- Used `crontab -l` and log files to confirm cron was executing correctly
- Verified mail configuration and used log redirection to capture errors
- Made the script use absolute paths and tested it in both interactive and cron environments

## 3. What are your next steps?
- Polish the README with clear usage instructions
- Upload the finalized script and report to GitHub
- Double-check backup file naming and test email notifications again
