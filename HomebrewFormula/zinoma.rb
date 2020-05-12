class Zinoma < Formula
  version '0.4.2'
  desc "Make your build flow incremental"
  homepage "https://github.com/fbecart/zinoma"

  if OS.mac?
    url "https://github.com/fbecart/zinoma/releases/download/0.4.2/zinoma-0.4.2-x86_64-apple-darwin.tar.gz"
    sha256 "445c8d447d97df893fdd3535104ca80fec02abe41079eec88c6a401c80eda9ad"
  elsif OS.linux?
    url "https://github.com/fbecart/zinoma/releases/download/0.4.2/zinoma-0.4.2-x86_64-unknown-linux-musl.tar.gz"
    sha256 "3077b798692471c46a6061c75fe2a886446dabd91981fd07f6214c6d90d6170f"
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
