cask "nami" do
  version "1.0.0"
  sha256 "4bd82093c85973bc7fa2bfe25a05f7972d16c0018bf2d86bd7d85efb9ef7d85b"

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
