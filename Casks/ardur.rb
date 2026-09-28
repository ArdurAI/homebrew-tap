cask "ardur" do
  version "0.1.0-alpha.2"
  on_arm do
    sha256 "f53031f8baa7112a0e01f84624631588fb6cd99e66717f3769c45292f9850151"
    url "https://github.com/ArdurAI/ardur-bot/releases/download/v#{version}/ardur-#{version}-mac-arm64.dmg"
  end
  on_intel do
    sha256 "bb3ba74cbe629a318f3b5c9b7e865fc29fd1c6781762a4acec00c5219f32f566"
    url "https://github.com/ArdurAI/ardur-bot/releases/download/v#{version}/ardur-#{version}-mac-x64.dmg"
  end
  name "Ardur"
  desc "Persistent bots on computers and models you choose"
  homepage "https://github.com/ArdurAI/ardur-bot"
  app "Ardur.app"
  binary "#{appdir}/Ardur.app/Contents/MacOS/Ardur", target: "ardur"
  caveats "Unsigned and not notarized. Approve the app in Privacy & Security. Signed builds come later."
end
