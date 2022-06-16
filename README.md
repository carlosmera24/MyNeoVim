# NeoVim

Este repositorio tiene como objetivo tener un respaldo de configuración del editor [**NeoVim**](https://neovim.io/), el cual usa y mejor [**Vim**](https://www.vim.org/).

## Instalación:

1. En **debian** se puede instalar desde los repositorios oficiales:
   
   ```
   sudo apt install neovim
   ```
   
   > También se sugiere el uso de [Brew](https://brew.sh) para tener la última versión.
   > 
   > **OJO:** Es la mejor opción a la fecha, en especial en Debian 11
   
   ```shell
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```
   
   **Mac** Utilizamos el instalado de **Brew**, partiendo de él ejecutamos:
   
   ```shell
   brew install neovim
   #Update
   brew upgrade neovim
   #Update all and homebrew itself
   brew update
   #Upgrade everything:
   brew upgrade
   ```

2. Instalar librerías python
   
   - **Linux:**            
   
   ```shell
   sudo apt install python-pip python3-pip #Agregar según se requiera
   python -m pip install neovim
   #debian 11
   python3 -m pip install neovim
   ```
   
   - **Mac**:
   
   ```shell
   brew install python
   /usr/local/bin/pip3 install neovim
   /usr/local/bin/pip3 install --upgrade neovim
   ```

3. Se recomienda mantener las librerías de Python actualizadas:
   
   - **Linux:**
   
   ```shell
   python -m pip install --upgrade neovim
   ```
   
   - **Mac:**
   
   ```shell
   /usr/local/bin/pip3 install --upgrade neovim
   ```

4. Instalar librerías ruby
   
   - **Linux:**
   
   ```shell
   sudo apt install ruby ruby-dev
   ```
   
   - **Mac:**
   
   ```shell
   brew install ruby
   ```

5. Instalar interfaz de ruby, tanto Linux como Mac
   
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

NeoVim utiliza la configuración en el archivo **init.vim**, el cual debe estar en la ruta _~/.config/nvim/init.vim_ para el caso de linux, este archivo contiene mi respaldo con la configuración que uso, entre ellos los plugins y temas. He separado la configuración en varios archivos que deben estar en la misma ruta:

- *plugins.vim*: Listado de plugins a instalar

- *plugin-config.vim*: Configuración propia de los temas

- *maps.vim*: Atajos del teclado

## Plugins y temas

Los plugins los he tomado de la página [VimAwesome](https://vimawesome.com/) y enlazaré los links respectivos y su respositorio en GitHub. Para gestionar los temas he utilizado [Vim-Plug](https://github.com/junegunn/vim-plug) el cual permite definir los plugins a utilizar en el archivo de configuración de Vim y luego ejecutar dentro de Vim *:source %* y luego *:PlugInstall*.

**Mac:**

```shell
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### Plugins

1. **indentLine:** [Vim Awesome](https://vimawesome.com/plugin/indentline) [GitHub](https://github.com/yggdroot/indentline) Permite visualizar las indentaciones presentes en el archivo.

2. **LuaLine:** [GitHub ](https://github.com/nvim-lualine/lualine.nvim). Bara de estado optimizada, según recomendaciones en la web, es más ligero, pasa a reemplazar **Vim AirLine**   
   
   > Importante instalar primero el plugin con PlugInstall/PlugUpdate y luego habilitar la configuración para evitar errores.

3. **BufTabLine**: [GitHub](https://github.com/ap/vim-buftabline) [Vim Awesome](https://vimawesome.com/plugin/buftabline) Tras no usar *Vim AirLine* es necesario tener otro tab para mostrar los buffers activos, esta funcionalidad la permite este plugin, sencillo y práctico, para iniciar solo basta con la instalación

4. **Vim Airline**: [Vim Awesome](https://vimawesome.com/plugin/vim-airline-superman) [GitHub](https://github.com/vim-airline/vim-airline) Modifica la visualización de la barra inferior, puede instalarse [Vim Awesome](https://vimawesome.com/plugin/vim-airline-themes) [GitHub - vim-airline/vim-airline-themes: A collection of themes for vim-airline](https://github.com/vim-airline/vim-airline-themes) para ampliar la posibilidad de temas.
   
   - **Ajuste de fuentes**: Para que visualice correctamente con > en la información, es necesario instalar la fuente power line:
     
     - **Linux:**
       
       ```shell
       sudo pip install powerline-status
       sudo apt-get install fonts-powerline
       ```
     
     - **Mac:**
       
       ```shell
       /usr/local/bin/pip3 install powerline-status
       #fonts-powerline
       # clone
       git clone https://github.com/powerline/fonts.git --depth=1
       # install
       cd fonts
       ./install.sh
       # clean-up a bit
       cd ..
       rm -rf fonts
       ```
     
     Luego agregar a la configuración de Vim:
     
     ```shell
     let g:airline_powerline_fonts = 1
     ```
- La integración con Git solo está disponible al instalar los plugins fugitive.vim, gina.vim, lawrencium, vcscommand.
3. **Nerd Tree:** [Vim Awesome](https://vimawesome.com/plugin/nerdtree-red) [GitHub](https://github.com/preservim/nerdtree) Permite tener un árbol de directorios para explorar el proyecto o carpetas. En la documentación se recomiendan algunos comandos a configurar para no tener que ejecutar comandos como *:NERDTree, :NERDTreeFind, NERDTreeToggle* entre otros, de igual manera recomienda otros plugins y configuraciones que podemos aplicar de acuerdo a nuestros gustos y necesidades.

4. **Vim-Devicons:** [Vim Awesome](https://vimawesome.com/plugin/vim-devicons) [GitHub](https://github.com/ryanoasis/vim-devicons) Integración de iconos para NerdTree. Para su instalación es necesario instalar una fuente compatible, yo utilizo la opción 6 en la doucmentación [GitHub - ryanoasis/nerd-fonts](https://github.com/ryanoasis/nerd-fonts#font-installation), para Linux:
   
   ```shell
   mkdir -p ~/.local/share/fonts
   cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
   ```
   
   Para **Mac** utilizo la opción 4:
   
   ```shell
   brew tap homebrew/cask-fonts
   brew install --cask font-hack-nerd-font
   #Aunque al final opto por:
   cd ~/Library/Fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
   ```
   
   > Recomendable usasr iTerm2 y en el perfil usar una fuente diferente para Non-ASCII y seleccionar *DroidSansMono  Nerd Font* y actuar el uso de ligaduras.s

5. **Nerd-Tree-Git-Plugin:**[Vim Awesome](https://vimawesome.com/plugin/nerdtree-git-plugin) [GitHub](https://github.com/xuyuanp/nerdtree-git-plugin) Permite identificar los cambios en los archivos para Git en NerdTree.

6. **Vim-NerdTree-Syntax-Highlight:** [Vim Awesome](https://vimawesome.com/plugin/vim-nerdtree-syntax-highlight) [GitHub](https://github.com/tiagofumo/vim-nerdtree-syntax-highlight) Resalta en diferentes colores los iconos de los tipos de archivos, trabaja en conjunto con **Vim-Devicons**

7. **Auto-Pairs:** [Vim Awesome](https://vimawesome.com/plugin/auto-pairs) [GitHub](https://github.com/jiangmiao/auto-pairs) Autocompleta comillas, llaves, parentesis, etc, muy util.

8. **vim-closetag**: [GitHub](https://github.com/alvan/vim-closetag) Cierra etiquetas automáticamente.

9. **vim-surround**: [GitHub](https://github.com/tpope/vim-surround) Permite encapsular o encerrar palabras o selección en comillas, parentesis, llaves, etc, para su uso se debe seleccionar lo deseado -1 caracter  y luego `<leader> + caracter_deseado` 

10. **FZF-Vim:** [Vim Awesome](https://vimawesome.com/plugin/fzf-vim) [GitHub](https://github.com/junegunn/fzf.vim) Integra funcionalidades para realizar busqueda de archivos con el complemento para terminal **FZF** ([Vim Awesome](https://vimawesome.com/plugin/fzf) [GitHub](https://github.com/junegunn/fzf)). Según la documentación encontrada, FZF es un buscador de archivos para terminales muy rápido y versatil, para instalarlo en Vim es necesario primero realizar la instalación en el sistema de la siguiente manera:
    
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

11. **Git:**
    
    1. **Fugitive.vim**: [Vim Awesome](https://vimawesome.com/plugin/fugitive-vim) [GitHub](https://github.com/tpope/vim-fugitive)  Integra comandos para el uso de git, además se integra muy bien con **Airline**
    2. **vim-gitgutter:** [Vim Awesome](https://vimawesome.com/plugin/vim-gitgutter) [GitHub](https://github.com/airblade/vim-gitgutter) Resalta dentro de los archivos los cambios realizados.

12. **Sintanxis**:
    
    1. **Vim-Vue:** [Vim Awesome](https://vimawesome.com/plugin/vim-vue-fearless) [GitHub](https://github.com/posva/vim-vue) 
    
    2. **Vim-Blade:** [Vim Awesome](https://vimawesome.com/plugin/vim-blade-shouldve-said-no) [GitHub](https://github.com/jwalton512/vim-blade) 
    
    3. **Vim-Laravel:** [Vim Awesome](https://vimawesome.com/plugin/vim-laravel-face-rejection) [GitHub](https://github.com/noahfrederick/vim-laravel) 
    
    4. **Typescript-Vim:** [Vim Awesome](https://vimawesome.com/plugin/typescript-vim) [GitHub](https://github.com/leafgarland/typescript-vim) 
    
    5. **Vim-JavaScript:** [Vim Awesome](https://vimawesome.com/plugin/vim-javascript) [GitHub](https://github.com/pangloss/vim-javascript) 
    
    6. **PHP-Vim:** [Vim Awesome](https://vimawesome.com/plugin/php-vim-shouldve-said-no) [GitHub](https://github.com/stanangeloff/php.vim) 
    
    7. **Vim-Php-CS-Fixer:** [Vim Awesome](https://vimawesome.com/plugin/vim-php-cs-fixer) [GitHub](https://github.com/guenti/vim-php-cs-fixer) Con **PHP-Vim** basta para resaltar la sintaxis.
    
    8. **vim-polyglot**: [GitHub](https://github.com/sheerun/vim-polyglot) Contiene el resaltado de sintaxis para muchos programas o una gran mayoria, para deshabilitar alguno basta con:
       
       ```shell
       let g:polyglot_disabled = ['markdown']
       ```
       
       > Para mayor información se puede consultar la documentación oficial
    
    9. 

13. **Coc:** [Vim Awesome](https://vimawesome.com/plugin/coc-nvim) [GitHub](https://github.com/neoclide/coc.nvim) Utilizado para autocompletar código, es necesario instalar cada complemento por separado, es decir, para cada lenguaje de autocompletado que se desee se debe realizar la instalación, para ello, una vez se tenga instalado **Coc** bastará con ejecutar *:CocInstall [Nombre_Libreria]*, para instalar complementos de lenguaje basta con ejecutar *:CocInstall [paquete]*
    
    1. **Coc-PHPLS:** [Vim Awesome](https://vimawesome.com/plugin/coc-phpls) [GitHub](https://github.com/marlonfan/coc-phpls)
    2. **Coc-Eslint**: [Vim Awesome](https://vimawesome.com/plugin/coc-eslint) [GitHub](https://github.com/neoclide/coc-eslint) 
    3. **Coc-TSServer:** [Vim Awesome](https://vimawesome.com/plugin/coc-tsserver) [GitHub](https://github.com/neoclide/coc-tsserver)
    4. **Coc-Ventur:** [Vim Awesome](https://vimawesome.com/plugin/coc-vetur) [GitHub](https://github.com/neoclide/coc-vetur) VueJS
    5. **Coc-CSS:** [Vim Awesome](https://vimawesome.com/plugin/coc-css) [GitHub](https://github.com/neoclide/coc-css) VueJS
    
    > **Nota:** Al no tener versiones actualizadas de **Neovim** se pueden generar problemas de compatibilidad con *Coc*, para ello opté en mi protatil con *Debian buster* instalar la versión de NeoVim utilizando AppImage, la documentación está en la página oficial, de esa manera logro tener la última versión y libre de errores:
    > 
    > ```shell
    > curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
    > chmod u+x nvim.appimage
    > ./nvim.appimage
    > #Luego agregar el comando globalmente, pues da error al ejecutar el comando nvim
    > ./nvim.appimage --appimage-extract
    > ./squashfs-root/AppRun --version
    > sudo mv squashfs-root / && sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
    > nvim
    > ```

14. **EditorConfig-Vim:** [Vim Awesome](https://vimawesome.com/plugin/editorconfig-vim) [GitHub](https://github.com/editorconfig/editorconfig-vim) Este complemento permite ingrar la configuración del editor como identación y tabulado importando configuración de [EditorConfig](https://editorconfig.org/) para lo cual se requiere crear el arcvhio *.editorconfig* en la raíz del proyecto.

15. **Emmet.Vim:** [Vim Awesome](https://vimawesome.com/plugin/emmet-vim) [GitHub](https://github.com/mattn/emmet-vim) Generación de código a partir de abreviaciones similar a [Emmet](https://emmet.io/), ejemplo:
    
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

16. **VIM-INTERESTINGWORDS:** [Vim Awesome](https://vimawesome.com/plugin/vim-interestingwords-safe-and-sound) [GitHub](https://github.com/lfv89/vim-interestingwords) Permite seleccionar palabras y sus ocurrencias en el texto, uso simpre, seleccionar palabra y presionar _<leader>+k_ para resaltar y _<leader>+K_ para eliminar el resaltado; y navegar entre las ocurrencias utilizando _<leader>+n_ y _<leader>+N_.

17. **vim-visual-multi**: [GitHub](https://github.com/mg979/vim-visual-multi) Permite selección de multiples líenas, propicio para editar al mismo tiempo:
    
    - Seleccionar palabas con `Ctrl-n` (Salir con `Ctrl-d` )
    
    - Crear cursores verticalmente `Ctrl-Down/Ctrl-Up`
    
    - Seleccionar un caracter a la vez `Shift-Arrows`
    
    - Presionar `n/N` para  next/previous ocurrencia
    
    - Presione `[/]` para seleccionar siguiente/anterior cursor
    
    - Presione `q` para salir del acual y obtener la siguiente ocurrencia
    
    - Presione `Q` para remover el actual curos/selección
    
    - Iniciar modo inserción con `i,a,I,A`
    
    - Habilitar el uso del cursor agregar `let g:VM_mouse_mappings = 1` en el archivo de configuración, seleccionar con `Ctrl-Click` y salir con `Ctrl-Click derecho`

18. **Comentarios con soporte para VUE/JS**: Inicialmente usé **nvim-comment** citado en el siguiente punto, pero no me fue posible activar el soporte para VUE, indagando me encontré una combinación de dos plugins, [vim-commentary](https://github.com/tpope/vim-commentary) y [vim-context-commentstring](https://github.com/suy/vim-context-commentstring), este ultimo agrega el soporte para VUE, los comandos son similares a los de **nvim-comment**:
    
    - Comentar/Descomentar linea o selección actual `gcc`
    
    - Comentar lineas arriba/abajo `gc{count}{motion}` donde *count* es el numero de lienas a comentar y *motion* la dirección (j|k|flechas).

19. **Nvim Commnet**: `Reemplazado por "vim-comentary", ya que tiene soporte para VUE al instalar "vim-context-commentstring"` [GitHub](https://github.com/terrortylor/nvim-comment) Permite agregar comentario o commentar lineas de codigo:
    
    - Comentar/Descomentar linea actual `gcc`
    
    - Comentar lineas arriba/abajo `gc{count}{motion}` donde *count* es el numero de lienas a comentar y *motion* la dirección (j|k|flechas).
    
    - Comenta/Descomenta un párrafo `gcip`
    
    - Comenta/Descomenta linea actual `gc4w` 
    
    - `gc4j` comment/uncomment 4 lines below the current line
    
    - Borra bloque comentado `dic`
    
    - Descomenta un bloque `gcic` 
    20. **Navegación entre splits (tmux)**: Uso en combinación 

### Temas

1. **Nord Vim:** [Vim Awesome]([Vim Awesome](https://vimawesome.com/plugin/nord-vim)) [GitHub](https://github.com/arcticicestudio/nord-vim)

## Solución de Errores

1. **redrawtime exceeded syntax highlighting disabled**:
   
   * Se puede instalar [Source-highlight](https://www.gnu.org/software/src-highlite/) *sudo apt install source-highlight*.
   
   * *:syn clear phpHereDoc*: Ejecutarlo támbien ayuda.
   
   * Agregar a la configuración de Vim *let g:loaded_matchparen = 1* incrementa la velocidad de carga de archivos PHP.
   
   * Por último funciona agregar a la configuración:
     
     ```bash
     set redrawtime=10000
     syntax sync fromstart
     set re=1
     ```

2. 
