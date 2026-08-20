class ApiDocCrafter < Formula
  desc "Merge, clean, filter, and render OpenAPI documentation"
  homepage "https://github.com/YunaBraska/api-doc-crafter"
  version "2026.8.12"
  license "MIT"

  on_macos do
    on_arm do
      # yuna-release: YunaBraska/api-doc-crafter
      # yuna-release-asset: api-doc-crafter-macos-arm64-{version}.native
      url "https://github.com/YunaBraska/api-doc-crafter/releases/download/#{version}/api-doc-crafter-macos-arm64-#{version}.native"
      sha256 "bee2643f16557f6e9d9296a2db28604d5f525b184e732fb9bfc4ff747be9b933"
    end

    on_intel do
      # yuna-release-asset: api-doc-crafter-macos-x64-{version}.native
      url "https://github.com/YunaBraska/api-doc-crafter/releases/download/#{version}/api-doc-crafter-macos-x64-#{version}.native"
      sha256 "7f3047f7b59d4758f901f6f5414186825592f48c3804a7bf1b4f12be14014b86"
    end
  end

  on_linux do
    on_arm do
      # yuna-release-asset: api-doc-crafter-linux-arm64-{version}.native
      url "https://github.com/YunaBraska/api-doc-crafter/releases/download/#{version}/api-doc-crafter-linux-arm64-#{version}.native"
      sha256 "866509b88d7a48eb3a9a464561e06cf7a6410e94b1d0bf82e7082bc1ff1249c6"
    end

    on_intel do
      # yuna-release-asset: api-doc-crafter-linux-amd64-{version}.native
      url "https://github.com/YunaBraska/api-doc-crafter/releases/download/#{version}/api-doc-crafter-linux-amd64-#{version}.native"
      sha256 "ad6a83f3ad4dfb10c461904b25f762e7df292ad59bb02eeefce294d6c8e6f3c0"
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
