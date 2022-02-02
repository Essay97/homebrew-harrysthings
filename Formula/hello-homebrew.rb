require "formula"

class HelloHomebrew < Formula
    homepage "https://github.com/Essay97/hello-homebrew"
    desc "This is my first command distributed with Homebrew!"
    url "https://github.com/Essay97/hello-homebrew/releases/download/v1.0.0/hello-homebrew-1.0.0.tar.gz"
    sha256 "f47cbfe5336a305af80fcf124988c564676a0cac286b07b4446d5d65ea2c7213"
   
    def install
        inreplace "brew/hello", "##PREFIX##", "#{prefix}"
        prefix.install "hello-homebrew-1.0.0-SNAPSHOT-standalone.jar"
        bin.install "brew/hello"
    end
end
