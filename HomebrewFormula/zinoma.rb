class Zinoma < Formula
  version '0.5.0'
  desc "Make your build flow incremental"
  homepage "https://github.com/fbecart/zinoma"

  if OS.mac?
    url "https://github.com/fbecart/zinoma/releases/download/0.5.0/zinoma-0.5.0-x86_64-apple-darwin.tar.gz"
    sha256 "c9da7711d5374a52bed31a9496ede4a7cb520caa327416e646b6f656ca94cb21"
  elsif OS.linux?
    url "https://github.com/fbecart/zinoma/releases/download/0.5.0/zinoma-0.5.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "dbd18728c1f1cf303a5a4da444e8443a7e1dd6bc862798bc02f0182b5d26b14a"
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
