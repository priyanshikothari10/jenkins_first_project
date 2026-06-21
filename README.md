# Jenkins First Pipeline Project

This repository demonstrates a simple Jenkins declarative pipeline for a Linux/Nginx automation script.

## What the Pipeline Does

- Checks out source code from GitHub
- Validates `nginx.sh` syntax with `bash -n`
- Marks the script executable
- Packages `index.txt` and `nginx.sh` as build artifacts

## Run Locally

```bash
bash -n nginx.sh
chmod +x nginx.sh
```

Only run `./nginx.sh` on an Ubuntu/Debian machine where installing and starting Nginx is expected.

## Jenkins Setup

1. Create a Pipeline job in Jenkins.
2. Set Pipeline definition to "Pipeline script from SCM".
3. Add this GitHub repository URL.
4. Use `Jenkinsfile` from the repository root.

## Skills Demonstrated

- Jenkins declarative pipeline syntax
- Shell script validation
- Artifact archiving
- Basic Linux service automation
