# Trust Wallet Submission Checklist

Use this checklist to ensure your Trust Wallet logo submission is complete and meets all requirements.

## Pre-Submission Checklist

### Logo File Requirements
- [ ] Logo is PNG format
- [ ] Logo is exactly 256x256 pixels
- [ ] File size is less than 100KB
- [ ] Background is transparent (alpha channel)
- [ ] File is named `logo.png` (lowercase)
- [ ] Logo is clear and high quality

### info.json File Requirements
- [ ] File is named `info.json` (lowercase)
- [ ] JSON is valid (no syntax errors)
- [ ] Contains all required fields: name, type, symbol, decimals, website, description, explorer, status, id
- [ ] Contract address uses checksum format
- [ ] All URLs are valid and accessible

### GitHub Requirements
- [ ] Have a GitHub account
- [ ] Familiar with Git basics (fork, commit, push, PR)
- [ ] Have Git installed locally (or using GitHub web interface)

## Fork & Setup

- [ ] Forked [trustwallet/assets](https://github.com/trustwallet/assets) repository
- [ ] Cloned your fork to local machine (if working locally)
- [ ] Created proper folder structure: `blockchains/ethereum/assets/0x7BeB51807E3c8BdB10A2868bD51c2D9E1764925D/`
- [ ] Verified checksum address is correct: `0x7BeB51807E3c8BdB10A2868bD51c2D9E1764925D`

## File Preparation

- [ ] Copied `logo-256x256.png` from `/branding/twusd/` in this repository
- [ ] Renamed to `logo.png`
- [ ] Verified dimensions: exactly 256x256 pixels
- [ ] Verified file size: < 100KB (should be ~17KB)

- [ ] Created `info.json` file
- [ ] Copied content from template or `/tokens/ethereum/0x7BeB51807E3c8BdB10A2868bD51c2D9E1764925D/info.json`
- [ ] Validated JSON syntax
- [ ] Verified all fields are correct

## File Upload

- [ ] Added both `logo.png` and `info.json` to the correct folder
- [ ] Folder path is: `blockchains/ethereum/assets/0x7BeB51807E3c8BdB10A2868bD51c2D9E1764925D/`
- [ ] No other files added (only logo.png and info.json)
- [ ] File names are lowercase

## Local Validation (Optional but Recommended)

- [ ] Ran `npm install` in assets repository
- [ ] Ran `npm run check` to validate submission
- [ ] All validation checks passed
- [ ] Fixed any errors reported by validation script

## Commit & Push

- [ ] Staged files: `git add blockchains/ethereum/assets/0x7BeB51807E3c8BdB10A2868bD51c2D9E1764925D/`
- [ ] Created commit with message: `Add TWUSD (0x7BeB51807E3c8BdB10A2868bD51c2D9E1764925D)`
- [ ] Pushed to your fork: `git push origin master`

## Pull Request Creation

- [ ] Navigated to your fork on GitHub
- [ ] Clicked "Pull Request" or "Contribute" button
- [ ] Created new PR to `trustwallet/assets` master branch
- [ ] PR title: `Add TWUSD (0x7BeB51807E3c8BdB10A2868bD51c2D9E1764925D)`
- [ ] Filled out PR description with token information
- [ ] Checked all items in PR checklist
- [ ] Submitted the pull request

## Automated Checks

- [ ] GitHub Actions workflow started
- [ ] All automated checks passed (green checkmarks)
- [ ] If checks failed: reviewed errors, fixed issues, pushed updates

### Common Automated Checks
- [ ] Image dimensions check (256x256)
- [ ] Image file size check (< 100KB)
- [ ] JSON validation
- [ ] Checksum address validation
- [ ] File naming validation

## Post-Submission Monitoring

- [ ] Bookmarked PR link: `https://github.com/trustwallet/assets/pull/[PR_NUMBER]`
- [ ] Noted submission date: `______________`
- [ ] Set reminder to check in 3 days
- [ ] Monitoring PR for comments from reviewers
- [ ] GitHub notifications enabled for PR updates

## During Review

- [ ] Responding promptly to reviewer feedback
- [ ] Making requested changes if any
- [ ] Pushing updates to PR branch
- [ ] Maintaining professional communication

## After Approval & Merge

- [ ] PR has been merged
- [ ] Noted merge date: `______________`
- [ ] Waiting 24-48 hours for app update
- [ ] Verified logo appears in Trust Wallet app
- [ ] Updated integration status in this repository
- [ ] Documented success date: `______________`

## Verification Checklist

After logo is live in Trust Wallet:
- [ ] Opened Trust Wallet app
- [ ] Added TWUSD token (if not already added)
- [ ] Verified logo displays correctly in token list
- [ ] Verified logo displays correctly in transaction history
- [ ] Verified logo displays correctly in send/receive screens
- [ ] Took screenshot for documentation

## Timeline Tracker

| Milestone | Expected Date | Actual Date | Status |
|-----------|---------------|-------------|--------|
| Fork Repository | ___________ | ___________ | ⏳ Pending |
| Create PR | ___________ | ___________ | ⏳ Pending |
| Automated Checks Pass | ___________ | ___________ | ⏳ Pending |
| Initial Review | ___________ | ___________ | ⏳ Pending |
| PR Merged | ___________ | ___________ | ⏳ Pending |
| Logo Live in App | ___________ | ___________ | ⏳ Pending |

## Common Issues & Solutions

### ❌ Image size not 256x256
**Solution:** Use exact file from `/branding/twusd/logo-256x256.png` - it's already 256x256px

### ❌ File size exceeds 100KB
**Solution:** The provided logo is only ~17KB, well under limit. Don't modify it.

### ❌ Invalid JSON syntax
**Solution:** Validate with `python -m json.tool info.json` or use JSON validator online

### ❌ Wrong address case
**Solution:** Use checksum format: `0x7BeB51807E3c8BdB10A2868bD51c2D9E1764925D`

### ❌ Checks still failing
**Solution:** Read error messages carefully, fix specific issues, push updates

## Resources

- [Trust Wallet Assets Repo](https://github.com/trustwallet/assets)
- [Submission Guide](./SUBMISSION_GUIDE.md)
- [Example PRs](https://github.com/trustwallet/assets/pulls?q=is%3Apr+is%3Amerged)
- [Trust Wallet Developer Docs](https://developer.trustwallet.com/)

## Notes

Use this space for additional notes or issues encountered:

```
_______________________________________________________________________________

_______________________________________________________________________________

_______________________________________________________________________________
```

---

**Status**: ⏳ Pending | 🔄 In Review | ✅ Merged | ❌ Changes Requested | 🚀 Live in App
