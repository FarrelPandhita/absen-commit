<h1 align="center" id="title">absen commit</h1>

<p align="center"><img src="https://socialify.git.ci/FarrelPandhita/absen-commit/image?font=Rokkitt&amp;language=1&amp;name=1&amp;owner=1&amp;pattern=Circuit+Board&amp;stargazers=1&amp;theme=Dark" alt="project-image"></p>

# 📊 GitHub Contribution Graph Generator

A bash script that automatically generates GitHub contributions with customized commit history. This tool creates multiple commits per day across a specified date range, perfect for filling in your contribution graph.

## ✨ Features

- 🎯 **Automated Daily Commits**: Generates 7-10 random commits per day
- ⏰ **Realistic Timestamps**: Commits are timestamped between 8:00 AM - 11:59 PM
- 🌍 **Multilingual Messages**: Includes messages in English, Indonesian, Korean, and Chinese
- 🎨 **Emoji Variety**: Random emoji selection for each commit
- 📅 **Custom Date Range**: Easily configure start and end dates
- 🚀 **Batch Processing**: Processes entire date ranges automatically

## 🔧 Prerequisites

- Git installed on your system
- A GitHub repository (can be a new empty repo)
- Bash shell (Linux/macOS/WSL on Windows)

## 📦 Installation

1. Clone or create a new repository:
```bash
git clone https://github.com/yourusername/your-repo.git
cd your-repo
```

2. Create the script file:
```bash
nano generate-commits.sh
```

3. Copy the script content and save it

4. Make the script executable:
```bash
chmod +x generate-commits.sh
```

## 🚀 Usage

### Basic Usage

Simply run the script:
```bash
./generate-commits.sh
```

### Customizing Date Range

Edit these lines in the script to change the date range:
```bash
start_date="2023-01-01"  # Change to your desired start date
end_date="2024-12-31"    # Change to your desired end date
```

### Customizing Commit Count

Modify this line to change the number of commits per day:
```bash
num_commits=$((RANDOM % 3 + 7))  # Currently generates 7-9 commits
```

For example:
- `$((RANDOM % 3 + 4))` = 4-6 commits per day
- `$((RANDOM % 5 + 10))` = 10-14 commits per day

## 📋 How It Works

1. **Date Iteration**: The script loops through each day in the specified date range
2. **Random Commits**: For each day, it generates 7-9 commits with random timestamps
3. **Content Generation**: Each commit creates/updates `absen.txt` with unique content
4. **Timestamp Assignment**: Commits are backdated using `GIT_COMMITTER_DATE` and `--date` flags
5. **Auto Push**: After all commits are created, they are pushed to the remote repository

## 🎨 Customization Options

### Adding More Messages

Edit the `messages` array:
```bash
messages=("absen" "hadir" "present" "disini" "출석" "在席" "your-message")
```

### Adding More Emojis

Edit the `emojis` array:
```bash
emojis=("🎉" "📅" "✅" "🚀" "📝" "🎯" "⭐")
```

### Changing Time Range

Modify the hour range (currently 8-23):
```bash
hour=$((RANDOM % 16 + 8))  # 8 AM to 11 PM
# Change to: $((RANDOM % 24))  # for 0-23 (full day)
```

## ⚠️ Important Notes

- **GitHub Contribution Rules**: Commits must be made to the default branch (usually `main` or `master`)
- **Repository Ownership**: You must be the repository owner or have write access
- **Email Verification**: Use the same email in Git config as your GitHub account
- **Existing History**: This script will add to your existing commit history
- **Rate Limits**: Be mindful of GitHub's API and push rate limits

## 🔐 Configuration

Make sure your Git is configured correctly:
```bash
git config user.name "Your Name"
git config user.email "your-email@example.com"
```

## 🐛 Troubleshooting

### Commits not showing on GitHub
- Ensure your Git email matches your GitHub account email
- Check that you're pushing to the default branch
- Verify the repository is public or you have proper access

### Permission Denied
```bash
chmod +x generate-commits.sh
```

### Date Format Issues
The script uses GNU date format. On macOS, you may need to install `coreutils`:
```bash
brew install coreutils
# Then use: gdate instead of date in the script
```

## 📝 Example Output

```
📅  2023-01-01
  ✅ Commit 1 at 2023-01-01T09:23:45 - absen 🎉
  ✅ Commit 2 at 2023-01-01T14:56:12 - present ✅
  ✅ Commit 3 at 2023-01-01T18:34:09 - hadir 📅
  ...
```

## 🤝 Contributing

Contributions, issues, and feature requests are welcome! Feel free to check the issues page.

## ⚖️ Disclaimer

This tool is created for educational purposes and personal contribution graph customization. Please use responsibly and in accordance with GitHub's Terms of Service. Artificially inflating contribution graphs may misrepresent your actual activity.

## 📄 License

This project is [MIT](LICENSE) licensed.

## 🌟 Star This Repo

If you find this project useful, please consider giving it a star ⭐

---

**Made with ❤️ for the GitHub community**
