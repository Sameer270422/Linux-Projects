# Linux User & Permission Management

## Objective
Demonstrate how to securely prepare a Linux server for application deployment using standard DevOps best practices.

## Operating Systems
- CentOS
- Ubuntu

## Project Overview
This project simulates a real-world DevOps task where a Linux server is prepared by creating a dedicated application user, securing directories, and applying correct permissions.

## Implementation Steps
1. Created a `devops` group.
2. Created a non-root user `appuser` and added it to the group.
3. Created application directories under `/opt/app`.
4. Assigned ownership to `appuser:devops`.
5. Applied permission `750` to restrict unauthorized access.

## Security Best Practices
- Non-root user prevents accidental system damage.
- Permission `750` ensures only the owner and group have access.

## Outcome
The application user can safely manage application files while unauthorized access is blocked.

