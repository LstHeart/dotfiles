# install global npms
npm install -g @devcontainers/cli @antfu/ni vsce yo
# setup ni
cat > ~/.nirc <<EOF
defaultAgent=npm
globalAgent=npm
EOF
