class Podlord < Formula
  desc "Desktop Kubernetes control center"
  homepage "https://github.com/YunaBraska/podlord"
  version "2026.10.19"

  if OS.linux? && Hardware::CPU.intel?
    # yuna-release: YunaBraska/podlord
    # yuna-release-asset: podlord-linux-x64.tar.gz
    url "https://github.com/YunaBraska/podlord/releases/download/#{version}/podlord-linux-x64.tar.gz"
    sha256 "5344f9ee14aad83f58dc5ad9b1dff4f2219edfb0bda19d75f78d9ad4b1f2dc0a"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    # yuna-release-asset: podlord-linux-arm64.tar.gz
    url "https://github.com/YunaBraska/podlord/releases/download/#{version}/podlord-linux-arm64.tar.gz"
    sha256 "e9e110142e5d407948b7a7a280c632287f34e4a0fb26c2c93135bd2e0f1c1ca1"
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
