class Podlord < Formula
  desc "Desktop Kubernetes control center"
  homepage "https://github.com/YunaBraska/podlord"
  version "2026.10.28"

  if OS.linux? && Hardware::CPU.intel?
    # yuna-release: YunaBraska/podlord
    # yuna-release-asset: podlord-native-linux-x64.tar.gz
    url "https://github.com/YunaBraska/podlord/releases/download/#{version}/podlord-native-linux-x64.tar.gz"
    sha256 "4eb1a442bdfb45836ab619f4a103f9cb0313e3eff01535ef7545605f5c1a1593"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    # yuna-release-asset: podlord-native-linux-arm64.tar.gz
    url "https://github.com/YunaBraska/podlord/releases/download/#{version}/podlord-native-linux-arm64.tar.gz"
    sha256 "26dabfdbc6adab333ffaec2adb7e8b501abb64c28b138d2093ed1fdb8972478c"
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
