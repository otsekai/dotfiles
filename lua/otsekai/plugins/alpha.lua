return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Set header
    dashboard.section.header.val = {
      "                                                                                 ",
      "                                                                                 ",
      "                                                                                 ",
      "                   s       .x+=:.                    ..                     .    ",
      "                 :8      z`    ^%             < .z@8\"`                    @88>   ",
      "        u.      .88         .   <k             !@88E                      %8P    ",
      "  ...ue888b    :888ooo    .@8Ned8\"      .u     '888E   u          u        .     ",
      "  888R Y888r -*8888888  .@^%8888\"    ud8888.    888E u@8NL     us888u.   .@88u   ",
      "  888R I888>   8888    x88:  `)8b. :888'8888.   888E`\"88*\"  .@88 \"8888\" ''888E`  ",
      "  888R I888>   8888    8888N=*8888 d888 '88%\"   888E .dN.   9888  9888    888E   ",
      "  888R I888>   8888     %8\"    R88 8888.+\"      888E~8888   9888  9888    888E   ",
      "  u8888cJ888   .8888Lu=   @8Wou 9%  8888L        888E '888&  9888  9888    888E  ",
      "   \"*888*P\"    ^%888*   .888888P`   '8888c. .+   888E  9888. 9888  9888    888&  ",
      "     'Y\"         'Y\"    `   ^\"F      \"88888%   '\"888*\" 4888\" \"888*\"\"888\"   R888\" ",
      "                                       \"YP'       \"\"    \"\"    ^Y\"   ^Y'     \"\"   ",
      "                                                                                 ",
      "                                                                                 ",
      "                                                                                 ",
    }

    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
      dashboard.button("SPC ee", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("SPC ff", "󰱼 > Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("SPC fs", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("SPC l", "  > Open Lazy", "<cmd>Lazy<CR>"),
      dashboard.button("SPC wr", "󰁯  > Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
      dashboard.button("q", " > Quit NVIM", "<cmd>qa<CR>"),
    }

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
