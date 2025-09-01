#!/bin/bash

echo "==================================="
echo "Building documentation locally..."
echo "==================================="

# Build the documentation
mkdocs build --clean

if [ $? -ne 0 ]; then
    echo "Build failed!"
    exit 1
fi

echo ""
echo "==================================="
echo "Build completed successfully!"
echo "==================================="
echo ""
echo "Next steps:"
echo "1. Review the built site in the /site directory"
echo "2. Commit and push the changes to trigger FTP deployment:"
echo "   git add site/"
echo "   git commit -m \"Update documentation\""
echo "   git push origin main"
echo ""