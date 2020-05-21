class Zinoma < Formula
  version '0.8.0'
  desc "Make your build flow incremental"
  homepage "https://github.com/fbecart/zinoma"

  if OS.mac?
    url "https://github.com/fbecart/zinoma/releases/download/0.8.0/zinoma-0.8.0-x86_64-apple-darwin.tar.gz"
    sha256 "c94fd7eaaefdc3108975bc46309a15123b15972788896bf029f07b24a1e86d35"
  elsif OS.linux?
    url "https://github.com/fbecart/zinoma/releases/download/0.8.0/zinoma-0.8.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "2b44748bd67bef28f16d1ed76d68bb408a275d86fdbc6d5d202957ef7ab4b22c"
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
