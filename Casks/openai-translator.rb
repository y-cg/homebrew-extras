cask "openai-translator" do
  version "0.3.34"
  sha256 x64: "165308eeda3b586b3f7be08effe14f73507e9a775087fd3f7622c2cb6d3761d4",
         aarch64: "8b8e07f03524135968f8114193e18e9bb4310d3b94ed1158333cc16ab9acfb51"

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
