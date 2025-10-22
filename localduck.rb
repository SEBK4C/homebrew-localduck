class Localduck < Formula
  desc "Local DuckDB database with Crunchbase data for funding analysis"
  homepage "https://github.com/sebk4c/LocalDuck"
  url "https://github.com/sebk4c/LocalDuck/archive/refs/heads/main.tar.gz"
  version "0.1.0"
  sha256 "494ef1725a10e69d85cc72b9b286228c817a35b7a13fba7742255235229664df"
  license "MIT"

  depends_on "python@3.13"

  def install
    # Install setuptools and wheel first (required by pyproject.toml)
    system "python3", "-m", "pip", "install", "--upgrade", "setuptools", "wheel"
    
    # Install the package with Homebrew prefix
    system "python3", "-m", "pip", "install", "--prefix=#{prefix}", "."
  end

  test do
    system "#{bin}/localduck-query", "--help"
  end
end

