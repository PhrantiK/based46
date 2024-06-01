````
    __                        ____ __  _____
   / /_  ____ _________  ____/ / // / / ___/
  / __ \/ __ `/ ___/ _ \/ __  / // /_/ __ \ 
 / /_/ / /_/ (__  )  __/ /_/ /__  __/ /_/ / 
/_.___/\__,_/____/\___/\__,_/  /_/  \____/  
````

## colorscheme generator for neovim.

`cargo install colorgen-nvim`

`make fetch`

`make && make install`

or:

````lua
return {
	"PhrantiK/based46",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("ashes")
	end,
}
````

