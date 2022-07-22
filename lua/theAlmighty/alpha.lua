local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
[[       _                     _         _         _                  ]],
[[ _    | |              /\   | |       (_)       | |     _           ]],
[[| |_  | | _    ____   /  \  | | ____   _   ____ | | _  | |_   _   _ ]],
[[|  _) | || \  / _  ) / /\ \ | ||    \ | | / _  || || \ |  _) | | | |]],
[[| |__ | | | |( (/ / | |__| || || | | || |( ( | || | | || |__ | |_| |]],
[[ \___)|_| |_| \____)|______||_||_|_|_||_| \_|| ||_| |_| \___) \__  |]],
[[                                         (_____|             (____/ ]],

    -- THESE ARE RESERVES
    --[[
████████╗██╗  ██╗███████╗ █████╗ ██╗     ███╗   ███╗██╗ ██████╗ ██╗  ██╗████████╗██╗   ██╗
╚══██╔══╝██║  ██║██╔════╝██╔══██╗██║     ████╗ ████║██║██╔════╝ ██║  ██║╚══██╔══╝╚██╗ ██╔╝
   ██║   ███████║█████╗  ███████║██║     ██╔████╔██║██║██║  ███╗███████║   ██║    ╚████╔╝ 
   ██║   ██╔══██║██╔══╝  ██╔══██║██║     ██║╚██╔╝██║██║██║   ██║██╔══██║   ██║     ╚██╔╝  
   ██║   ██║  ██║███████╗██║  ██║███████╗██║ ╚═╝ ██║██║╚██████╔╝██║  ██║   ██║      ██║   
   ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝╚═╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝      ╚═╝


[[       _                     _         _         _                  
[[ _    | |              /\   | |       (_)       | |     _           
[[| |_  | | _    ____   /  \  | | ____   _   ____ | | _  | |_   _   _ 
[[|  _) | || \  / _  ) / /\ \ | ||    \ | | / _  || || \ |  _) | | | |
[[| |__ | | | |( (/ / | |__| || || | | || |( ( | || | | || |__ | |_| |
[[ \___)|_| |_| \____)|______||_||_|_|_||_| \_|| ||_| |_| \___) \__  |
[[                                         (_____|             (____/ 


[[                                                                                   
[[   █████████   █████       █████  █████ ██████   ██████ ██████████ ██████   █████ 
[[  ███░░░░░███ ░░███       ░░███  ░░███ ░░██████ ██████ ░░███░░░░░█░░██████ ░░███  
[[ ░███    ░███  ░███        ░███   ░███  ░███░█████░███  ░███  █ ░  ░███░███ ░███  
[[ ░███████████  ░███        ░███   ░███  ░███░░███ ░███  ░██████    ░███░░███░███  
[[ ░███░░░░░███  ░███        ░███   ░███  ░███ ░░░  ░███  ░███░░█    ░███ ░░██████  
[[ ░███    ░███  ░███      █ ░███   ░███  ░███      ░███  ░███ ░   █ ░███  ░░█████  
[[ █████   █████ ███████████ ░░████████   █████     █████ ██████████ █████  ░░█████ 
[[░░░░░   ░░░░░ ░░░░░░░░░░░   ░░░░░░░░   ░░░░░     ░░░░░ ░░░░░░░░░░ ░░░░░    ░░░░░  
[[

 ________      ___           ___  ___      _____ ______       _______       ________      
|\   __  \    |\  \         |\  \|\  \    |\   _ \  _   \    |\  ___ \     |\   ___  \    
\ \  \|\  \   \ \  \        \ \  \\\  \   \ \  \\\__\ \  \   \ \   __/|    \ \  \\ \  \   
 \ \   __  \   \ \  \        \ \  \\\  \   \ \  \\|__| \  \   \ \  \_|/__   \ \  \\ \  \  
  \ \  \ \  \   \ \  \____    \ \  \\\  \   \ \  \    \ \  \   \ \  \_|\ \   \ \  \\ \  \ 
   \ \__\ \__\   \ \_______\   \ \_______\   \ \__\    \ \__\   \ \_______\   \ \__\\ \__\
    \|__|\|__|    \|_______|    \|_______|    \|__|     \|__|    \|_______|    \|__| \|__|
    --]]
}
dashboard.section.buttons.val = {
	dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua <CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

local function footer()
-- NOTE: requires the fortune-mod package to work
	-- local handle = io.popen("fortune")
	-- local fortune = handle:read("*a")
	-- handle:close()
	-- return fortune
	return "alumen theAlmighty"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)
