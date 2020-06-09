class Zinoma < Formula
  version '0.15.0'
  desc "Make your build flow incremental"
  homepage "https://github.com/fbecart/zinoma"

  if OS.mac?
    url "https://github.com/fbecart/zinoma/releases/download/0.15.0/zinoma-0.15.0-x86_64-apple-darwin.tar.gz"
    sha256 "957fa09662ede1f30880a5a87af5113a88c2bd2d53af4de22c0ab37b2f08bc68"
  elsif OS.linux?
    url "https://github.com/fbecart/zinoma/releases/download/0.15.0/zinoma-0.15.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "724bbbee955174a8c9b2bac59493aa61fc2acf913ca6eaf1b636f527a695cc23"
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
