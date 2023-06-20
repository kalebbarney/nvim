-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/kb/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/kb/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/kb/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/kb/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/kb/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["alpha-nvim"] = {
    config = { "\27LJ\2\nz\0\2\6\0\6\0\r6\2\0\0009\2\1\2\18\4\0\0'\5\2\0B\2\3\2\14\0\2\0X\3\5�6\2\3\0009\2\4\0026\4\5\0\18\5\1\0B\2\3\2L\2\2\0\23default_mru_ignore\17tbl_contains\bvim\19COMMIT_EDITMSG\tfind\vstring�\6\1\0\t\0\29\1:6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0019\2\4\0025\3\6\0=\3\5\0029\2\3\0019\2\a\0024\3\3\0009\4\b\1'\6\t\0'\a\n\0'\b\v\0B\4\4\0?\4\0\0=\3\5\0029\2\3\0019\2\f\0024\3\3\0005\4\r\0>\4\1\3=\3\5\0029\2\3\0019\2\14\0024\3\3\0005\4\15\0>\4\1\3=\3\5\0029\2\16\1+\3\1\0=\3\17\0029\2\3\0019\2\18\0024\3\3\0009\4\b\1'\6\19\0'\a\20\0'\b\21\0B\4\4\0?\4\0\0=\3\5\0029\2\3\0019\2\22\0024\3\3\0005\4\23\0>\4\1\3=\3\5\0029\2\24\0013\3\26\0=\3\25\0029\2\27\0009\4\28\1B\2\2\1K\0\1\0\vconfig\nsetup\0\vignore\rmru_opts\1\0\2\bval\vfooter\ttype\ttext\vfooter\f:qa<CR>\19  Quit NVIM\6q\19bottom_buttons\fenabled\22nvim_web_devicons\1\0\2\bval\3\0\ttype\fpadding\fmru_cwd\1\0\2\bval\3\0\ttype\fpadding\bmru :ene <BAR> startinsert <CR>\18  New file\6e\vbutton\16top_buttons\1\a\0\0:                                   __                :      ___     ___    ___   __  __ /\\_\\    ___ ___    :     / _ `\\  / __`\\ / __`\\/\\ \\/\\ \\\\/\\ \\  / __` __`\\  :    /\\ \\/\\ \\/\\  __//\\ \\_\\ \\ \\ \\_/ |\\ \\ \\/\\ \\/\\ \\/\\ \\ :    \\ \\_\\ \\_\\ \\____\\ \\____/\\ \\___/  \\ \\_\\ \\_\\ \\_\\ \\_\\:     \\/_/\\/_/\\/____/\\/___/  \\/__/    \\/_/\\/_/\\/_/\\/_/\bval\vheader\fsection\26alpha.themes.startify\nalpha\frequire\3����\4\0" },
    loaded = true,
    path = "/home/kb/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["browse.nvim"] = {
    loaded = true,
    path = "/home/kb/.local/share/nvim/site/pack/packer/start/browse.nvim",
    url = "https://github.com/lalitmee/browse.nvim"
  },
  gruvbox = {
    config = { "\27LJ\2\n�\1\0\0\5\0\v\0\0156\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\3\0'\2\4\0B\0\2\0029\0\5\0005\2\t\0005\3\a\0005\4\6\0=\4\b\3=\3\n\2B\0\2\1K\0\1\0\14overrides\1\0\0\15SignColumn\1\0\0\1\0\1\abg\f#ff9900\nsetup\fgruvbox\frequire\24colorscheme gruvbox\bcmd\bvim\0" },
    loaded = true,
    path = "/home/kb/.local/share/nvim/site/pack/packer/start/gruvbox",
    url = "https://github.com/ellisonleao/gruvbox.nvim"
  },
  ["luatab.nvim"] = {
    loaded = true,
    path = "/home/kb/.local/share/nvim/site/pack/packer/start/luatab.nvim",
    url = "https://github.com/alvarosevilla95/luatab.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/kb/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-regexplainer"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17regexplainer\frequire\0" },
    loaded = true,
    path = "/home/kb/.local/share/nvim/site/pack/packer/start/nvim-regexplainer",
    url = "https://github.com/bennypowers/nvim-regexplainer"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/kb/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/kb/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/kb/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/kb/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/kb/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-regexplainer
time([[Config for nvim-regexplainer]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17regexplainer\frequire\0", "config", "nvim-regexplainer")
time([[Config for nvim-regexplainer]], false)
-- Config for: gruvbox
time([[Config for gruvbox]], true)
try_loadstring("\27LJ\2\n�\1\0\0\5\0\v\0\0156\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\3\0'\2\4\0B\0\2\0029\0\5\0005\2\t\0005\3\a\0005\4\6\0=\4\b\3=\3\n\2B\0\2\1K\0\1\0\14overrides\1\0\0\15SignColumn\1\0\0\1\0\1\abg\f#ff9900\nsetup\fgruvbox\frequire\24colorscheme gruvbox\bcmd\bvim\0", "config", "gruvbox")
time([[Config for gruvbox]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\nz\0\2\6\0\6\0\r6\2\0\0009\2\1\2\18\4\0\0'\5\2\0B\2\3\2\14\0\2\0X\3\5�6\2\3\0009\2\4\0026\4\5\0\18\5\1\0B\2\3\2L\2\2\0\23default_mru_ignore\17tbl_contains\bvim\19COMMIT_EDITMSG\tfind\vstring�\6\1\0\t\0\29\1:6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0019\2\4\0025\3\6\0=\3\5\0029\2\3\0019\2\a\0024\3\3\0009\4\b\1'\6\t\0'\a\n\0'\b\v\0B\4\4\0?\4\0\0=\3\5\0029\2\3\0019\2\f\0024\3\3\0005\4\r\0>\4\1\3=\3\5\0029\2\3\0019\2\14\0024\3\3\0005\4\15\0>\4\1\3=\3\5\0029\2\16\1+\3\1\0=\3\17\0029\2\3\0019\2\18\0024\3\3\0009\4\b\1'\6\19\0'\a\20\0'\b\21\0B\4\4\0?\4\0\0=\3\5\0029\2\3\0019\2\22\0024\3\3\0005\4\23\0>\4\1\3=\3\5\0029\2\24\0013\3\26\0=\3\25\0029\2\27\0009\4\28\1B\2\2\1K\0\1\0\vconfig\nsetup\0\vignore\rmru_opts\1\0\2\bval\vfooter\ttype\ttext\vfooter\f:qa<CR>\19  Quit NVIM\6q\19bottom_buttons\fenabled\22nvim_web_devicons\1\0\2\bval\3\0\ttype\fpadding\fmru_cwd\1\0\2\bval\3\0\ttype\fpadding\bmru :ene <BAR> startinsert <CR>\18  New file\6e\vbutton\16top_buttons\1\a\0\0:                                   __                :      ___     ___    ___   __  __ /\\_\\    ___ ___    :     / _ `\\  / __`\\ / __`\\/\\ \\/\\ \\\\/\\ \\  / __` __`\\  :    /\\ \\/\\ \\/\\  __//\\ \\_\\ \\ \\ \\_/ |\\ \\ \\/\\ \\/\\ \\/\\ \\ :    \\ \\_\\ \\_\\ \\____\\ \\____/\\ \\___/  \\ \\_\\ \\_\\ \\_\\ \\_\\:     \\/_/\\/_/\\/____/\\/___/  \\/__/    \\/_/\\/_/\\/_/\\/_/\bval\vheader\fsection\26alpha.themes.startify\nalpha\frequire\3����\4\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
