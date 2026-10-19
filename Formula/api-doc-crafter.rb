class ApiDocCrafter < Formula
  desc "Merge, clean, filter, and render OpenAPI documentation"
  homepage "https://github.com/YunaBraska/api-doc-crafter"
  version "2026.10.12"
  license "MIT"

  on_macos do
    on_arm do
      # yuna-release: YunaBraska/api-doc-crafter
      # yuna-release-asset: api-doc-crafter-macos-arm64-{version}.native
      url "https://github.com/YunaBraska/api-doc-crafter/releases/download/#{version}/api-doc-crafter-macos-arm64-#{version}.native"
      sha256 "c0003d04e7c40206250a7960dcffc613ab36d18e2f32f35e6a4414dc6b63f19d"
    end

    on_intel do
      # yuna-release-asset: api-doc-crafter-macos-x64-{version}.native
      url "https://github.com/YunaBraska/api-doc-crafter/releases/download/#{version}/api-doc-crafter-macos-x64-#{version}.native"
      sha256 "f2a0501202dc7e6e9f43e8c18f2d3f35fcbae516e2d2a0ab996b45841b0404df"
    end
  end

  on_linux do
    on_arm do
      # yuna-release-asset: api-doc-crafter-linux-arm64-{version}.native
      url "https://github.com/YunaBraska/api-doc-crafter/releases/download/#{version}/api-doc-crafter-linux-arm64-#{version}.native"
      sha256 "936e6caa9a5c867594f5804e7d1790a1a30be1a6ec3e26591c0999c68026b885"
    end

    on_intel do
      # yuna-release-asset: api-doc-crafter-linux-amd64-{version}.native
      url "https://github.com/YunaBraska/api-doc-crafter/releases/download/#{version}/api-doc-crafter-linux-amd64-#{version}.native"
      sha256 "204d5315b8feebaa5033eedb97f3c192e920698b4ac922a2cd4231131d542b6b"
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
