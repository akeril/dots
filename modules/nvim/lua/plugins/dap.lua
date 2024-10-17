return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"rcarriga/nvim-dap-ui",
			"theHamsta/nvim-dap-virtual-text",
			"nvim-neotest/nvim-nio",
		},
		config = function()
			local dap, ui, vtext = require("dap"), require("dapui"), require("nvim-dap-virtual-text")

			ui.setup()
			vtext.setup()

			dap.adapters.gdb = {
				type = "executable",
				command = "gdb",
				args = { "-i", "dap" },
			}

			dap.configurations.c = {
				{
					name = "Launch",
					type = "gdb",
					request = "launch",
					program = function()
						return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
					end,
					cwd = "${workspaceFolder}",
					stopAtBeginningOfMainSubprogram = false,
				},
			}

			vim.keymap.set("n", "<leader>ab", dap.toggle_breakpoint)
			vim.keymap.set("n", "<leader>ac", dap.continue)
			vim.keymap.set("n", "<leader>ai", dap.step_into)
			vim.keymap.set("n", "<leader>ao", dap.step_over)
			vim.keymap.set("n", "<leader>aI", dap.step_out)
			vim.keymap.set("n", "<leader>ab", dap.step_back)
			vim.keymap.set("n", "<leader>ar", dap.restart)
			vim.keymap.set("n", "<leader>a?", function()
				ui.eval(nil, { enter = true })
			end)

			dap.listeners.before.attach.dapui_config = function()
				ui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				ui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				ui.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
				ui.close()
			end
		end,
	},
}
