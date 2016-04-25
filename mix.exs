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
    [{:nerves_system, github: "nerves-project/nerves_system"},
     {:nerves_system_br, github: "nerves-project/nerves_system_br", tag: "v0.4.0"},
     {:nerves_toolchain_arm_unknown_linux_gnueabihf, github: "nerves-project/nerves_toolchain_arm_unknown_linux_gnueabihf"}]
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
