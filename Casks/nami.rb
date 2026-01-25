cask "nami" do
  version "1.0.0"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

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
