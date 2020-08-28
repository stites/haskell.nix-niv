##
# haskell.nix helpers
#
# @file
# @version 0.1

package = PACKAGE-NAME

lib:
	nix-build -A $(package).components.library

exe:
	nix-build -A $(package).components.exes.$(package)

release:
	nix-build ./release.nix

development:
	nix-build ./nix/development.nix

# end
