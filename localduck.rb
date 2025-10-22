class Localduck < Formula
  desc "Local DuckDB database with Crunchbase data for funding analysis"
  homepage "https://github.com/sebk4c/LocalDuck"
  url "https://github.com/sebk4c/LocalDuck/archive/refs/heads/main.tar.gz"
  sha256 "656325ca392b92062933682b14cfbf2e5b7f0d8854f72e72b35793d0056fd750"
  license "MIT"

  depends_on "python@3.13"

  def install
    # Install hatchling build backend first
    system "python3", "-m", "pip", "install", *std_pip_args, "--no-deps", "hatchling"
    # Install the package with dependencies
    system "python3", "-m", "pip", "install", *std_pip_args, "."
  end

  test do
    system "#{bin}/localduck-query", "--help"
  end
end

