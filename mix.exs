defmodule NervesSystemQemuArm.Mixfile do
  use Mix.Project

  @version Path.join(__DIR__, "VERSION")
    |> File.read!
    |> String.strip

  def project do
    [app: :nerves_system_qemu_arm,
    version: @version,
    elixir: "~> 1.2",
    compilers: Mix.compilers ++ [:nerves_system],
    description: description,
    package: package,
    deps: deps]
  end

  def application do
   []
  end

  defp deps do
    [{:nerves_system, "~> 0.1.4"},
     {:nerves_system_br, github: "nerves-project/nerves_system_br", ref: "0fe24ee5b37a3a0fb75e6799f9a50ad9d9502428"},
     #{:nerves_system_br, "~> 0.6.0"},
     {:nerves_toolchain_arm_unknown_linux_gnueabihf, "~> 0.6.0"}]
  end

  defp description do
    """
    Nerves System - QEMU Arm
    """
  end

  defp package do
    [maintainers: ["Frank Hunleth", "Justin Schneck"],
     files: ["LICENSE", "mix.exs", "nerves_defconfig", "nerves.exs", "README.md", "VERSION", "rootfs-additions"],
     licenses: ["Apache 2.0"],
     links: %{"Github" => "https://github.com/nerves-project/nerves_system_qemu_arm"}]
  end
end
