class Sith < Formula
  desc "Local-first, account-free Kubernetes fleet tool"
  homepage "https://github.com/ArdurAI/sith"
  version "0.2.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArdurAI/sith/releases/download/v0.2.1/sith_0.2.1_darwin_amd64.tar.gz"
      sha256 "438f14b5c025a33af48edc308aa5586ee9872d91d7ec7012df1b4e6f1a664219"
    end
    on_arm do
      url "https://github.com/ArdurAI/sith/releases/download/v0.2.1/sith_0.2.1_darwin_arm64.tar.gz"
      sha256 "77c86e59fb28a7e04e591897b30b56164f365999479c2adace17108a2c6a75d4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArdurAI/sith/releases/download/v0.2.1/sith_0.2.1_linux_amd64.tar.gz"
      sha256 "ea9515ad1445935f7a6352a0a0d30a7df900c8179b759d576481613171323741"
    end
    on_arm do
      url "https://github.com/ArdurAI/sith/releases/download/v0.2.1/sith_0.2.1_linux_arm64.tar.gz"
      sha256 "ab78392c7a5e351e18c94c1aa9cececd85c1371670baae63ed235d72f88ffdce"
    end
  end

  def install
    bin.install "sith"
  end

  test do
    output = shell_output("#{bin}/sith version --output json")
    assert_match "\"version\":\"0.2.1\"", output
  end
end
