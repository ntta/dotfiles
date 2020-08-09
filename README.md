# Aaron's Dotfiles

## Setup

### Step 1
Git clone this repo

### Step 2
Change `init.vim` to this

```
function! SourceLocal(relativePath)
  let fullPath = 'C:\projects\dotfiles\'. a:relativePath
  exec 'source ' . fullPath
endfunction
call SourceLocal("init.vim")
```
### Step 3
Replace `C:\projects\dotfiles\` with the path in Step 1

### Step 4
Copy `coc-settings.json` and `ginit.vim` (Windows only) to nvim folder
