defmodule NervesSystemQemuArm.Mixfile do
  use Mix.Project

  def project do
    [app: :nerves_system_qemu_arm,
    version: "0.4.0-rc3",
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
    [{:nerves_system, path: "../nerves_system"},
     {:nerves_system_br, path: "../nerves-system-br"},
     {:nerves_toolchain_arm_unknown_linux_gnueabihf, path: "../nerves_toolchain_arm_unknown_linux_gnueabihf"}]
  end

  defp description do
    """
    Nerves System - QEMU Arm
    """
  end

  defp package do
    [maintainers: ["Frank Hunleth", "Justin Schneck"],
     licenses: ["Apache 2.0"],
     links: %{"Github" => "https://github.com/nerves-project/nerves_system_qemu_arm"}]
  end
end
