{pkgs, ...}: {
  plugins.dap = {
    enable = true;
    configurations = {
      c = [
        {
          name = "Launch";
          type = "gdb";
          request = "launch";
          program = ''              
            function()
              return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
            end'';
          cwd = "\${workspaceFolder}";
          stopAtBeginningOfMainSubprogram = false;
        }
      ];
    };

    adapters.executables = {
      gdb = {
        args = ["-i" "dap"];
        command = "${pkgs.gdb}/bin/gdb";
      };
    };
    extensions = {
      dap-ui = {
        enable = true;
        mappings = {
          toggle = "t";
        };
      };
      dap-virtual-text.enable = true;
    };
    signs = {
      dapBreakpoint = {
        text = "●";
        texthl = "DapBreakpoint";
      };
      dapBreakpointCondition = {
        text = "●";
        texthl = "DapBreakpointCondition";
      };
      dapLogPoint = {
        text = "◆";
        texthl = "DapLogPoint";
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
  extraConfigLua = ''
    local dap = require("dap")
    dap.configurations.cpp = {
      {
        name = "Launch",
        type = "gdb",
        request = "launch",
        program = function()
          return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = "$\{workspaceFolder}",
        stopAtBeginningOfMainSubprogram = false,
      },
    }
  '';
}
