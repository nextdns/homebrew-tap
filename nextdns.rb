# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nextdns < Formula
  desc "NextDNS DNS/53 to DoH Proxy"
  homepage "https://nextdns.io"
  version "1.43.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nextdns/nextdns/releases/download/v1.43.0/nextdns_1.43.0_darwin_amd64.tar.gz"
      sha256 "3e4acf23cb8753b980d57de19af68e1596468d337eb05928c145ecae98f3a721"

      def install
        bin.install "nextdns"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nextdns/nextdns/releases/download/v1.43.0/nextdns_1.43.0_darwin_arm64.tar.gz"
      sha256 "bb1b6c43407ab75732f91a3f5908347752b1240d277ae8a2125bc9ecb8d8e790"

      def install
        bin.install "nextdns"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/nextdns/nextdns/releases/download/v1.43.0/nextdns_1.43.0_linux_armv6.tar.gz"
      sha256 "afbc1ad8ee8281ad7647a20afc5a7603285ea72728fb4b6940d568015d81976b"

      def install
        bin.install "nextdns"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nextdns/nextdns/releases/download/v1.43.0/nextdns_1.43.0_linux_arm64.tar.gz"
      sha256 "940a7dbfbeac3690b412832703ecbdfb3a15315d84ed650c43cfd16e822caf90"

      def install
        bin.install "nextdns"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nextdns/nextdns/releases/download/v1.43.0/nextdns_1.43.0_linux_amd64.tar.gz"
      sha256 "c6157f8660221b6ef8622a63e8e673583f2f57727b74163a7b116a2a34fe45e3"

      def install
        bin.install "nextdns"
      end
    end
  end

  def caveats
    <<~EOS
      To install NextDNS, run the following command:
      sudo nextdns install --profile <your_profile_id>
      Then setup your DNS manually to 127.0.0.1 or by running:
      sudo nextdns activate
    EOS
  end
end
