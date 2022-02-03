require "formula"

class AdventureEngine < Formula
    homepage "https://github.com/Essay97/tadvkt"
    desc "A CLI tool to create and play your own text adventure"
    url "https://github.com/Essay97/tadvkt/releases/download/v1.1.0/adventure-engine-1.1.0.tar.gz"
    sha256 "a68e03d3b78114ed392f267ad11666f441f9cf41da533cb121142127cb40f024"
    version "1.1.0"
   
    def install
        inreplace "brew/adventure", "<PREFIX>", "#{prefix}"
        prefix.install "adventure-engine-1.1.0-standalone.jar"
        bin.install "brew/adventure"
    end
end
