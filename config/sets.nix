{
  config = {
    opts = {
      # https://neovim.io/doc/user/usr_30.html 参照， 这个参数有问题
      tabstop = 2; # Tap 键以 2 空格
      softtabstop = 2;
      showtabline = 2;
      expandtab = true;
      # 上面这四句在我这没有用， 但是还是写上

      # 显示行号
      number = true;
      relativenumber = false; # 相对行号， 我不喜欢

      # 自动缩进
      smartindent = true;
      shiftwidth = 2; # 设置这个 Tap 才是两空格

      # https://neovim.io/doc/user/options.html#'breakindent'
      # 一行代码过长， 显示在下一行会以同样缩进, 类似下面这样
      #a = {
      #     b = "dvahjdvahjdvas
      #     ksdhakjhddhjahdka"
      #      }
      #而不是
      #     b = "gfdjshfjksfhad
      #jhsdgaajgdajhs"
      breakindent = true;

      hlsearch = true; # 搜索高亮
      incsearch = true; # 增量搜索

      wrap = true; # 超出边缘换行显示, 搭配breakindent

      # 更好分割窗口
      splitbelow = true;
      splitright = true;

      mouse = "a"; # 鼠标模式

      ignorecase = true; # 搜索忽略大小写
      smartcase = true; # 搜索模式为大写模式则覆盖忽略大小写模式
      grepprg = "rg --vimgrep";
      grepformat = "%f:%l:%c:%m";

      updatetime = 50; # 50ms 没有输入就把content传buffer

      # see https://neovim.io/doc/user/options.html#'completeopt' 我母鸡
      completeopt = ["menuone" "noselect" "noinsert"];

      # 启用持久撤消历史记录
      swapfile = false;
      backup = false;
      undofile = true;

      termguicolors = true; # 24 位色

      cursorline = true; # 光标行高亮

      # 折叠选项
      foldcolumn = "0";
      foldlevel = 99;
      foldlevelstart = 99;
      foldenable = true;

      scrolloff = 8; # 光标上方和下方的最小屏幕行数

      timeoutlen = 10; # 等待映射序列完成的时间 ms

      encoding = "utf-8"; # 不多bb
      fileencoding = "utf-8";

      cmdheight = 0; # 命令行屏幕行数, 就是屏幕下边显示normal insert那行
      showmode = false; # 如果在插入、替换或可视模式下，则在最后一行添加信息, 不用看左下脚 normal insert 吧
    };
  };
}
