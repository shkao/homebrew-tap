cask "nami" do
  version "1.1.0"
  sha256 "3fae9bb2e7c7ccfe977724a12b4a20e03028f6edf567be56a666b2e9752d1875"

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
