-- Flnes.nvim highlights for nes theme
local M = {}

-- Helper function to set highlights
local function hl(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

function M.apply(colors, config)
	-- Flnes main highlights
	hl("FlnesBackdrop", { fg = colors.comment })
	hl("FlnesLabel", { fg = colors.bg, bg = colors.func, bold = true })
	hl("FlnesMatch", { fg = colors.search_fg, bg = colors.search_bg })
	hl("FlnesCurrent", { fg = colors.bg, bg = colors.warning })
	hl("FlnesPrompt", { fg = colors.keyword, bold = true })
	hl("FlnesPromptIcon", { fg = colors.func })
	hl("FlnesCursor", { fg = colors.bg, bg = colors.cursor })

	-- Flnes treesitter
	hl("FlnesTreachery", { fg = colors.error, bold = true })

	-- Flnes leap compatibility
	hl("LeapMatch", { fg = colors.search_fg, bg = colors.search_bg })
	hl("LeapLabelPrimary", { fg = colors.bg, bg = colors.func, bold = true })
	hl("LeapLabelSecondary", { fg = colors.bg, bg = colors.property, bold = true })
	hl("LeapBackdrop", { fg = colors.comment })

	-- Flnes hop compatibility
	hl("HopNextKey", { fg = colors.bg, bg = colors.func, bold = true })
	hl("HopNextKey1", { fg = colors.bg, bg = colors.property, bold = true })
	hl("HopNextKey2", { fg = colors.bg, bg = colors.type, bold = true })
	hl("HopUnmatched", { fg = colors.comment })

	-- Flnes lightspeed compatibility
	hl("LightspeedGreyWnes", { fg = colors.comment })
	hl("LightspeedLabel", { fg = colors.bg, bg = colors.func, bold = true })
	hl("LightspeedLabelDistant", { fg = colors.bg, bg = colors.property, bold = true })
	hl("LightspeedLabelDistantOverlapped", { fg = colors.bg, bg = colors.type, bold = true })
	hl("LightspeedLabelOverlapped", { fg = colors.bg, bg = colors.warning, bold = true })
	hl("LightspeedMaskedChar", { fg = colors.comment })
	hl("LightspeedOneCharMatch", { fg = colors.search_fg, bg = colors.search_bg })
	hl("LightspeedPendingOpArea", { fg = colors.fg, bg = colors.bg_highlight })
	hl("LightspeedShort", { fg = colors.bg, bg = colors.func, bold = true })
	hl("LightspeedShortCut", { fg = colors.bg, bg = colors.property, bold = true })
	hl("LightspeedUniqueChar", { fg = colors.func, bold = true })
	hl("LightspeedUnlabeledMatch", { fg = colors.search_fg, bg = colors.search_bg })

	-- Flnes custom modes
	hl("FlnesChar", { fg = colors.func, bold = true })
	hl("FlnesWord", { fg = colors.keyword, bold = true })
	hl("FlnesLine", { fg = colors.property, bold = true })
	hl("FlnesRemote", { fg = colors.type, bold = true })

	-- Flnes search
	hl("FlnesSearch", { fg = colors.search_fg, bg = colors.search_bg })
	hl("FlnesSearchMatch", { fg = colors.func, bg = colors.bg_highlight })
	hl("FlnesSearchCursor", { fg = colors.bg, bg = colors.cursor })

	-- Flnes substitute
	hl("FlnesSubstitute", { fg = colors.bg, bg = colors.warning })
	hl("FlnesSubstituteMatch", { fg = colors.warning, bg = colors.bg_highlight })

	-- Flnes yank
	hl("FlnesYank", { fg = colors.bg, bg = colors.info })
	hl("FlnesYankMatch", { fg = colors.info, bg = colors.bg_highlight })

	-- Flnes motion
	hl("FlnesMotion", { fg = colors.bg, bg = colors.property })
	hl("FlnesMotionMatch", { fg = colors.property, bg = colors.bg_highlight })

	-- Flnes range
	hl("FlnesRange", { fg = colors.bg, bg = colors.type })
	hl("FlnesRangeMatch", { fg = colors.type, bg = colors.bg_highlight })

	-- Flnes error
	hl("FlnesError", { fg = colors.error, bold = true })
	hl("FlnesErrorMatch", { fg = colors.error, bg = colors.bg_highlight })

	-- Flnes warning
	hl("FlnesWarning", { fg = colors.warning, bold = true })
	hl("FlnesWarningMatch", { fg = colors.warning, bg = colors.bg_highlight })

	-- Flnes info
	hl("FlnesInfo", { fg = colors.info, bold = true })
	hl("FlnesInfoMatch", { fg = colors.info, bg = colors.bg_highlight })

	-- Flnes hint
	hl("FlnesHint", { fg = colors.hint, bold = true })
	hl("FlnesHintMatch", { fg = colors.hint, bg = colors.bg_highlight })
end

return M
