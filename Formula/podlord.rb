class Podlord < Formula
  desc "Desktop Kubernetes control center"
  homepage "https://github.com/YunaBraska/podlord"
  license "MIT"

  depends_on :linux

  url "https://github.com/YunaBraska/podlord/releases/download/2026.6.20/podlord-linux-x64.tar.gz"
  sha256 "99b89504cb6a49c114f59631e72d74eedbe4a740a29b238f1c3221a24e338aab"

  on_arm do
    url "https://github.com/YunaBraska/podlord/releases/download/2026.6.20/podlord-linux-arm64.tar.gz"
    sha256 "46e30d0a4dc3da29cb807d443352410560c0650506f38392b0091706e1c366b7"
  end

  def install
    libexec.install Dir["podlord/*"]
    bin.install_symlink libexec/"Podlord.App" => "podlord"
  end

  test do
    assert_path_exists bin/"podlord"
    assert_path_exists libexec/"Assets"
  end
end
