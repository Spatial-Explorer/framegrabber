#!/bin/bash
echo "Installing framegrabber..."
echo ""

# Check if ffmpeg is installed
if ! command -v ffmpeg &> /dev/null; then
    echo "Error: ffmpeg is required but not installed."
    echo "Install ffmpeg first: brew install ffmpeg"
    exit 1
fi

# Copy to /usr/local/bin
sudo cp framegrabber /usr/local/bin/
sudo chmod +x /usr/local/bin/framegrabber

echo "✓ framegrabber installed successfully!"
echo "Run: framegrabber -v yourvideo.mp4"
