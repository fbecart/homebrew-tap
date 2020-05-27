class Zinoma < Formula
  version '0.10.0'
  desc "Make your build flow incremental"
  homepage "https://github.com/fbecart/zinoma"

  if OS.mac?
    url "https://github.com/fbecart/zinoma/releases/download/0.10.0/zinoma-0.10.0-x86_64-apple-darwin.tar.gz"
    sha256 "1c61c31d01ec094814997e92464411e7c3fa0ce491da4a48a017ac0619969b6e"
  elsif OS.linux?
    url "https://github.com/fbecart/zinoma/releases/download/0.10.0/zinoma-0.10.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "b53cef689b342ba03eb8b932716aed78609f3e174adc8ff500159ab1d0fc9e6e"
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
