{
  hostname,
  config,
  pkgs,
  host,
  ...
}:
{
  programs.zsh = {
    shellAliases = {
      cls = "clear";
      home = "cd~";
      hist = "history | grep $1";
      grepex = "grep -R --exclude-dir={.git,node_modules,build} --exclude=.eslintcode";
      wget = "wget --no-hsts";
      bigs = "du -ah . | sort -nr | head -n 5";
      ducks = "du -cks * | sort -nr | head";
      
      la = "ls -Al";
      lx = "ls -lXB";
      lu = "ls -lur";
      lm = "ls -al |more";

      cd = "z";
      tt = "gtrash put";
      cat = "bat";
      nano = "micro";
      code = "codium";
      diff = "delta --diff-so-fancy --side-by-side";
      less = "bat";
      y = "yazi";
      py = "python";
      ipy = "ipython";
      icat = "kitten icat";
      dsize = "du -hs";
      pdf = "tdf";
      open = "xdg-open";
      space = "ncdu";
      man = "BAT_THEME='default' batman";

      l = "eza --icons  -a --group-directories-first -1"; # EZA_ICON_SPACING=2
      ll = "eza --icons  -a --group-directories-first -1 --no-user --long";
      tree = "eza --icons --tree --group-directories-first";

      # Nixos
      cdnix = "cd ~/nixos-config && codium ~/nixos-config";
      ns = "nom-shell --run zsh";
      nix-switch = "nh os switch";
      nix-update = "nh os switch --update";
      nix-clean = "nh clean all --keep 5";
      nix-search = "nh search";
      nix-test = "nh os test";

      # python
      piv = "python -m venv .venv";
      pyenv = "source .venv/bin/activate";
    };
  };
}
