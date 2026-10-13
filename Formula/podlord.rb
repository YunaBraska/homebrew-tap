class Podlord < Formula
  desc "Desktop Kubernetes control center"
  homepage "https://github.com/YunaBraska/podlord"
  version "2026.10.12"

  if OS.linux? && Hardware::CPU.intel?
    # yuna-release: YunaBraska/podlord
    # yuna-release-asset: podlord-linux-x64.tar.gz
    url "https://github.com/YunaBraska/podlord/releases/download/#{version}/podlord-linux-x64.tar.gz"
    sha256 "a68cd668df4ea403e68156fd9fd58caca66f584610980064d56d6a46c048f4a9"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    # yuna-release-asset: podlord-linux-arm64.tar.gz
    url "https://github.com/YunaBraska/podlord/releases/download/#{version}/podlord-linux-arm64.tar.gz"
    sha256 "a5bddeb7e7162c92a9e35c2c52067770f86562845486d206601702d9518356c1"
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
