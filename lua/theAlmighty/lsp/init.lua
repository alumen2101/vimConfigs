local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("theAlmighty.lsp.lsp-installer")
require("theAlmighty.lsp.handlers").setup()
