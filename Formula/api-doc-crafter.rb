class ApiDocCrafter < Formula
  desc "Merge, clean, filter, and render OpenAPI documentation"
  homepage "https://github.com/YunaBraska/api-doc-crafter"
  version "2026.9.21"
  license "MIT"

  on_macos do
    on_arm do
      # yuna-release: YunaBraska/api-doc-crafter
      # yuna-release-asset: api-doc-crafter-macos-arm64-{version}.native
      url "https://github.com/YunaBraska/api-doc-crafter/releases/download/#{version}/api-doc-crafter-macos-arm64-#{version}.native"
      sha256 "c471a2eafdd259d9bc3e8f3879c5e182f8616d3b199e4cf25c624cd484d25634"
    end

    on_intel do
      # yuna-release-asset: api-doc-crafter-macos-x64-{version}.native
      url "https://github.com/YunaBraska/api-doc-crafter/releases/download/#{version}/api-doc-crafter-macos-x64-#{version}.native"
      sha256 "2f593ac26d8b2b06f2a26b0c15bd70be877769c4a808a15346f713dcaeb65510"
    end
  end

  on_linux do
    on_arm do
      # yuna-release-asset: api-doc-crafter-linux-arm64-{version}.native
      url "https://github.com/YunaBraska/api-doc-crafter/releases/download/#{version}/api-doc-crafter-linux-arm64-#{version}.native"
      sha256 "ab953d1f73169e7356b5f6b36422fdc3bdb0a8d7badef7a3c1aaabd1da3df510"
    end

    on_intel do
      # yuna-release-asset: api-doc-crafter-linux-amd64-{version}.native
      url "https://github.com/YunaBraska/api-doc-crafter/releases/download/#{version}/api-doc-crafter-linux-amd64-#{version}.native"
      sha256 "a7090d5d0de42b4f6098c32c527857a42913744a1db302e245eab4fa234927d0"
    end
  end

  def install
    bin.install Dir["*.native"].first => "api-doc-crafter"
  end

  test do
    system({ "adc_output_dir" => testpath/"swagger_output" }, bin/"api-doc-crafter")
    assert_path_exists testpath/"swagger_output/index.html"
  end
end
