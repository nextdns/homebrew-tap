# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nextdns < Formula
  desc "NextDNS DNS/53 to DoH Proxy"
  homepage "https://nextdns.io"
  version "1.37.11"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nextdns/nextdns/releases/download/v1.37.11/nextdns_1.37.11_darwin_amd64.tar.gz"
      sha256 "7fb9dd04256810555f893ca9be4bde19263dcde4a8e6cb7e427a2e8291dd51a3"

      def install
        bin.install "nextdns"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nextdns/nextdns/releases/download/v1.37.11/nextdns_1.37.11_darwin_arm64.tar.gz"
      sha256 "97e7866648b78a5b52b365917316a31d5966ae9482bde3331e45f3daa04c8343"

      def install
        bin.install "nextdns"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/nextdns/nextdns/releases/download/v1.37.11/nextdns_1.37.11_linux_armv6.tar.gz"
      sha256 "3ace5702bfe862d7278b1ce51694f5b98eb596e11b4d05d588a2292e76d3a6d3"

      def install
        bin.install "nextdns"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nextdns/nextdns/releases/download/v1.37.11/nextdns_1.37.11_linux_amd64.tar.gz"
      sha256 "98eaaf3d5ceb67d68604c9deefe43b524e682d03e51fa96b13ebd9e1375061b2"

      def install
        bin.install "nextdns"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nextdns/nextdns/releases/download/v1.37.11/nextdns_1.37.11_linux_arm64.tar.gz"
      sha256 "102ea184cb92a8ba79a69de4f5a799daaaa2651539dd65b6fa24918d7edc8828"

      def install
        bin.install "nextdns"
      end
    end
  end

  def caveats; <<~EOS
    To install NextDNS, run the following command:
    sudo nextdns install --config <your_conf_id>
    Then setup your DNS manually to 127.0.0.1 or by running:
    sudo nextdns activate
  EOS
  end
end
