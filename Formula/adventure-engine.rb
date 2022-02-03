require "formula"

class AdventureEngine < Formula
    homepage "https://github.com/Essay97/tadvkt"
    desc "A CLI tool to create and play your own text adventure"
    url "https://github.com/Essay97/tadvkt/releases/download/v1.0.1/adventure-engine-1.0.1.tar.gz"
    sha256 "8484ce026507c73797c4dfec4676a8d441eb5ae8d5b5c2fe3457880c2aab74f0"
    version "1.0.1"
   
    def install
        inreplace "brew/adventure", "<PREFIX>", "#{prefix}"
        prefix.install "adventure-engine-1.0.1-standalone.jar"
        bin.install "brew/adventure"
    end
end
