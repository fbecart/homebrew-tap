class Zinoma < Formula
  version '0.7.0'
  desc "Make your build flow incremental"
  homepage "https://github.com/fbecart/zinoma"

  if OS.mac?
    url "https://github.com/fbecart/zinoma/releases/download/0.7.0/zinoma-0.7.0-x86_64-apple-darwin.tar.gz"
    sha256 "ce65be25df8adf410ffde204d7c2432c8f6c7a6127599b3e08a39e43e1e19601"
  elsif OS.linux?
    url "https://github.com/fbecart/zinoma/releases/download/0.7.0/zinoma-0.7.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "a9acf841a49eea2d3bba0da7e674767e0c1eb0cd7d60f7e16f49a49116b24210"
  end

  def install
    bin.install "zinoma"

    bash_completion.install "complete/zinoma.bash"
    zsh_completion.install "complete/_zinoma"
    fish_completion.install "complete/zinoma.fish"
  end

  test do
    system "#{bin}/zinoma --version"
  end
end
