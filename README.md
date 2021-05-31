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

   - **Ajuste de fuentes**: Para que visualice correctamente con > en la información, es necesario instalar la fuente power line:

     ```shell
     sudo pip install powerline-status
     sudo apt-get install fonts-powerline
     ```

     Luego agregar a la configuración de Vim:

     ```shell
     let g:airline_powerline_fonts = 1
     ```

   - La integración con Git solo está disponible al instalar los plugins fugitive.vim, gina.vim, lawrencium, vcscommand.

3. **Nerd Tree:** [Vim Awesome](https://vimawesome.com/plugin/nerdtree-red) [GitHub](https://github.com/preservim/nerdtree) Permite tener un árbol de directorios para explorar el proyecto o carpetas. En la documentación se recomiendan algunos comandos a configurar para no tener que ejecutar comandos como *:NERDTree, :NERDTreeFind, NERDTreeToggle* entre otros, de igual manera recomienda otros plugins y configuraciones que podemos aplicar de acuerdo a nuestros gustos y necesidades.

4. **Vim-Devicons:** [Vim Awesome](https://vimawesome.com/plugin/vim-devicons) [GitHub](https://github.com/ryanoasis/vim-devicons) Integración de iconos para NerdTree. Para su instalación es necesario instalar una fuente compatible, yo utilizo la opción 6 en la doucmentación [GitHub - ryanoasis/nerd-fonts](https://github.com/ryanoasis/nerd-fonts#font-installation):

   ```shell
   mkdir -p ~/.local/share/fonts
   cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
   ```

5. **Nerd-Tree-Git-Plugin:**[Vim Awesome](https://vimawesome.com/plugin/nerdtree-git-plugin) [GitHub](https://github.com/xuyuanp/nerdtree-git-plugin) Permite identificar los cambios en los archivos para Git en NerdTree.

6. **Vim-NerdTree-Syntax-Highlight:** [Vim Awesome](https://vimawesome.com/plugin/vim-nerdtree-syntax-highlight) [GitHub](https://github.com/tiagofumo/vim-nerdtree-syntax-highlight) Resalta en diferentes colores los iconos de los tipos de archivos, trabaja en conjunto con **Vim-Devicons**

7. **Auto-Pairs:** [Vim Awesome](https://vimawesome.com/plugin/auto-pairs) [GitHub](https://github.com/jiangmiao/auto-pairs) Autocompleta comillas, llaves, parentesis, etc, muy util.

8. **FZF-Vim:** [Vim Awesome](https://vimawesome.com/plugin/fzf-vim) [GitHub](https://github.com/junegunn/fzf.vim) Integra funcionalidades para realizar busqueda de archivos con el complemento para terminal **FZF** ([Vim Awesome](https://vimawesome.com/plugin/fzf) [GitHub](https://github.com/junegunn/fzf)). Según la documentación encontrada, FZF es un buscador de archivos para terminales muy rápido y versatil, para instalarlo en Vim es necesario primero realizar la instalación en el sistema de la siguiente manera:

   1. **Instalar FZF en el sistema:** En la documentación oficial está las diversas posibilidades para instalar, para mi caso lo realizo utilizando mi gestor de paquetes (Debian APT)

      ```shell
      sudo apt install fzf
      ```

      > A este punto podemos ejecutar en terminal **fzf**  y presionar **Enter**, inmediatamente listara los archivos y podemos ingresar la busqueda que queramos en el directorio actual, nos desplazamos usando las flechas del teclado y al presionar **Enter** finaliza el programa listando el documento seleccionado. **Ctrl+R** para buscar en comando.

   2. **Instalar Ripgrep:** Se recomienda la instalación para implementar la busca dentro de los archivos, su instalación es similar y se pude encontrar la docuemntación en [GitHub](https://github.com/BurntSushi/ripgrep)

      ```shell
      sudo apt install ripgrep
      ```

      > Podemos ejecutarlo con **rg -i [cadena a buscar]**

      Para integrarlo con **FZF** es necesario agregar la siguiente función en *.bashrc* o *.zshrc* según el shell usado, en mi caso es bashrc en *~/.bashrc*

      ```shell
      fif() {
        if [ !"$#" -gt 1 ]; then echo "Need a string to search for!"; return 1; fi
        rg --files-with-matches --no-messages $1 | fzf --preview "highlight -O ansi -l {} 2> /dev/null | rg --colors 'match:bg:yellow' --ignore-case --pretty --context 10 $1 || rg --ignore-case --pretty --context 10 $1 {}"
      }
      ```

      Esto habilita el comando *fif* en la consola, para lo que es necesario ejecutar *source ~/.bashrc* o cerrar y volver a abrir la consola. Podemos hacer busquedas dentro de **FZF** ejecutando *fif cadena_a_buscar*. 

      También podemos integrarlo dentro de **FZF** agregando al ~/.bashrc:

      ```shell
      if type rg &> /dev/null; then
        export FZF_DEFAULT_COMMAND='rg --files'
        export FZF_DEFAULT_OPTS='-m --height 50% --border'
      fi
      ```

      > Hasta el momento no veo una gran funcionalidad, con la integración anterior para el comando *fif* basta,

   3. **Instalar el plugin FZF.VIM:** Agregar a la configuración de NeoVim:

      ```shell
      Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
      Plug 'junegunn/fzf.vim'
      ```

      Se recomiendo *'junegunn/fzf', { 'do': { -> fzf#install() } }* para garantizar que tengamos la última versión de **FZF**

9. **Fugitive.vim**: [Vim Awesome](https://vimawesome.com/plugin/fugitive-vim) [GitHub](https://github.com/tpope/vim-fugitive)  Integra comandos para el uso de git, además se integra muy bien con **Airline**

10. **Sintanxis**:

   11. **Vim-Vue:** [Vim Awesome](https://vimawesome.com/plugin/vim-vue-fearless) [GitHub](https://github.com/posva/vim-vue) 

   12. **Vim-Blade:** [Vim Awesome](https://vimawesome.com/plugin/vim-blade-shouldve-said-no) [GitHub](https://github.com/jwalton512/vim-blade) 

   3. **Vim-Laravel:** [Vim Awesome](https://vimawesome.com/plugin/vim-laravel-face-rejection) [GitHub](https://github.com/noahfrederick/vim-laravel) 

11. **Coc:** [Vim Awesome](https://vimawesome.com/plugin/coc-nvim) [GitHub](https://github.com/neoclide/coc.nvim) Utilizado para autocompletar código, es necesario instalar cada complemento por separado, es decir, para cada lenguaje de autocompletado que se desee se debe realizar la instalación, para ello, una vez se tenga instalado **Coc** bastará con ejecutar *:CocInstall [Nombre_Libreria]*, para instalar complementos de lenguaje basta con ejecutar *:CocInstall [paquete]*

    1. **Coc-PHPLS:** [Vim Awesome](https://vimawesome.com/plugin/coc-phpls) [GitHub](https://github.com/marlonfan/coc-phpls)
    2. **Coc-Eslint**: [Vim Awesome](https://vimawesome.com/plugin/coc-eslint) [GitHub](https://github.com/neoclide/coc-eslint) 
    3. **Coc-TSServer:** [Vim Awesome](https://vimawesome.com/plugin/coc-tsserver) [GitHub](https://github.com/neoclide/coc-tsserver)
    4. 
    
    > TODO: Hasta el momento tengo problemas al ejecutarlo En el portatil, surgen unos errores, pendiente por definir e implementar
    
15. **EditorConfig-Vim:** [Vim Awesome](https://vimawesome.com/plugin/editorconfig-vim) [GitHub](https://github.com/editorconfig/editorconfig-vim) Este complemento permite ingrar la configuración del editor como identación y tabulado importando configuración de [EditorConfig](https://editorconfig.org/) para lo cual se requiere crear el arcvhio *.editorconfig* en la raíz del proyecto.

16. **Emmet.Vim:** [Vim Awesome](https://vimawesome.com/plugin/emmet-vim) [GitHub](https://github.com/mattn/emmet-vim) Generación de código a partir de abreviaciones similar a [Emmet](https://emmet.io/), ejemplo:

    ```html
    <!-- div>p#foo$*3>a -> Presionar Ctr+y, genera:-->
     <div>
          <p id="foo1">
              <a href=""></a>
          </p>
          <p id="foo2">
              <a href=""></a>
          </p>
          <p id="foo3">
              <a href=""></a>
          </p>
      </div>
    ```

    

### Temas

1. **Nord Vim** [Vim Awesome]([Vim Awesome](https://vimawesome.com/plugin/nord-vim)) [GitHub](https://github.com/arcticicestudio/nord-vim)
