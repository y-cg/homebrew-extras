cask "openai-translator" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.35"
  sha256 intel: "734a7e9156c1eb83a99ad2c62d2fcf0a24c3e620d23ea268cc6553234e8a5054",
         arm:   "c35dc2d7f61497f59b4530d509a817d997506504d47b2a9e8d446d28e4965b16"

  url "https://github.com/yetone/openai-translator/releases/download/v#{version}/OpenAI.Translator_#{version}_#{arch}.dmg"
  name "OpenAI Translator"
  desc "Cross-platform Translatior based on ChatGPT API"
  homepage "https://github.com/yetone/openai-translator"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "OpenAI Translator.app"

  zap trash: [
    "~/Library/Application Support/openai-translator",
    "~/Library/Preferences/xyz.yetone.apps.plist",
  ]
end
