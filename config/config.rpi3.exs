use Mix.Config

config :esn_rpi3_sandbox, :viewport, %{
  name: :main_viewport,
  # default_scene: {EsnRpi3Sandbox.Scene.Crosshair, nil},
  # default_scene: {EsnRpi3Sandbox.Scene.SysInfo, nil},
  default_scene: {EsnRpi3Sandbox.Scene.MovingDots, nil},
  size: {800, 480},
  opts: [scale: 1.0],
  drivers: [
    %{
      module: Scenic.Driver.Nerves.Rpi
    },
    %{
      module: Scenic.Driver.Nerves.Touch,
      opts: [
        device: "FT5406 memory based driver",
        calibration: {{1, 0, 0}, {1, 0, 0}}
      ]
    }
  ]
}
