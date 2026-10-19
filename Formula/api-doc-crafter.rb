class ApiDocCrafter < Formula
  desc "Merge, clean, filter, and render OpenAPI documentation"
  homepage "https://github.com/YunaBraska/api-doc-crafter"
  version "2026.10.19"
  license "MIT"

  on_macos do
    on_arm do
      # yuna-release: YunaBraska/api-doc-crafter
      # yuna-release-asset: api-doc-crafter-macos-arm64-{version}.native
      url "https://github.com/YunaBraska/api-doc-crafter/releases/download/#{version}/api-doc-crafter-macos-arm64-#{version}.native"
      sha256 "1eaeb5546fcbd82c8a0d9887ee4c5e08de718711e6612e96d68e1016fdaab693"
    end

    on_intel do
      # yuna-release-asset: api-doc-crafter-macos-x64-{version}.native
      url "https://github.com/YunaBraska/api-doc-crafter/releases/download/#{version}/api-doc-crafter-macos-x64-#{version}.native"
      sha256 "be12399d0ecf0cedd5d150a8807432addfb494665a6264ec694d4cf9dfd6e7ae"
    end
  end

  on_linux do
    on_arm do
      # yuna-release-asset: api-doc-crafter-linux-arm64-{version}.native
      url "https://github.com/YunaBraska/api-doc-crafter/releases/download/#{version}/api-doc-crafter-linux-arm64-#{version}.native"
      sha256 "07a59df2805b0b22faee8604bbb69c09100ed423b5cecbdb66764bd07a7b75b0"
    end

    on_intel do
      # yuna-release-asset: api-doc-crafter-linux-amd64-{version}.native
      url "https://github.com/YunaBraska/api-doc-crafter/releases/download/#{version}/api-doc-crafter-linux-amd64-#{version}.native"
      sha256 "d67377995939889eb3034c36c784ff892b3b94a8a6bee6f6437315fec4351875"
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
