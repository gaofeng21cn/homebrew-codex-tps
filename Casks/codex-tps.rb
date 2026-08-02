# frozen_string_literal: true

cask "codex-tps" do
  version "0.2.29"
  sha256 "6fff11e8ebc61523e3c0567f70a41ccaf4e27feedd22e45eca169f47f9946310"

  url "https://github.com/gaofeng21cn/opl-fleet-agent/releases/download/v#{version}/Codex-TPS.dmg"
  name "OPL Fleet Agent · Codex TPS"
  desc "Local fleet agent and menu bar monitor for Codex throughput"
  homepage "https://github.com/gaofeng21cn/opl-fleet-agent"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Codex TPS.app"

  zap trash: "~/Library/Preferences/io.github.gaofeng21cn.codex-tps.plist"
end
