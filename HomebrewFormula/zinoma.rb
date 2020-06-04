class Zinoma < Formula
  version '0.14.0'
  desc "Make your build flow incremental"
  homepage "https://github.com/fbecart/zinoma"

  if OS.mac?
    url "https://github.com/fbecart/zinoma/releases/download/0.14.0/zinoma-0.14.0-x86_64-apple-darwin.tar.gz"
    sha256 "0c036e7c652e2aa7012ee731a5eec3232ac4568a0eb4a8a72b3188f37d9bd1df"
  elsif OS.linux?
    url "https://github.com/fbecart/zinoma/releases/download/0.14.0/zinoma-0.14.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "cbb0ab20fab7244bd0ce1a1bbe1fe610bab8e3a482fa1e5ce6f65900725b86ea"
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
