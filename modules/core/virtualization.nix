{username, ...}: {
  programs.virt-manager.enable = true;
  virtualisation.libvirtd.enable = true;
  users.groups.libvirtd.members = ["${username}"];
  virtualisation.podman = {
    enable = true;
    dockerCompat = true;
  };
}
