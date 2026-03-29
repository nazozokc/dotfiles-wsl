# minimal-binary-cache.nix
# Binary cache configuration

let
  substituters = [
    "https://cache.nixos.org/"
    "https://cache.numtide.com"
  ];

  trustedPublicKeys = [
    "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
    "cache.numtide.com-1:DTx8wZduET09hRmMtKdQDxNNthLQETkc/yaX7M4qK0g="
  ];
in
{
  # Standard Nix configuration
  nix.settings = {
    inherit substituters;
    trusted-public-keys = trustedPublicKeys;

    # Strictly prevent additional substituters
    require-sigs = true;
  };

  # Flake configuration
  nixConfig = {
    extra-substituters = substituters;
    extra-trusted-public-keys = trustedPublicKeys;
  };
}
