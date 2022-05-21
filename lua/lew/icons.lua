-- https://github.com/microsoft/vscode/blob/main/src/vs/base/common/codicons.ts
-- go to the above and then enter <c-v>u<unicode> and the symbold should appear
-- or go here and upload the font file: https://mathew-kurian.github.io/CharacterMap/
-- find more here: https://www.nerdfonts.com/cheat-sheet
if vim.fn.has "mac" == 1 then
  -- elseif vim.fn.has "mac" == 1 then
  return {
    kind = {
      Text = "",
      Method = "m",
      Function = "",
      Constructor = "",
      -- Method = "",
      -- Function = "",
      -- Constructor = "",
      Field = "",
      -- Variable = "",
      Variable = "",
      Class = "",
      Interface = "",
      Module = "",
      -- Module = "",
      Property = "",
      Unit = "",
      Value = "",
      Enum = "",
      -- Keyword = "",
      Keyword = "",
      Snippet = "",
      -- Snippet = "",
      Color = "",
      File = "",
      Reference = "",
      Folder = "",
      EnumMember = "",
      Constant = "",
      Struct = "",
      Event = "",
      Operator = "",
      TypeParameter = "",
    },
    type = {
      Array = "",
      Number = "",
      String = "",
      Boolean = "蘒",
      Object = "",
    },
    documents = {
      File = "",
      Files = "",
      Folder = "",
      OpenFolder = "",
    },
    git = {
      Add = "",
      Mod = "",
      Remove = "",
      Ignore = "",
      Rename = "",
      Diff = "",
      Repo = "",
    },
    ui = {
      Lock = "",
      Circle = "",
      BigCircle = "",
      BigUnfilledCircle = "",
      Close = "",
      NewFile = "",
      Search = "",
      Lightbulb = "",
      Project = "",
      Dashboard = "",
      History = "",
      Comment = "",
      Bug = "",
      Code = "",
      Telescope = "",
      Gear = "",
      Package = "",
      List = "",
      SignIn = "",
      Check = "",
      Fire = "",
      Note = "",
      BookMark = "",
      Pencil = "",
      ChevronRight = ">",
      -- ChevronRight = ">",
      Table = "",
      Calendar = "",
    },
    diagnostics = {
      Error = "",
      Warning = "",
      Information = "",
      Question = "",
      Hint = "",
    },
    misc = {
      Robot = "ﮧ",
      Squirrel = "",
      Tag = "",
      Watch = "",
    },
  }
else
  --   פּ ﯟ   蘒練 some other good icons
  return {
    kind = {
      Text = " ",
      Method = "m ",
      Function = " ",
      Constructor = " ",
      -- Method = " ",
      -- Function = " ",
      -- Constructor = " ",
      Field = " ",
      Variable = " ",
      Class = " ",
      Interface = " ",
      Module = " ",
      Property = " ",
      Unit = " ",
      Value = " ",
      Enum = "  ",
      Keyword = " ",
      -- Snippet = " ",
      Snippet = "",
      Color = " ",
      File = " ",
      Reference = " ",
      Folder = " ",
      EnumMember = "  ",
      Constant = " ",
      Struct = " ",
      Event = " ",
      Operator = " ",
      TypeParameter = " ",
      Misc = " ",
    },
    type = {
      Array = " ",
      Number = " ",
      String = " ",
      Boolean = " ",
      Object = " ",
    },
    documents = {
      File = " ",
      Files = " ",
      Folder = " ",
      OpenFolder = " ",
    },
    git = {
      Add = " ",
      Mod = " ",
      Remove = " ",
      Ignore = " ",
      Rename = " ",
      Diff = " ",
      Repo = " ",
    },
    ui = {
      Lock = " ",
      Circle = " ",
      BigCircle = " ",
      BigUnfilledCircle = " ",
      Close = " ",
      NewFile = " ",
      Search = " ",
      Lightbulb = " ",
      Project = " ",
      Dashboard = " ",
      History = " ",
      Comment = " ",
      Bug = " ",
      Code = " ",
      Telescope = " ",
      Gear = " ",
      Package = " ",
      List = " ",
      SignIn = " ",
      Check = " ",
      Fire = " ",
      Note = " ",
      BookMark = " ",
      Pencil = " ",
      ChevronRight = ">",
      Table = " ",
      Calendar = " ",
    },
    diagnostics = {
      Error = " ",
      Warning = " ",
      Information = " ",
      Question = " ",
      Hint = " ",
    },
    misc = {
      Robot = " ",
      -- Robot = " ",
      Squirrel = " ",
      Tag = " ",
      Watch = " ",
    },
  }
end
-- Text = "",
-- Method = "m",
-- Function = "",
-- Constructor = "",
-- Field = "",
-- Variable = "",
-- Class = "",
-- Interface = "",
-- Module = "",
-- Property = "",
-- Unit = "",
-- Value = "",
-- Enum = "",
-- Keyword = "",
-- Snippet = "",
-- Color = "",
-- File = "",
-- Reference = "",
-- Folder = "",
-- EnumMember = "",
-- Constant = "",
-- Struct = "",
-- Event = "",
-- Operator = "",
-- TypeParameter = "",
