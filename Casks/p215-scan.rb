cask "p215-scan" do
  version "1.1.0"
  sha256 "6b38af6179a6e15b77d75c2eb01d55db591a2eeb5effdc4aaf1b6debb7856eb2"

  url "https://github.com/philipyaz/p215-scan/releases/download/v#{version}/P215.Scan-#{version}.zip"
  name "P215 Scan"
  desc "Native app for the Canon imageFORMULA P-215II document scanner"
  homepage "https://github.com/philipyaz/p215-scan"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "P215 Scan.app"

  caveats <<~EOS
    P215 Scan is not notarized. If macOS blocks the first launch, allow it
    via System Settings -> Privacy & Security -> Open Anyway.

    Scanning needs the scanner's rear Auto Start switch set to OFF.
  EOS
end
