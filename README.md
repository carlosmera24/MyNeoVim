# NeoVim

Este repositorio tiene como objetivo tener un respaldo de configuración del editor [**NeoVim**](https://neovim.io/), el cual usa y mejor [**Vim**](https://www.vim.org/).

## Instalación:

1. En debian se puede instalar desde los repositorios oficiales:
   
   ```
   sudo apt install neovim
   ```

2. Instalar librerías python
   
   ```shell
   sudo apt install python-pip python3-pip #Agregar según se requiera
   python -m pip install neovim
   ```

3. Se recomientda mantener las librerías de Python actualizadas:
   
   ```shell
   python -m pip install --upgrade neovim
   ```

4. Instalar librerías ruby
   
   ```shell
   sudo apt install ruby ruby-dev
   ```

5. Instalar interfaz de ruby
   
   ```shell
   sudo gem install neovim
   ```

6. Comprobar dependencias *NeoVim*:
   
   ```shell
   nvim +checkhealth
   ```

7. Habilitar la integración con el portapapeles: se puede instalar xclip o xsel con apt
   
   ```shell
   sudo apt install xclip
   ```
   
   ## Configuración

NeoVim utiliza la configuración en el archivo **init.vim**, el cual debe estar en la ruta _~/.config/nvim/init.vim_ para el caso de linux, este archivo contiene mi respaldo con la configuración que uso, entre ellos los plugins y temas.

## Plugins y temas

Los plugins los he tomado de la página [VimAwesome](https://vimawesome.com/) y enlazaré los links respectivos y su respositorio en GitHub. Para gestionar los temas he utilizado [Vim-Plug](https://github.com/junegunn/vim-plug) el cual permite definir los plugins a utilizar en el archivo de configuración de Vim y luego ejecutar dentro de Vim *:source %* y luego *:PlugInstall*.

### Plugins

1. **indentLine:** [Vim Awesome](https://vimawesome.com/plugin/indentline) [GitHub](https://github.com/yggdroot/indentline) Permite visualizar las indentaciones presentes en el archivo.

2. **Vim Airline**: [Vim Awesome](https://vimawesome.com/plugin/vim-airline-superman) [GitHub](https://github.com/vim-airline/vim-airline) Modifica la visualización de la barra inferior, puede instalarse [Vim Awesome](https://vimawesome.com/plugin/vim-airline-themes) [GitHub - vim-airline/vim-airline-themes: A collection of themes for vim-airline](https://github.com/vim-airline/vim-airline-themes) para ampliar la posibilidad de temas.

3. **Nerd Tree:** [Vim Awesome](https://vimawesome.com/plugin/nerdtree-red) [GitHub](https://github.com/preservim/nerdtree) Permite tener un árbol de directorios para explorar el proyecto o carpetas. En la documentación se recomiendan algunos comandos a configurar para no tener que ejecutar comandos como *:NERDTree, :NERDTreeFind, NERDTreeToggle* entre otros, de igual manera recomienda otros plugins y configuraciones que podemos aplicar de acuerdo a nuestros gustos y necesidades.

4. **Vim-Devicons:** [Vim Awesome](https://vimawesome.com/plugin/vim-devicons) [GitHub](https://github.com/ryanoasis/vim-devicons) Integración de iconos para NerdTree. Para su instalación es necesario instalar una fuente compatible, yo utilizo la opción 6 en la doucmentación [GitHub - ryanoasis/nerd-fonts](https://github.com/ryanoasis/nerd-fonts#font-installation):
   
   ```shell
   mkdir -p ~/.local/share/fonts
   cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
   ```

5. **Nerd-Tree-Git-Plugin:**[Vim Awesome](https://vimawesome.com/plugin/nerdtree-git-plugin) [GitHub](https://github.com/xuyuanp/nerdtree-git-plugin) Permite identificar los cambios en los archivos para Git en NerdTree.

6. **Vim-NerdTree-Syntax-Highlight:** [Vim Awesome](https://vimawesome.com/plugin/vim-nerdtree-syntax-highlight) [GitHub](https://github.com/tiagofumo/vim-nerdtree-syntax-highlight) Resalta en diferentes colores los iconos de los tipos de archivos, trabaja en conjunto con **Vim-Devicons**

7. **Auto-Pairs:** [Vim Awesome](https://vimawesome.com/plugin/auto-pairs) [GitHub](https://github.com/jiangmiao/auto-pairs) Autocompleta comillas, llaves, parentesis, etc, muy util.

### Temas

1. **Nord Vim** [Vim Awesome]([Vim Awesome](https://vimawesome.com/plugin/nord-vim)) [GitHub](https://github.com/arcticicestudio/nord-vim)
