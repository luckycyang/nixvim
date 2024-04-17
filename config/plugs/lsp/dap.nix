{pkgs, ...}: {
  plugins.dap = {
    enable = true;
    configurations = {
      cpp = [
        {
          name = "Lauch cpp";
          request = "launch";
          type = "gdb";
          program = ''
            function()
            	return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
            end
          '';
          cwd = "\${workspaceFolder}";
          stopAtEntry = true;
        }
      ];
    };

    adapters.executables = {
      gdb = {
        args = ["-i" "dap"];
        command = "${pkgs.gdb}/bin/gdb";
      };
    };
    extensions.dap-ui = {
      enable = true;
      mappings = {
        toggle = "t";
      };
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>du";
      action = "<cmd>lua require('dapui').toggle()<CR>";
      options = {
        desc = "Dapui toggle";
      };
    }
    {
      mode = "n";
      key = "<leader>de";
      action = "<cmd>lua require('dapui').eval()<CR>";
      options = {
        desc = "Dapui Eval";
      };
    }
  ];
}
