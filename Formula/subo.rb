# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Subo < Formula
  desc "Suborbital CLI for building and deploying WebAssembly-based projects"
  homepage "https://suborbital.dev"
  version "0.5.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/suborbital/subo/releases/download/v0.5.3/subo-v0.5.3-darwin-arm64.tar.gz"
      sha256 "e6f86f915bcaf50c064cc139fb0eb4b97550749c2e5740759ff79e03541c6d97"

      def install
        bin.install "subo"

        bash_output = Utils.safe_popen_read(bin/"subo", "completion", "bash")
        (bash_completion/"subo").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"subo", "completion", "zsh")
        (zsh_completion/"_subo").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"subo", "completion", "fish")
        (fish_completion/"subo.fish").write fish_output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/suborbital/subo/releases/download/v0.5.3/subo-v0.5.3-darwin-amd64.tar.gz"
      sha256 "07d26ff73a622e574cec9eb24915ef3e722da78055ba3ec62b4599a7b02e1068"

      def install
        bin.install "subo"

        bash_output = Utils.safe_popen_read(bin/"subo", "completion", "bash")
        (bash_completion/"subo").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"subo", "completion", "zsh")
        (zsh_completion/"_subo").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"subo", "completion", "fish")
        (fish_completion/"subo.fish").write fish_output
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/suborbital/subo/releases/download/v0.5.3/subo-v0.5.3-linux-arm64.tar.gz"
      sha256 "12b380fa670b5214618f4cb7be317d6d01f8f1a9ee6661aa48b063c7d9ebabde"

      def install
        bin.install "subo"

        bash_output = Utils.safe_popen_read(bin/"subo", "completion", "bash")
        (bash_completion/"subo").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"subo", "completion", "zsh")
        (zsh_completion/"_subo").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"subo", "completion", "fish")
        (fish_completion/"subo.fish").write fish_output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/suborbital/subo/releases/download/v0.5.3/subo-v0.5.3-linux-amd64.tar.gz"
      sha256 "97fe12e511594102c4ee509b2a98349ecd72ee5445ceca41956e2c4103b05d54"

      def install
        bin.install "subo"

        bash_output = Utils.safe_popen_read(bin/"subo", "completion", "bash")
        (bash_completion/"subo").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"subo", "completion", "zsh")
        (zsh_completion/"_subo").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"subo", "completion", "fish")
        (fish_completion/"subo.fish").write fish_output
      end
    end
  end

  test do
    assert_match "Subo CLI v#{version}", shell_output("#{bin}/subo --version")
  end
end
