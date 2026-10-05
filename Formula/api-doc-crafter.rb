class ApiDocCrafter < Formula
  desc "Merge, clean, filter, and render OpenAPI documentation"
  homepage "https://github.com/YunaBraska/api-doc-crafter"
  version "2026.9.28"
  license "MIT"

  on_macos do
    on_arm do
      # yuna-release: YunaBraska/api-doc-crafter
      # yuna-release-asset: api-doc-crafter-macos-arm64-{version}.native
      url "https://github.com/YunaBraska/api-doc-crafter/releases/download/#{version}/api-doc-crafter-macos-arm64-#{version}.native"
      sha256 "f027e7a959648f2f9d3fdd4ce59b3b8bbc862416405c9b5e5ec64e585eb1d24f"
    end

    on_intel do
      # yuna-release-asset: api-doc-crafter-macos-x64-{version}.native
      url "https://github.com/YunaBraska/api-doc-crafter/releases/download/#{version}/api-doc-crafter-macos-x64-#{version}.native"
      sha256 "6e19c224c363e01c78bbfe7d271fd0f66a2e400f014650afcbcd014297eeb4ef"
    end
  end

  on_linux do
    on_arm do
      # yuna-release-asset: api-doc-crafter-linux-arm64-{version}.native
      url "https://github.com/YunaBraska/api-doc-crafter/releases/download/#{version}/api-doc-crafter-linux-arm64-#{version}.native"
      sha256 "441a0c0bc245cd9111ca8a0d1ff296c5693a10da5fb72f6ca5d417177d100fa6"
    end

    on_intel do
      # yuna-release-asset: api-doc-crafter-linux-amd64-{version}.native
      url "https://github.com/YunaBraska/api-doc-crafter/releases/download/#{version}/api-doc-crafter-linux-amd64-#{version}.native"
      sha256 "adca9d0dc900712241cee392754f82b36c908e8ec81a269c553bdc82218aefd7"
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
