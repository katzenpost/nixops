{
  network = {
    description = "Katzenpost test network";
    enableRollback = false;
  };

### COMMON CONFIGURATION

  defaults = {
    imports = [ ./nixpkgs ];
  };

### AUTHORITY

  auth = { config, pkgs, ... }: {
    environment.systemPackages = with pkgs; [  ];

    services.katzenpost-authority-nonvoting = {
      enable = true;
      config = builtins.readFile ./etc/auth.toml;
    };
  };

### PROVIDERS

  prov1 = { config, pkgs, ... }: {
    environment.systemPackages = with pkgs; [  ];

    services.katzenpost-server = {
      enable = true;
      config = builtins.readFile ./etc/prov1.toml;
    };
  };

  prov2 = { config, pkgs, ... }: {
    environment.systemPackages = with pkgs; [  ];

    services.katzenpost-server = {
      enable = true;
      config = builtins.readFile ./etc/prov2.toml;
    };
  };

  prov3 = { config, pkgs, ... }: {
    environment.systemPackages = with pkgs; [  ];

    services.katzenpost-server = {
      enable = true;
      config = builtins.readFile ./etc/prov3.toml;
    };
  };

### MIXES

  mix1 = { config, pkgs, ... }: {
    environment.systemPackages = with pkgs; [  ];

    services.katzenpost-server = {
      enable = true;
      config = builtins.readFile ./etc/mix1.toml;
    };
  };

  mix2 = { config, pkgs, ... }: {
    environment.systemPackages = with pkgs; [  ];

    services.katzenpost-server = {
      enable = true;
      config = builtins.readFile ./etc/mix2.toml;
    };
  };

  mix3 = { config, pkgs, ... }: {
    environment.systemPackages = with pkgs; [  ];

    services.katzenpost-server = {
      enable = true;
      config = builtins.readFile ./etc/mix3.toml;
    };
  };

  mix4 = { config, pkgs, ... }: {
    environment.systemPackages = with pkgs; [  ];

    services.katzenpost-server = {
      enable = true;
      config = builtins.readFile ./etc/mix4.toml;
    };
  };

  mix5 = { config, pkgs, ... }: {
    environment.systemPackages = with pkgs; [  ];

    services.katzenpost-server = {
      enable = true;
      config = builtins.readFile ./etc/mix5.toml;
    };
  };

  mix6 = { config, pkgs, ... }: {
    environment.systemPackages = with pkgs; [  ];

    services.katzenpost-server = {
      enable = true;
      config = builtins.readFile ./etc/mix6.toml;
    };
  };

}
