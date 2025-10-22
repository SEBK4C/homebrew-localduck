class Localduck < Formula
  desc "Local DuckDB database with Crunchbase data for funding analysis"
  homepage "https://github.com/sebk4c/LocalDuck"
  url "https://github.com/sebk4c/LocalDuck/archive/refs/heads/main.tar.gz"
  version "0.1.0"
  sha256 "494ef1725a10e69d85cc72b9b286228c817a35b7a13fba7742255235229664df"
  license "MIT"

  depends_on "python@3.13"
  depends_on "uv"

  def install
    # Use UV to install the package
    system "uv", "pip", "install", "--system", "."
  end

  test do
    system "#{bin}/localduck-query", "--help"
  end
end

