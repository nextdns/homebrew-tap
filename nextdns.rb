# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nextdns < Formula
  desc "NextDNS DNS/53 to DoH Proxy"
  homepage "https://nextdns.io"
  version "1.44.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nextdns/nextdns/releases/download/v1.44.0/nextdns_1.44.0_darwin_amd64.tar.gz"
      sha256 "d0f81b419f566c7bcffc5e8e5655626f43f7bc07a85b51400f82de569cb39189"

      def install
        bin.install "nextdns"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nextdns/nextdns/releases/download/v1.44.0/nextdns_1.44.0_darwin_arm64.tar.gz"
      sha256 "40596a11c523f2363cb64115a29ab9147c34f8d320d4c76130e514da097e5c16"

      def install
        bin.install "nextdns"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/nextdns/nextdns/releases/download/v1.44.0/nextdns_1.44.0_linux_armv6.tar.gz"
      sha256 "29afc69647d42cc9db4bb069eb5a5a8d1cd223e10799a207320b17bef742aad3"

      def install
        bin.install "nextdns"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nextdns/nextdns/releases/download/v1.44.0/nextdns_1.44.0_linux_amd64.tar.gz"
      sha256 "74052fd05fe71e34ea3b17aae6f493d2e844f77c250d3100848186b447e6d541"

      def install
        bin.install "nextdns"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nextdns/nextdns/releases/download/v1.44.0/nextdns_1.44.0_linux_arm64.tar.gz"
      sha256 "779425133d423a265c81c9dbb565a409057d292c5dfa825b63fb4f298a459c17"

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
