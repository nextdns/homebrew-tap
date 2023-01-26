# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nextdns < Formula
  desc "NextDNS DNS/53 to DoH Proxy"
  homepage "https://nextdns.io"
  version "1.39.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nextdns/nextdns/releases/download/v1.39.4/nextdns_1.39.4_darwin_arm64.tar.gz"
      sha256 "0fdce5d2c8b31b1de1fb120882d31bf49d970296555dec9a186eae3437011a4e"

      def install
        bin.install "nextdns"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nextdns/nextdns/releases/download/v1.39.4/nextdns_1.39.4_darwin_amd64.tar.gz"
      sha256 "5f3a923198607157b819d33678fdcd84d349ab0b0f970b9aad1190686b565e9a"

      def install
        bin.install "nextdns"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/nextdns/nextdns/releases/download/v1.39.4/nextdns_1.39.4_linux_armv6.tar.gz"
      sha256 "d4fd9dc78bb55e85a71ced390ca42eafb97564734513753b7631ef15bb38d42f"

      def install
        bin.install "nextdns"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nextdns/nextdns/releases/download/v1.39.4/nextdns_1.39.4_linux_amd64.tar.gz"
      sha256 "1390b8adc7661640778ff4b6af6aed8f3dabae402904d4c6a75e5bb0ed257b5d"

      def install
        bin.install "nextdns"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nextdns/nextdns/releases/download/v1.39.4/nextdns_1.39.4_linux_arm64.tar.gz"
      sha256 "21146673b1edb5072806c781b89dde91afbfb50034cc603c983f790d4e1f814e"

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
