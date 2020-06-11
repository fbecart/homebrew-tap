class Zinoma < Formula
  version '0.15.3'
  desc "Make your build flow incremental"
  homepage "https://github.com/fbecart/zinoma"

  if OS.mac?
    url "https://github.com/fbecart/zinoma/releases/download/0.15.3/zinoma-0.15.3-x86_64-apple-darwin.tar.gz"
    sha256 "6f5a66d8d8a5a0751655a28d869dcdf6814e927a3b984bc650417f32bea4cac1"
  elsif OS.linux?
    url "https://github.com/fbecart/zinoma/releases/download/0.15.3/zinoma-0.15.3-x86_64-unknown-linux-musl.tar.gz"
    sha256 "3150513a342e4b6a3d0772c8c36c616b47993919685733a7dca303cbe75d5a34"
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
