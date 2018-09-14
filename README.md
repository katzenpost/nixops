# NixOps configuration for Katzenpost

## Configuration

- Define machines in `network.nix`
- Define Katzenpost configuration in `etc/`
- Define deployment to containers in `container.nix`

## Deployment

Update Git submodules:
```
git submodule init
git submodule update
```

Create a new deployment called e.g. `katzen` (only needs to be done once):
```
nixops create network.nix container.nix -d katzen
```

Deploy machines in the `katzen` network:
```
nixops deploy -d katzen
```

## Management

Show info about `katzen` network:
```
nixops info -d katzen
```

SSH into a machine:
```
nixops ssh -d katzen prov1
```

View logs of authority & mix nodes:
```
journalctl -u katzenpost-nonvoting-authority [-f]
journalctl -u katzenpost-server [-f]
```


supported by
============

.. image:: https://katzenpost.mixnetworks.org/_static/images/eu-flag-tiny.jpg

This project has received funding from the European Union’s Horizon 2020
research and innovation programme under the Grant Agreement No 653497, Privacy
and Accountability in Networks via Optimized Randomized Mix-nets (Panoramix).
