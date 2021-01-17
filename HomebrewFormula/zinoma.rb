class Zinoma < Formula
  version '0.19.3'
  desc "Make your build flow incremental"
  homepage "https://github.com/fbecart/zinoma"

  if OS.mac?
    url "https://github.com/fbecart/zinoma/releases/download/0.19.3/zinoma-0.19.3-x86_64-apple-darwin.tar.gz"
    sha256 "519d11ae3ae6aa70cfc7c23e1ca21f86d944bd6ec4b6b8e659cde05c12386a60"
  elsif OS.linux?
    url "https://github.com/fbecart/zinoma/releases/download/0.19.3/zinoma-0.19.3-x86_64-unknown-linux-musl.tar.gz"
    sha256 "8cc977d32eb7792538695e5f5b0c3902b9897a4368c461a17c8ffa1b5cd0e762"
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
