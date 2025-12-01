# CC: Tweaked Documentation
This documentation covers the Lua API for [ComputerCraft: Tweaked](https://tweaked.cc/) and is meant to be used with [Sumneko's Lua Language Server](https://github.com/LuaLS/lua-language-server) as it uses its LuaCATS annotation system.

## Setup

### NVIM 
Example config:
```lua
vim.lsp.config("lua_ls", {
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
	root_markers = {
		".luarc.json",
		".luarc.jsonc",
		".luacheckrc",
		".stylua.toml",
		".git",
	},
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
			runtime = {
				version = "LuaJIT",
			},
			completion = { callSnippet = "Replace" },
			telemetry = { enable = false },
			workspace = {
				userThirdParty = true,
				checkThirdParty = false,
				library = {
					"${3rd}/luv/library",
					unpack(vim.api.nvim_get_runtime_file("", true)),
					"/home/vlad/LuaAddons/cc-tweaked-documentation/library", --  <----Replace this path to where you clone this repo
				},
			},
		},
	},
})


vim.lsp.enable("lua_ls") -- Enable lsp after configuring it

```

Trigger cases:
- Following phrases are found in file (chosen for their uniqueness):
  - `turtle.???`
  - `rednet.???`
  - `redstone.???`
  - `computercraft`

After applying the workspace, you should have full autocompletion and diagnostics.

> **Note**
>
> CC: Tweaked has some [seriously cursed](https://tweaked.cc/reference/feature_compat.html) support for Lua features, thus, the environment is a *little* messy and is not currently emulated as accurately as possible. As time goes on, it may be possible to improve this 🙂.
