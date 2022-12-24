local status_ok, comment = pcall(require, "Comment")
if not status_ok then
	return
end

comment.setup({
	toggler = {
		---Line-comment toggle keymap
		line = "<leader>cl",
		---Block-comment toggle keymap
		block = "<leader>cb",
	},
	---LHS of operator-pending mappings in NORMAL and VISUAL mode
	opleader = {
		---Line-comment keymap
		line = "<leader>cl",
		---Block-comment keymap
		block = "<leader>cb",
	},
	---LHS of extra mappings
	extra = {
		---Add comment on the line above
		above = "<leader>cu",
		---Add comment on the line below
		below = "<leader>cd",
		---Add comment at the end of line
		eol = "<leader>ce",
	},
	mappings = {
		---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
		basic = true,
		---Extra mapping; `gco`, `gcO`, `gcA`
		extra = true,
	},
	pre_hook = function(ctx)
		local U = require("Comment.utils")

		local location = nil
		if ctx.ctype == U.ctype.block then
			location = require("ts_context_commentstring.utils").get_cursor_location()
		elseif ctx.cmotion == U.cmotion.v or ctx.cmotion == U.cmotion.V then
			location = require("ts_context_commentstring.utils").get_visual_start_location()
		end

		return require("ts_context_commentstring.internal").calculate_commentstring({
			key = ctx.ctype == U.ctype.line and "__default" or "__multiline",
			location = location,
		})
	end,
})
