# 🎬 framegrabber  

![Demo of framegrabber in action](/assets/demo-framegrabber.gif)

**framegrabber** is a lightweight, zero-dependency CLI tool for extracting frames **and audio** from any video file with `ffmpeg`.  

Built on top of `ffmpeg`, it’s designed for **film editors, VFX artists, creative coders, and generative AI workflows** where you need precise frame grabs without the overhead of a full NLE.  

Whether you’re building **AI training datasets**, creating **storyboards from dailies**, generating **reference stills for visual effects**, or pulling **keyframes for image-to-image pipelines**, `framegrabber` gets you there in seconds.  

---

## ✨ Why use framegrabber?
- 🎥 **Film & Video Production** – Grab the **first and last frames** from a clip for **shot previews, continuity checks, or edit logs**.  
- 🖼️ **VFX & Animation** – Extract **every frame** for **rotoscoping, compositing, or style transfer pipelines**.  
- 🤖 **Generative AI / Machine Learning** – Build datasets from video sources for **text-to-video, diffusion models, image-to-image workflows**, or **control-net training**.  
- 🎨 **Creative Coding** – Use frame sequences for **GLSL shaders, Processing sketches, TouchDesigner, Blender, After Effects, or Unreal Engine pipelines**.  
- ⚡ **Fast, lean, scriptable** – Designed to slot into **automation, render farms, and pipeline scripts**.  

> In short: if you work with **video, frames, pixels, datasets, or AI**, this is the missing link in your workflow.  

---

## 🚀 Installation
<!--
### Homebrew (recommended for macOS*)
```bash
brew tap Spatial-Explorer/framegrabber
brew install framegrabber
```
-->

### Manual Install
```bash
curl -L https://raw.githubusercontent.com/Spatial-Explorer/framegrabber/main/framegrabber   -o /usr/local/bin/framegrabber && chmod +x /usr/local/bin/framegrabber
```

(For Apple Silicon with Homebrew paths, replace `/usr/local/bin` with `/opt/homebrew/bin`.)

---

## 🛠️ Usage
```bash
framegrabber -v <video-file> [options]
```

Extracts frames from a video file.  

By default extracts only the **FIRST** and **LAST** frames.  
Use `--all` to extract **EVERY frame** as sequentially numbered files.

### Options
```
  -v, --video FILE     Path to the video file (required)
      --outdir DIR     Directory to save output files (default: ./output)
      --jpg            Save output as .jpg instead of .png
      --png            Save output as .png (default)
      --all            Extract every frame (named <name>-000001.<ext>, ...)
      --force          Overwrite existing files without asking
  -q, --quiet          Quiet mode: suppress prompts and non-essential output
                       (implies --force). If --outdir cannot be created,
                       falls back silently to ./output.
  -h, --help           Show this help message
      --wav            Extract audio as lossless WAV instead of MP3
      --copy-audio     Extract audio without re-encoding (auto-detect codec/extension)
      --audio FORMAT   Choose audio mode: mp3 (default) | wav | copy
      --no-audio       Disable audio extraction

Maintenance:
      --install        Install this script globally (macOS/Linux)
      --uninstall      Remove global installation
```

---

## 🎯 Examples
```bash
# Extract first + last frame (default, PNGs in ./output)
framegrabber -v movie.mp4

# Extract all frames as JPGs into ~/frames
framegrabber -v clip.mp4 --all --jpg --outdir ~/frames

# Extract quietly (no prompts, force overwrite)
framegrabber -v demo.mp4 --quiet

# Extract audio as WAV
framegrabber -v movie.mp4 --wav

# Extract audio without re-encoding (auto codec, e.g. m4a)
framegrabber -v movie.mp4 --copy-audio

# Use the generic audio flag
framegrabber -v movie.mp4 --audio copy

# Disable audio extraction
framegrabber -v movie.mp4 --no-audio

# Install globally (copies script into /usr/local/bin)
framegrabber --install

# Remove global install
framegrabber --uninstall
```

---

## 🧩 Pipeline Use Cases
- **Previsualization**: export first/last frames of dailies to storyboard your edits.  
- **AI Dataset Creation**: generate consistent, sequential image datasets from video for Stable Diffusion, Runway, or custom ML training.  
- **Frame-by-Frame FX**: integrate with **After Effects, Blender, or Nuke** for frame sequence import.  
- **Generative Art**: feed frames into **Processing, OpenFrameworks, TouchDesigner, or Unity** for experimental visuals.  
- **Archival & Documentation**: extract keyframes for catalogs, research datasets, and metadata logging.  

---
## * What's Next
- Updated installers and documentation for adding FFMPEG (https://ffmpeg.org/download.html) if you don't have it on your system.
- Update Brew Installer
- MCP server for direct GenAI interactions 

## 🔑 Keywords (SEO for discoverability)
`frame extraction, ffmpeg, video to frames, keyframe capture, AI dataset tool, generative AI workflow, VFX frames, film editing utilities, storyboard automation, image sequence generator, video preprocessing, creative coding, machine learning video preprocessing, dataset curation, animation pipeline, framegrabbing tool`

---

## 📜 License
MIT © [Spatial Explorer](https://github.com/Spatial-Explorer)
