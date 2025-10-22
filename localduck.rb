class Localduck < Formula
  desc "Local DuckDB database with Crunchbase data for funding analysis"
  homepage "https://github.com/sebk4c/LocalDuck"
  url "https://github.com/sebk4c/LocalDuck/archive/refs/heads/main.tar.gz"
  sha256 "CHANGE_THIS_TO_ACTUAL_SHA256"
  license "MIT"

  depends_on "python@3.13"

  def install
    # Install setuptools first, then install the package
    system "python3", "-m", "pip", "install", "--upgrade", "setuptools", "wheel"
    system "python3", "-m", "pip", "install", "--prefix=#{prefix}", "."
  end

  test do
    system "#{bin}/localduck-query", "--help"
  end
end

