# Rofi Drun Search Web

A script that enables direct web searching from rofi's drun menu. Search in your browser or navigate to websites directly from rofi drun using this lightweight solution.

## Features

- Search the web directly from rofi drun
- Navigate to websites without opening a separate browser window first
- Seamless integration with your existing rofi workflow

## Installation

### 1. Clone the Repository

```bash
git clone https://github.com/Mr-Aaryan/rofi-drun-search-web.git
```

### 2. Install the Script

It's recommended to store the script in your `.config/scripts/` directory for better organization:

```bash
# Create scripts directory if it doesn't exist
mkdir -p ~/.config/scripts/

# Copy the script
cp rofi-drun-search-web/rofi-drun.sh ~/.config/scripts/

# Make it executable
chmod +x ~/.config/scripts/rofi-drun.sh
```

## Usage

Use the following command to launch rofi with web search capabilities:

```bash
rofi -show drun -run-command "$HOME/.config/scripts/rofi-drun.sh {cmd}"
```


## How It Works

The script intercepts commands from rofi drun and determines whether to:
- Execute the command normally (for regular applications)
- Perform a web search (for search queries)
- Navigate directly to websites (for URL-like inputs)

## Requirements

- rofi
- A web browser (firefox has been used here)

## Contributing

Feel free to open issues or submit pull requests on the [GitHub repository](https://github.com/Mr-Aaryan/rofi-drun-search-web).

## License

This project is open source. Please check the repository for license details.