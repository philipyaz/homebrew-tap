cask "p215-scan" do
  version "1.0.0"
  sha256 "179cf16b3e13c77dca6ec5b1077eb567368a36e3726bdf913654183d192c6c87"

  url "https://github.com/philipyaz/p215-scan/releases/download/v#{version}/P215.Scan-#{version}.zip"
  name "P215 Scan"
  desc "Native app for the Canon imageFORMULA P-215II document scanner"
  homepage "https://github.com/philipyaz/p215-scan"

  depends_on macos: :sonoma
  depends_on arch: :arm64
  depends_on formula: "sane-backends"

  app "P215 Scan.app"

  caveats <<~EOS
    P215 Scan is not notarized. If macOS blocks the first launch, allow it
    via System Settings -> Privacy & Security -> Open Anyway.

    Scanning needs the scanner's rear Auto Start switch set to OFF.
  EOS
end
