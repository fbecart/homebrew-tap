class Zinoma < Formula
  version '0.19.2'
  desc "Make your build flow incremental"
  homepage "https://github.com/fbecart/zinoma"

  if OS.mac?
    url "https://github.com/fbecart/zinoma/releases/download/0.19.2/zinoma-0.19.2-x86_64-apple-darwin.tar.gz"
    sha256 "ead66b5570a241379c760eb3b6bbafc4eaaff80e1324a3cf014ff26af3254565"
  elsif OS.linux?
    url "https://github.com/fbecart/zinoma/releases/download/0.19.2/zinoma-0.19.2-x86_64-unknown-linux-musl.tar.gz"
    sha256 "7bf37bdea11ab040a7e9f156e5cb4032c1d4f0fa058020fc27849f5bdc1f4e43"
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
