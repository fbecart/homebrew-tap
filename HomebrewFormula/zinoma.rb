class Zinoma < Formula
  version '0.4.3'
  desc "Make your build flow incremental"
  homepage "https://github.com/fbecart/zinoma"

  if OS.mac?
    url "https://github.com/fbecart/zinoma/releases/download/0.4.3/zinoma-0.4.3-x86_64-apple-darwin.tar.gz"
    sha256 "8bca411aeeeb16116158e9a622040ea0a42afe873ba070bf2d7be6c06ca69aea"
  elsif OS.linux?
    url "https://github.com/fbecart/zinoma/releases/download/0.4.3/zinoma-0.4.3-x86_64-unknown-linux-musl.tar.gz"
    sha256 "bde210a72d40c62be260fc7f897bd60d01396839b0125cf5b7bbe59f27153c91"
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
