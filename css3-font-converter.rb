# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                /usr/local/Library/Contributions/example-formula.rb
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Css3FontConverter < Formula
  homepage "https://github.com/zoltan-dulac/css3FontConverter"
  url "https://github.com/zoltan-dulac/css3FontConverter.git"
  sha256 ""

  depends_on "fontforge"
  depends_on "ttf2eot"
  depends_on "ttfautohint"
  depends_on "woff2"
  depends_on "sfnt2woff"

  def install
    bin.install Dir["*.sh"]
    bin.install Dir["*.pe"]
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test woff`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
