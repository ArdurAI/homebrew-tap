class Sith < Formula
  desc "Local-first, account-free Kubernetes fleet tool"
  homepage "https://github.com/ArdurAI/sith"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArdurAI/sith/releases/download/v0.1.0/sith_0.1.0_darwin_amd64.tar.gz"
      sha256 "34add695278b37d19dc3106bf44339b3afeaef7d7ee23791e4728ebd00278a1d"
    end
    on_arm do
      url "https://github.com/ArdurAI/sith/releases/download/v0.1.0/sith_0.1.0_darwin_arm64.tar.gz"
      sha256 "52aa730a412d4d5be93eff4cefc4807fc90d07249a17e95be1169236624cc6b4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArdurAI/sith/releases/download/v0.1.0/sith_0.1.0_linux_amd64.tar.gz"
      sha256 "c8cf2eaa2c73f08f945354849dfa3523f66defeb784e931c6cabd768b9648985"
    end
    on_arm do
      url "https://github.com/ArdurAI/sith/releases/download/v0.1.0/sith_0.1.0_linux_arm64.tar.gz"
      sha256 "9814f0ab243714815a7fcdb5847aed69f343ebb128ab697bb594c2fe9e7ecc60"
    end
  end

  def install
    bin.install "sith"
  end

  test do
    output = shell_output("#{bin}/sith version --output json")
    assert_match "\"version\":\"0.1.0\"", output
  end
end
