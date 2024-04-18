{pkgs, ...}: let
  workdir = "$" ++ "{workspaceFolder}";
in {
  plugins.dap = {
    enable = true;
    adapters.executables = {
      gdb = {
        args = ["-i" "dap"];
        command = "${pkgs.gdb}/bin/gdb";
      };
    };
    configurations = {
      cpp = [
        {
          name = "cpp";
          request = "launch";
          type = "gdb";
        }
      ];
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
  '';
}
