# nvim_config
Repo for my nvim configuration files

//prepare
install ripgrep
install fd 
install packer 
navigate to packer.lua
:so and :PackerSync there

//Windows
visual studio installer for clangd 
C:\BuildTools

//Linux
install lua newest version
install clangd per apt
mind to use the newest nvim version
(sudo snap nvim --classic)

//cmake
atm cmake plugin isn't working
just use basic cmake in project directory:
cmake -B build -S . 
cmake --build build

//keymaps
(<leader> = Spacebar)
<leader>pf = find files
<leader>ps = search for string
<leader>pv = dir overview
<leader>a = add file to harpoon
control e = open harpoon
control h = harpoon file 1
control t = harpoon file 2
control n = harpoon file 3
control s = harpoon file 4
(harpoon short cuts not the best atm)
