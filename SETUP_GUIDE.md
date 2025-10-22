# Setup Guide for LocalDuck Homebrew Tap

This tap repository is ready to be pushed to GitHub. Follow these steps:

## 1. Create the GitHub Repository

1. Go to https://github.com/new
2. Repository name: `homebrew-localduck` (must start with `homebrew-`)
3. Description: "Homebrew tap for LocalDuck"
4. Make it **public**
5. **Don't** initialize with README (we already have files)
6. Click "Create repository"

## 2. Push to GitHub

```bash
cd /Users/sebastian/homebrew-localduck
git remote add origin https://github.com/sebk4c/homebrew-localduck.git
git push -u origin main
```

## 3. Install LocalDuck via Homebrew

Once the repository is pushed:

```bash
brew tap sebk4c/localduck
brew install localduck
```

## Important Notes

### Correct Format
- **GitHub repo name**: `homebrew-localduck`
- **Tap command**: `brew tap sebk4c/localduck`
- The tap name is lowercase (`localduck`) and the GitHub repo has the `homebrew-` prefix

### Wrong Format
- ❌ `brew tap SEBK4C/LocalDuck` (wrong username case, wrong repo name)
- ❌ `brew tap sebk4c/Homebrew-LocalDuck` (wrong casing)
- ✅ `brew tap sebk4c/localduck` (correct!)

## Future Updates

When you update LocalDuck:

1. Create a release tag in the LocalDuck repository:
   ```bash
   cd /Users/sebastian/Projects/LocalDuck
   git tag v0.1.0
   git push origin v0.1.0
   ```

2. Update the formula to use the tag instead of main:
   ```ruby
   url "https://github.com/sebk4c/LocalDuck/archive/refs/tags/v0.1.0.tar.gz"
   ```

3. Calculate the new SHA256:
   ```bash
   curl -sL https://github.com/sebk4c/LocalDuck/archive/refs/tags/v0.1.0.tar.gz | shasum -a 256
   ```

4. Update the formula with the new SHA256

5. Commit and push:
   ```bash
   git add localduck.rb
   git commit -m "Update LocalDuck to v0.1.0"
   git push
   ```

6. Users can upgrade with:
   ```bash
   brew upgrade localduck
   ```

## Troubleshooting

If you get errors when tapping:

- Ensure the GitHub repository name is exactly `homebrew-localduck`
- Ensure the repository is public
- Check that the username in the URL matches your GitHub username exactly
- Tap commands are case-sensitive: `sebk4c/localduck` not `SEBK4C/LocalDuck`

