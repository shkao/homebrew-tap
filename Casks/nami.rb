cask "nami" do
  version "1.1.1"
  sha256 "330ae813b215f1a894c6ef596381db9370a83fa2ecc0c6f67b9132403308e5f0"

  url "https://github.com/shkao/Nami/releases/download/v#{version}/Nami.zip"
  name "Nami"
  desc "Lightweight macOS menu bar app for streaming Japanese regional FM radio"
  homepage "https://github.com/shkao/Nami"

  depends_on macos: :sonoma

  app "Nami.app"

  zap trash: [
    "~/Library/Preferences/com.nami.app.plist",
  ]
end
