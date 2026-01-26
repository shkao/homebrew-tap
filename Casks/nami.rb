cask "nami" do
  version "1.0.0"
  sha256 "468d3a8d548149e1212456cdfc05c9ebe82fecc85242356438dbb745db23af9f"

  url "https://github.com/shkao/Nami/releases/download/v#{version}/Nami.zip"
  name "Nami"
  desc "Lightweight macOS menu bar app for streaming Japanese regional FM radio"
  homepage "https://github.com/shkao/Nami"

  depends_on macos: ">= :sonoma"

  app "Nami.app"

  zap trash: [
    "~/Library/Preferences/com.nami.app.plist",
  ]
end
