# frozen_string_literal: true

cask "codex-tps" do
  version "0.2.3"
  sha256 "bb785e0785aeecd0abbdd51f671bf6f4735e6f97567a598ff768d569375165e0"

  url "https://github.com/gaofeng21cn/codex-tps/releases/download/v#{version}/Codex-TPS.dmg"
  name "Codex TPS"
  desc "Menu bar monitor for Codex token throughput"
  homepage "https://github.com/gaofeng21cn/codex-tps"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Codex TPS.app"

  zap trash: "~/Library/Preferences/io.github.gaofeng21cn.codex-tps.plist"
end
