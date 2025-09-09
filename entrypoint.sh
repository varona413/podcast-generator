# Shebang specifies interpreter to execute script
#!/bin/bash

echo "===================="

# Set up env
git config --global user.name "${GITHUB_ACTOR}"
git config --global user.email "${INPUT_EMAIL}"

# Adds repo to safe directories list to be able to run git operations
git config --global --add safe.directory /github/workspace

# Run feed.py at its full path
python3 /usr/bin/feed.py
git add -A && git commit -m "Update Feed"

# Ensure upstream branch is set up on new machine
git push --set-upstream origin main

echo "===================="