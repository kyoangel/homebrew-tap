cask "memlens" do
  version "0.1.0"
  sha256 "1ac4b2943c582c05aeba7c3b089862f5a6fce0408af1a05fd5bcd29f07890793"

  url "https://github.com/kyoangel/memlens/releases/download/v#{version}/MemLens-#{version}.dmg"
  name "MemLens"
  desc "Menu bar memory pressure monitor for people running local AI models"
  homepage "https://github.com/kyoangel/memlens"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "MemLens.app"

  uninstall quit: "io.github.kyoangel.memlens"

  zap trash: "~/Library/Preferences/io.github.kyoangel.memlens.plist"
end
