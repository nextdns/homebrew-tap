# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nextdns < Formula
  desc "NextDNS DNS/53 to DoH Proxy"
  homepage "https://nextdns.io"
  version "1.46.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nextdns/nextdns/releases/download/v1.46.0/nextdns_1.46.0_darwin_amd64.tar.gz"
      sha256 "115712c27837ccfbc7486890955770503e0355935852c465e61311774ccb7f03"

      def install
        bin.install "nextdns"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nextdns/nextdns/releases/download/v1.46.0/nextdns_1.46.0_darwin_arm64.tar.gz"
      sha256 "6ec8b242ae7e2aca9dc6e8a64804faf3edd310f78a10de3610d2e4ca7755928f"

      def install
        bin.install "nextdns"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nextdns/nextdns/releases/download/v1.46.0/nextdns_1.46.0_linux_amd64.tar.gz"
        sha256 "ccbdd4041e9ecf63fff28c2585f0c2d16742f7ba7b2ab58a2c2219336eeacd9d"

        def install
          bin.install "nextdns"
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/nextdns/nextdns/releases/download/v1.46.0/nextdns_1.46.0_linux_armv6.tar.gz"
        sha256 "d1a575120c3c899cc78d08e8aae954989bf6663d5621cd01175bbeaaf628fef8"

        def install
          bin.install "nextdns"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nextdns/nextdns/releases/download/v1.46.0/nextdns_1.46.0_linux_arm64.tar.gz"
        sha256 "323f02a2fd5361c5302ed10651885f4521e8dd36751e14939bcba4df8ccd5d52"

        def install
          bin.install "nextdns"
        end
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
