class Zinoma < Formula
  version '0.17.0'
  desc "Make your build flow incremental"
  homepage "https://github.com/fbecart/zinoma"

  if OS.mac?
    url "https://github.com/fbecart/zinoma/releases/download/0.17.0/zinoma-0.17.0-x86_64-apple-darwin.tar.gz"
    sha256 "1c3c60984f31ea034f8b3dae9fbf676ea3a049ac50ebcda2f19419fcb3e52f29"
  elsif OS.linux?
    url "https://github.com/fbecart/zinoma/releases/download/0.17.0/zinoma-0.17.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "3b79cf644ee45f34dd00da7a121b199a97c268cc680d46750c602a54e8db5d4b"
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
