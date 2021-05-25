# NeoVim

Este repositorio tiene como objetivo tener un respaldo de configuración del editor [**NeoVim**](https://neovim.io/), el cual usa y mejor [**Vim**](https://www.vim.org/).

## Configuración

NeoVim utiliza la configuración en el archivo **init.vim**, el cual debe estar en la ruta _~/.config/nvim/init.vim_ para el caso de linux, este archivo contiene mi respaldo con la configuración que uso, entre ellos los plugins y temas.

## Plugins y temas

Los plugins los he tomado de la página [VimAwesome](https://vimawesome.com/) y enlazaré los links respectivos y su respositorio en GitHub. Para gestionar los temas he utilizado [Vim-Plug](https://github.com/junegunn/vim-plug) el cual permite definir los plugins a utilizar en el archivo de configuración de Vim y luego ejecutar dentro de Vim *:source %* y luego *:PlugInstall*.

### Plugins

1. **indentLine:** [Vim Awesome](https://vimawesome.com/plugin/indentline) [GitHub](https://github.com/yggdroot/indentline) Permite visualizar las indentaciones presentes en el archivo.

2. **Vim Airline**: [Vim Awesome](https://vimawesome.com/plugin/vim-airline-superman) [GitHub](https://github.com/vim-airline/vim-airline) Modifica la visualización de la barra inferior, puede instalarse [Vim Awesome](https://vimawesome.com/plugin/vim-airline-themes) [GitHub - vim-airline/vim-airline-themes: A collection of themes for vim-airline](https://github.com/vim-airline/vim-airline-themes) para ampliar la posibilidad de temas.

3. **Nerd Tree:** [Vim Awesome](https://vimawesome.com/plugin/nerdtree-red) [GitHub](https://github.com/preservim/nerdtree) Permite tener un árbol de directorios para explorar el proyecto o carpetas. En la documentación se recomiendan algunos comandos a configurar para no tener que ejecutar comandos como *:NERDTree, :NERDTreeFind, NERDTreeToggle* entre otros, de igual manera recomienda otros plugins y configuraciones que podemos aplicar de acuerdo a nuestros gustos y necesidades.

4. **Vim-Devicons:** [Vim Awesome](https://vimawesome.com/plugin/vim-devicons) [GitHub](https://github.com/ryanoasis/vim-devicons) Integración de iconos para NerdTree

### Temas

1. **Nord Vim** [Vim Awesome]([Vim Awesome](https://vimawesome.com/plugin/nord-vim)) [GitHub](https://github.com/arcticicestudio/nord-vim)
