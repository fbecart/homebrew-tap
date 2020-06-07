class Zinoma < Formula
  version '0.14.1'
  desc "Make your build flow incremental"
  homepage "https://github.com/fbecart/zinoma"

  if OS.mac?
    url "https://github.com/fbecart/zinoma/releases/download/0.14.1/zinoma-0.14.1-x86_64-apple-darwin.tar.gz"
    sha256 "01b1cafc3d3576e8ecc93fffd6be1f4124fde57da9f30ad9be3088952dc2a65c"
  elsif OS.linux?
    url "https://github.com/fbecart/zinoma/releases/download/0.14.1/zinoma-0.14.1-x86_64-unknown-linux-musl.tar.gz"
    sha256 "731daf6b60fb44cf667f0f2f7960545ccd7c1f56bedcda51e9607cdc30d57964"
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
