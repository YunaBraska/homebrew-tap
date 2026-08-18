class Podlord < Formula
  desc "Desktop Kubernetes control center"
  homepage "https://github.com/YunaBraska/podlord"
  version "2026.8.14"

  if OS.linux? && Hardware::CPU.intel?
    # yuna-release: YunaBraska/podlord
    # yuna-release-asset: podlord-linux-x64.tar.gz
    url "https://github.com/YunaBraska/podlord/releases/download/#{version}/podlord-linux-x64.tar.gz"
    sha256 "888a38989082e22a354597b585780bb5e912323b2c416606e2e410562c5906bc"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    # yuna-release-asset: podlord-linux-arm64.tar.gz
    url "https://github.com/YunaBraska/podlord/releases/download/#{version}/podlord-linux-arm64.tar.gz"
    sha256 "ee847efb3bd7b3c5239fa07d169061618a7787c208dd02344c4dcf0120bf067d"
  end

  license "MIT"

  depends_on :linux

  def install
    libexec.install Dir["podlord/*"]
    bin.install_symlink libexec/"Podlord.App" => "podlord"
  end

  test do
    assert_path_exists bin/"podlord"
    assert_path_exists libexec/"Assets"
  end
end
