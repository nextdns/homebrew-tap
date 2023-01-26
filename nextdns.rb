# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nextdns < Formula
  desc "NextDNS DNS/53 to DoH Proxy"
  homepage "https://nextdns.io"
  version "1.39.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nextdns/nextdns/releases/download/v1.39.1/nextdns_1.39.1_darwin_amd64.tar.gz"
      sha256 "8d384eebed93179c232193d367094b3a5c1229ed470d5322e68c493e580392cd"

      def install
        bin.install "nextdns"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nextdns/nextdns/releases/download/v1.39.1/nextdns_1.39.1_darwin_arm64.tar.gz"
      sha256 "97f410018c8e99d12584c695f025878fb09d9b8a5d5b4c832ce7c57c2cb18955"

      def install
        bin.install "nextdns"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/nextdns/nextdns/releases/download/v1.39.1/nextdns_1.39.1_linux_armv6.tar.gz"
      sha256 "36eb14c5186210b8c9c0419df6551a82e3ac387100a04df97d2491aa3583b3a7"

      def install
        bin.install "nextdns"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nextdns/nextdns/releases/download/v1.39.1/nextdns_1.39.1_linux_arm64.tar.gz"
      sha256 "3b81ae4ba287c4d6d2f57cdc443cfed50c69c1e70e95eb398951cdffb0edf649"

      def install
        bin.install "nextdns"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nextdns/nextdns/releases/download/v1.39.1/nextdns_1.39.1_linux_amd64.tar.gz"
      sha256 "e95a853664e4e74190cd8ca176eb27d37f70d0fab84260087350a7d638ac5ac9"

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
