#! bash oh-my-bash.module

# Path
export PATH="$PATH\
:$HOME/.bin\
:$HOME/.local/bin\
:$HOME/Documents/RetroArch\
:$HOME/.cargo/bin\
:$DOTFILES/vendor/bin\
:$DOTFILES/node_modules/.bin";

# Tinted Shell
if [[ -f "${DOTFILES}/dependencies/tinted-shell/scripts/base24-dracula.sh" ]]; then
	. "${DOTFILES}/dependencies/tinted-shell/scripts/base24-dracula.sh"
fi

# LS_COLORS generated by Vivid Dracula
# https://github.com/sharkdp/vivid
# vivid -m 8-bit generate dracula
export LS_COLORS="*~=0;38;5;237:bd=1;38;5;228;48;5;235:ca=0:cd=1;38;5;228;48;5;235:di=0;38;5;141:do=1;38;5;212;48;5;235:ex=0;38;5;84:fi=0;38;5;231:ln=0;38;5;117:mh=0:mi=0;38;5;203;48;5;235:no=0;38;5;231:or=1;38;5;203;48;5;235:ow=0;38;5;141;48;5;84:pi=0;38;5;228;48;5;235:rs=0;38;5;215:sg=0;38;5;235;48;5;228:so=1;38;5;212;48;5;235:st=0;38;5;231;48;5;141:su=0;38;5;231;48;5;203:tw=0;38;5;235;48;5;84:*.1=0;38;5;215:*.a=0;38;5;84:*.c=0;38;5;215:*.d=0;38;5;215:*.h=0;38;5;215:*.m=0;38;5;215:*.o=0;38;5;237:*.p=0;38;5;215:*.r=0;38;5;215:*.t=0;38;5;215:*.v=0;38;5;215:*.z=1;38;5;203:*.7z=1;38;5;203:*.ai=0;38;5;212:*.as=0;38;5;215:*.bc=0;38;5;237:*.bz=1;38;5;203:*.cc=0;38;5;215:*.cp=0;38;5;215:*.cr=0;38;5;215:*.cs=0;38;5;215:*.db=1;38;5;203:*.di=0;38;5;215:*.el=0;38;5;215:*.ex=0;38;5;215:*.fs=0;38;5;215:*.go=0;38;5;215:*.gv=0;38;5;215:*.gz=1;38;5;203:*.ha=0;38;5;215:*.hh=0;38;5;215:*.hi=0;38;5;237:*.hs=0;38;5;215:*.jl=0;38;5;215:*.js=0;38;5;215:*.ko=0;38;5;84:*.kt=0;38;5;215:*.la=0;38;5;237:*.ll=0;38;5;215:*.lo=0;38;5;237:*.ma=0;38;5;212:*.mb=0;38;5;212:*.md=0;38;5;215:*.mk=0;38;5;215:*.ml=0;38;5;215:*.mn=0;38;5;215:*.nb=0;38;5;215:*.nu=0;38;5;215:*.pl=0;38;5;215:*.pm=0;38;5;215:*.pp=0;38;5;215:*.ps=0;38;5;215:*.py=0;38;5;215:*.rb=0;38;5;215:*.rm=1;38;5;215:*.rs=0;38;5;215:*.sh=0;38;5;215:*.so=0;38;5;84:*.td=0;38;5;215:*.ts=0;38;5;215:*.ui=0;38;5;215:*.vb=0;38;5;215:*.wv=0;38;5;117:*.xz=1;38;5;203:*FAQ=0;38;5;215:*.3ds=0;38;5;212:*.3fr=0;38;5;212:*.3mf=0;38;5;212:*.adb=0;38;5;215:*.ads=0;38;5;215:*.aif=0;38;5;117:*.amf=0;38;5;212:*.ape=0;38;5;117:*.apk=1;38;5;203:*.ari=0;38;5;212:*.arj=1;38;5;203:*.arw=0;38;5;212:*.asa=0;38;5;215:*.asm=0;38;5;215:*.aux=0;38;5;237:*.avi=1;38;5;215:*.awk=0;38;5;215:*.bag=1;38;5;203:*.bak=0;38;5;237:*.bat=0;38;5;84:*.bay=0;38;5;212:*.bbl=0;38;5;237:*.bcf=0;38;5;237:*.bib=0;38;5;215:*.bin=1;38;5;203:*.blg=0;38;5;237:*.bmp=0;38;5;212:*.bsh=0;38;5;215:*.bst=0;38;5;215:*.bz2=1;38;5;203:*.c++=0;38;5;215:*.cap=0;38;5;212:*.cfg=0;38;5;215:*.cgi=0;38;5;215:*.clj=0;38;5;215:*.com=0;38;5;84:*.cpp=0;38;5;215:*.cr2=0;38;5;212:*.cr3=0;38;5;212:*.crw=0;38;5;212:*.css=0;38;5;215:*.csv=0;38;5;215:*.csx=0;38;5;215:*.cxx=0;38;5;215:*.dae=0;38;5;212:*.dcr=0;38;5;212:*.dcs=0;38;5;212:*.deb=1;38;5;203:*.def=0;38;5;215:*.dll=0;38;5;84:*.dmg=1;38;5;203:*.dng=0;38;5;212:*.doc=0;38;5;215:*.dot=0;38;5;215:*.dox=0;38;5;215:*.dpr=0;38;5;215:*.drf=0;38;5;212:*.dxf=0;38;5;212:*.eip=0;38;5;212:*.elc=0;38;5;215:*.elm=0;38;5;215:*.epp=0;38;5;215:*.eps=0;38;5;212:*.erf=0;38;5;212:*.erl=0;38;5;215:*.exe=0;38;5;84:*.exr=0;38;5;212:*.exs=0;38;5;215:*.fbx=0;38;5;212:*.fff=0;38;5;212:*.fls=0;38;5;237:*.flv=1;38;5;215:*.fnt=0;38;5;215:*.fon=0;38;5;215:*.fsi=0;38;5;215:*.fsx=0;38;5;215:*.gif=0;38;5;212:*.git=0;38;5;237:*.gpr=0;38;5;212:*.gvy=0;38;5;215:*.h++=0;38;5;215:*.hda=0;38;5;212:*.hip=0;38;5;212:*.hpp=0;38;5;215:*.htc=0;38;5;215:*.htm=0;38;5;215:*.hxx=0;38;5;215:*.ico=0;38;5;212:*.ics=0;38;5;215:*.idx=0;38;5;237:*.igs=0;38;5;212:*.iiq=0;38;5;212:*.ilg=0;38;5;237:*.img=1;38;5;203:*.inc=0;38;5;215:*.ind=0;38;5;237:*.ini=0;38;5;215:*.inl=0;38;5;215:*.ino=0;38;5;215:*.ipp=0;38;5;215:*.iso=1;38;5;203:*.jar=1;38;5;203:*.jpg=0;38;5;212:*.jsx=0;38;5;215:*.jxl=0;38;5;212:*.k25=0;38;5;212:*.kdc=0;38;5;212:*.kex=0;38;5;215:*.kra=0;38;5;212:*.kts=0;38;5;215:*.log=0;38;5;237:*.ltx=0;38;5;215:*.lua=0;38;5;215:*.m3u=0;38;5;117:*.m4a=0;38;5;117:*.m4v=1;38;5;215:*.mdc=0;38;5;212:*.mef=0;38;5;212:*.mid=0;38;5;117:*.mir=0;38;5;215:*.mkv=1;38;5;215:*.mli=0;38;5;215:*.mos=0;38;5;212:*.mov=1;38;5;215:*.mp3=0;38;5;117:*.mp4=1;38;5;215:*.mpg=1;38;5;215:*.mrw=0;38;5;212:*.msi=1;38;5;203:*.mtl=0;38;5;212:*.nef=0;38;5;212:*.nim=0;38;5;215:*.nix=0;38;5;215:*.nrw=0;38;5;212:*.obj=0;38;5;212:*.obm=0;38;5;212:*.odp=0;38;5;215:*.ods=0;38;5;215:*.odt=0;38;5;215:*.ogg=0;38;5;117:*.ogv=1;38;5;215:*.orf=0;38;5;212:*.org=0;38;5;215:*.otf=0;38;5;215:*.otl=0;38;5;212:*.out=0;38;5;237:*.pas=0;38;5;215:*.pbm=0;38;5;212:*.pcx=0;38;5;212:*.pdf=0;38;5;215:*.pef=0;38;5;212:*.pgm=0;38;5;212:*.php=0;38;5;215:*.pid=0;38;5;237:*.pkg=1;38;5;203:*.png=0;38;5;212:*.pod=0;38;5;215:*.ppm=0;38;5;212:*.pps=0;38;5;215:*.ppt=0;38;5;215:*.pro=0;38;5;215:*.ps1=0;38;5;215:*.psd=0;38;5;212:*.ptx=0;38;5;212:*.pxn=0;38;5;212:*.pyc=0;38;5;237:*.pyd=0;38;5;237:*.pyo=0;38;5;237:*.qoi=0;38;5;212:*.r3d=0;38;5;212:*.raf=0;38;5;212:*.rar=1;38;5;203:*.raw=0;38;5;212:*.rpm=1;38;5;203:*.rst=0;38;5;215:*.rtf=0;38;5;215:*.rw2=0;38;5;212:*.rwl=0;38;5;212:*.rwz=0;38;5;212:*.sbt=0;38;5;215:*.sql=0;38;5;215:*.sr2=0;38;5;212:*.srf=0;38;5;212:*.srw=0;38;5;212:*.stl=0;38;5;212:*.stp=0;38;5;212:*.sty=0;38;5;237:*.svg=0;38;5;212:*.swf=1;38;5;215:*.swp=0;38;5;237:*.sxi=0;38;5;215:*.sxw=0;38;5;215:*.tar=1;38;5;203:*.tbz=1;38;5;203:*.tcl=0;38;5;215:*.tex=0;38;5;215:*.tga=0;38;5;212:*.tgz=1;38;5;203:*.tif=0;38;5;212:*.tml=0;38;5;215:*.tmp=0;38;5;237:*.toc=0;38;5;237:*.tsx=0;38;5;215:*.ttf=0;38;5;215:*.txt=0;38;5;215:*.typ=0;38;5;215:*.usd=0;38;5;212:*.vcd=1;38;5;203:*.vim=0;38;5;215:*.vob=1;38;5;215:*.vsh=0;38;5;215:*.wav=0;38;5;117:*.wma=0;38;5;117:*.wmv=1;38;5;215:*.wrl=0;38;5;212:*.x3d=0;38;5;212:*.x3f=0;38;5;212:*.xlr=0;38;5;215:*.xls=0;38;5;215:*.xml=0;38;5;215:*.xmp=0;38;5;215:*.xpm=0;38;5;212:*.xvf=0;38;5;212:*.yml=0;38;5;215:*.zig=0;38;5;215:*.zip=1;38;5;203:*.zsh=0;38;5;215:*.zst=1;38;5;203:*TODO=1;38;5;215:*hgrc=0;38;5;215:*.avif=0;38;5;212:*.bash=0;38;5;215:*.braw=0;38;5;212:*.conf=0;38;5;215:*.dart=0;38;5;215:*.data=0;38;5;212:*.diff=0;38;5;215:*.docx=0;38;5;215:*.epub=0;38;5;215:*.fish=0;38;5;215:*.flac=0;38;5;117:*.h264=1;38;5;215:*.hack=0;38;5;215:*.heif=0;38;5;212:*.hgrc=0;38;5;215:*.html=0;38;5;215:*.iges=0;38;5;212:*.info=0;38;5;215:*.java=0;38;5;215:*.jpeg=0;38;5;212:*.json=0;38;5;215:*.less=0;38;5;215:*.lisp=0;38;5;215:*.lock=0;38;5;237:*.make=0;38;5;215:*.mojo=0;38;5;215:*.mpeg=1;38;5;215:*.nims=0;38;5;215:*.opus=0;38;5;117:*.orig=0;38;5;237:*.pptx=0;38;5;215:*.prql=0;38;5;215:*.psd1=0;38;5;215:*.psm1=0;38;5;215:*.purs=0;38;5;215:*.raku=0;38;5;215:*.rlib=0;38;5;237:*.sass=0;38;5;215:*.scad=0;38;5;215:*.scss=0;38;5;215:*.step=0;38;5;212:*.tbz2=1;38;5;203:*.tiff=0;38;5;212:*.toml=0;38;5;215:*.usda=0;38;5;212:*.usdc=0;38;5;212:*.usdz=0;38;5;212:*.webm=1;38;5;215:*.webp=0;38;5;212:*.woff=0;38;5;215:*.xbps=1;38;5;203:*.xlsx=0;38;5;215:*.yaml=0;38;5;215:*stdin=0;38;5;237:*v.mod=0;38;5;215:*.blend=0;38;5;212:*.cabal=0;38;5;215:*.cache=0;38;5;237:*.class=0;38;5;237:*.cmake=0;38;5;215:*.ctags=0;38;5;237:*.dylib=0;38;5;84:*.dyn_o=0;38;5;237:*.gcode=0;38;5;215:*.ipynb=0;38;5;215:*.mdown=0;38;5;215:*.patch=0;38;5;215:*.rmeta=0;38;5;237:*.scala=0;38;5;215:*.shtml=0;38;5;215:*.swift=0;38;5;215:*.toast=1;38;5;203:*.woff2=0;38;5;215:*.xhtml=0;38;5;215:*Icon\r=0;38;5;237:*LEGACY=0;38;5;215:*NOTICE=0;38;5;215:*README=0;38;5;215:*go.mod=0;38;5;215:*go.sum=0;38;5;237:*passwd=0;38;5;215:*shadow=0;38;5;215:*stderr=0;38;5;237:*stdout=0;38;5;237:*.bashrc=0;38;5;215:*.config=0;38;5;215:*.dyn_hi=0;38;5;237:*.flake8=0;38;5;215:*.gradle=0;38;5;215:*.groovy=0;38;5;215:*.ignore=0;38;5;215:*.matlab=0;38;5;215:*.nimble=0;38;5;215:*COPYING=0;38;5;215:*INSTALL=0;38;5;215:*LICENCE=0;38;5;215:*LICENSE=0;38;5;215:*TODO.md=1;38;5;215:*VERSION=0;38;5;215:*.alembic=0;38;5;212:*.desktop=0;38;5;215:*.gemspec=0;38;5;215:*.mailmap=0;38;5;215:*Doxyfile=0;38;5;215:*Makefile=0;38;5;215:*TODO.txt=1;38;5;215:*setup.py=0;38;5;215:*.DS_Store=0;38;5;237:*.cmake.in=0;38;5;215:*.fdignore=0;38;5;215:*.kdevelop=0;38;5;215:*.markdown=0;38;5;215:*.rgignore=0;38;5;215:*.tfignore=0;38;5;215:*CHANGELOG=0;38;5;215:*COPYRIGHT=0;38;5;215:*README.md=0;38;5;215:*bun.lockb=0;38;5;237:*configure=0;38;5;215:*.gitconfig=0;38;5;215:*.gitignore=0;38;5;215:*.localized=0;38;5;237:*.scons_opt=0;38;5;237:*.timestamp=0;38;5;237:*CODEOWNERS=0;38;5;215:*Dockerfile=0;38;5;215:*INSTALL.md=0;38;5;215:*README.txt=0;38;5;215:*SConscript=0;38;5;215:*SConstruct=0;38;5;215:*.cirrus.yml=0;38;5;215:*.gitmodules=0;38;5;215:*.synctex.gz=0;38;5;237:*.travis.yml=0;38;5;215:*INSTALL.txt=0;38;5;215:*LICENSE-MIT=0;38;5;215:*MANIFEST.in=0;38;5;215:*Makefile.am=0;38;5;215:*Makefile.in=0;38;5;237:*.applescript=0;38;5;215:*.fdb_latexmk=0;38;5;237:*.webmanifest=0;38;5;215:*CHANGELOG.md=0;38;5;215:*CONTRIBUTING=0;38;5;215:*CONTRIBUTORS=0;38;5;215:*appveyor.yml=0;38;5;215:*configure.ac=0;38;5;215:*.bash_profile=0;38;5;215:*.clang-format=0;38;5;215:*.editorconfig=0;38;5;215:*CHANGELOG.txt=0;38;5;215:*.gitattributes=0;38;5;215:*.gitlab-ci.yml=0;38;5;215:*CMakeCache.txt=0;38;5;237:*CMakeLists.txt=0;38;5;215:*LICENSE-APACHE=0;38;5;215:*pyproject.toml=0;38;5;215:*CODE_OF_CONDUCT=0;38;5;215:*CONTRIBUTING.md=0;38;5;215:*CONTRIBUTORS.md=0;38;5;215:*.sconsign.dblite=0;38;5;237:*CONTRIBUTING.txt=0;38;5;215:*CONTRIBUTORS.txt=0;38;5;215:*requirements.txt=0;38;5;215:*package-lock.json=0;38;5;237:*CODE_OF_CONDUCT.md=0;38;5;215:*.CFUserTextEncoding=0;38;5;237:*CODE_OF_CONDUCT.txt=0;38;5;215:*azure-pipelines.yml=0;38;5;215"

# 24-bit colors
#export LS_COLORS="*~=0;38;2;58;60;78:bd=1;38;2;241;250;140;48;2;40;42;54:ca=0:cd=1;38;2;241;250;140;48;2;40;42;54:di=0;38;2;189;147;249:do=1;38;2;255;121;198;48;2;40;42;54:ex=0;38;2;80;250;123:fi=0;38;2;248;248;242:ln=0;38;2;139;233;253:mh=0:mi=0;38;2;255;85;85;48;2;40;42;54:no=0;38;2;248;248;242:or=1;38;2;255;85;85;48;2;40;42;54:ow=0;38;2;189;147;249;48;2;80;250;123:pi=0;38;2;241;250;140;48;2;40;42;54:rs=0;38;2;255;184;108:sg=0;38;2;40;42;54;48;2;241;250;140:so=1;38;2;255;121;198;48;2;40;42;54:st=0;38;2;248;248;242;48;2;189;147;249:su=0;38;2;248;248;242;48;2;255;85;85:tw=0;38;2;40;42;54;48;2;80;250;123:*.1=0;38;2;255;184;108:*.a=0;38;2;80;250;123:*.c=0;38;2;255;184;108:*.d=0;38;2;255;184;108:*.h=0;38;2;255;184;108:*.m=0;38;2;255;184;108:*.o=0;38;2;58;60;78:*.p=0;38;2;255;184;108:*.r=0;38;2;255;184;108:*.t=0;38;2;255;184;108:*.v=0;38;2;255;184;108:*.z=1;38;2;255;85;85:*.7z=1;38;2;255;85;85:*.ai=0;38;2;255;121;198:*.as=0;38;2;255;184;108:*.bc=0;38;2;58;60;78:*.bz=1;38;2;255;85;85:*.cc=0;38;2;255;184;108:*.cp=0;38;2;255;184;108:*.cr=0;38;2;255;184;108:*.cs=0;38;2;255;184;108:*.db=1;38;2;255;85;85:*.di=0;38;2;255;184;108:*.el=0;38;2;255;184;108:*.ex=0;38;2;255;184;108:*.fs=0;38;2;255;184;108:*.go=0;38;2;255;184;108:*.gv=0;38;2;255;184;108:*.gz=1;38;2;255;85;85:*.ha=0;38;2;255;184;108:*.hh=0;38;2;255;184;108:*.hi=0;38;2;58;60;78:*.hs=0;38;2;255;184;108:*.jl=0;38;2;255;184;108:*.js=0;38;2;255;184;108:*.ko=0;38;2;80;250;123:*.kt=0;38;2;255;184;108:*.la=0;38;2;58;60;78:*.ll=0;38;2;255;184;108:*.lo=0;38;2;58;60;78:*.ma=0;38;2;255;121;198:*.mb=0;38;2;255;121;198:*.md=0;38;2;255;184;108:*.mk=0;38;2;255;184;108:*.ml=0;38;2;255;184;108:*.mn=0;38;2;255;184;108:*.nb=0;38;2;255;184;108:*.nu=0;38;2;255;184;108:*.pl=0;38;2;255;184;108:*.pm=0;38;2;255;184;108:*.pp=0;38;2;255;184;108:*.ps=0;38;2;255;184;108:*.py=0;38;2;255;184;108:*.rb=0;38;2;255;184;108:*.rm=1;38;2;255;184;108:*.rs=0;38;2;255;184;108:*.sh=0;38;2;255;184;108:*.so=0;38;2;80;250;123:*.td=0;38;2;255;184;108:*.ts=0;38;2;255;184;108:*.ui=0;38;2;255;184;108:*.vb=0;38;2;255;184;108:*.wv=0;38;2;139;233;253:*.xz=1;38;2;255;85;85:*FAQ=0;38;2;255;184;108:*.3ds=0;38;2;255;121;198:*.3fr=0;38;2;255;121;198:*.3mf=0;38;2;255;121;198:*.adb=0;38;2;255;184;108:*.ads=0;38;2;255;184;108:*.aif=0;38;2;139;233;253:*.amf=0;38;2;255;121;198:*.ape=0;38;2;139;233;253:*.apk=1;38;2;255;85;85:*.ari=0;38;2;255;121;198:*.arj=1;38;2;255;85;85:*.arw=0;38;2;255;121;198:*.asa=0;38;2;255;184;108:*.asm=0;38;2;255;184;108:*.aux=0;38;2;58;60;78:*.avi=1;38;2;255;184;108:*.awk=0;38;2;255;184;108:*.bag=1;38;2;255;85;85:*.bak=0;38;2;58;60;78:*.bat=0;38;2;80;250;123:*.bay=0;38;2;255;121;198:*.bbl=0;38;2;58;60;78:*.bcf=0;38;2;58;60;78:*.bib=0;38;2;255;184;108:*.bin=1;38;2;255;85;85:*.blg=0;38;2;58;60;78:*.bmp=0;38;2;255;121;198:*.bsh=0;38;2;255;184;108:*.bst=0;38;2;255;184;108:*.bz2=1;38;2;255;85;85:*.c++=0;38;2;255;184;108:*.cap=0;38;2;255;121;198:*.cfg=0;38;2;255;184;108:*.cgi=0;38;2;255;184;108:*.clj=0;38;2;255;184;108:*.com=0;38;2;80;250;123:*.cpp=0;38;2;255;184;108:*.cr2=0;38;2;255;121;198:*.cr3=0;38;2;255;121;198:*.crw=0;38;2;255;121;198:*.css=0;38;2;255;184;108:*.csv=0;38;2;255;184;108:*.csx=0;38;2;255;184;108:*.cxx=0;38;2;255;184;108:*.dae=0;38;2;255;121;198:*.dcr=0;38;2;255;121;198:*.dcs=0;38;2;255;121;198:*.deb=1;38;2;255;85;85:*.def=0;38;2;255;184;108:*.dll=0;38;2;80;250;123:*.dmg=1;38;2;255;85;85:*.dng=0;38;2;255;121;198:*.doc=0;38;2;255;184;108:*.dot=0;38;2;255;184;108:*.dox=0;38;2;255;184;108:*.dpr=0;38;2;255;184;108:*.drf=0;38;2;255;121;198:*.dxf=0;38;2;255;121;198:*.eip=0;38;2;255;121;198:*.elc=0;38;2;255;184;108:*.elm=0;38;2;255;184;108:*.epp=0;38;2;255;184;108:*.eps=0;38;2;255;121;198:*.erf=0;38;2;255;121;198:*.erl=0;38;2;255;184;108:*.exe=0;38;2;80;250;123:*.exr=0;38;2;255;121;198:*.exs=0;38;2;255;184;108:*.fbx=0;38;2;255;121;198:*.fff=0;38;2;255;121;198:*.fls=0;38;2;58;60;78:*.flv=1;38;2;255;184;108:*.fnt=0;38;2;255;184;108:*.fon=0;38;2;255;184;108:*.fsi=0;38;2;255;184;108:*.fsx=0;38;2;255;184;108:*.gif=0;38;2;255;121;198:*.git=0;38;2;58;60;78:*.gpr=0;38;2;255;121;198:*.gvy=0;38;2;255;184;108:*.h++=0;38;2;255;184;108:*.hda=0;38;2;255;121;198:*.hip=0;38;2;255;121;198:*.hpp=0;38;2;255;184;108:*.htc=0;38;2;255;184;108:*.htm=0;38;2;255;184;108:*.hxx=0;38;2;255;184;108:*.ico=0;38;2;255;121;198:*.ics=0;38;2;255;184;108:*.idx=0;38;2;58;60;78:*.igs=0;38;2;255;121;198:*.iiq=0;38;2;255;121;198:*.ilg=0;38;2;58;60;78:*.img=1;38;2;255;85;85:*.inc=0;38;2;255;184;108:*.ind=0;38;2;58;60;78:*.ini=0;38;2;255;184;108:*.inl=0;38;2;255;184;108:*.ino=0;38;2;255;184;108:*.ipp=0;38;2;255;184;108:*.iso=1;38;2;255;85;85:*.jar=1;38;2;255;85;85:*.jpg=0;38;2;255;121;198:*.jsx=0;38;2;255;184;108:*.jxl=0;38;2;255;121;198:*.k25=0;38;2;255;121;198:*.kdc=0;38;2;255;121;198:*.kex=0;38;2;255;184;108:*.kra=0;38;2;255;121;198:*.kts=0;38;2;255;184;108:*.log=0;38;2;58;60;78:*.ltx=0;38;2;255;184;108:*.lua=0;38;2;255;184;108:*.m3u=0;38;2;139;233;253:*.m4a=0;38;2;139;233;253:*.m4v=1;38;2;255;184;108:*.mdc=0;38;2;255;121;198:*.mef=0;38;2;255;121;198:*.mid=0;38;2;139;233;253:*.mir=0;38;2;255;184;108:*.mkv=1;38;2;255;184;108:*.mli=0;38;2;255;184;108:*.mos=0;38;2;255;121;198:*.mov=1;38;2;255;184;108:*.mp3=0;38;2;139;233;253:*.mp4=1;38;2;255;184;108:*.mpg=1;38;2;255;184;108:*.mrw=0;38;2;255;121;198:*.msi=1;38;2;255;85;85:*.mtl=0;38;2;255;121;198:*.nef=0;38;2;255;121;198:*.nim=0;38;2;255;184;108:*.nix=0;38;2;255;184;108:*.nrw=0;38;2;255;121;198:*.obj=0;38;2;255;121;198:*.obm=0;38;2;255;121;198:*.odp=0;38;2;255;184;108:*.ods=0;38;2;255;184;108:*.odt=0;38;2;255;184;108:*.ogg=0;38;2;139;233;253:*.ogv=1;38;2;255;184;108:*.orf=0;38;2;255;121;198:*.org=0;38;2;255;184;108:*.otf=0;38;2;255;184;108:*.otl=0;38;2;255;121;198:*.out=0;38;2;58;60;78:*.pas=0;38;2;255;184;108:*.pbm=0;38;2;255;121;198:*.pcx=0;38;2;255;121;198:*.pdf=0;38;2;255;184;108:*.pef=0;38;2;255;121;198:*.pgm=0;38;2;255;121;198:*.php=0;38;2;255;184;108:*.pid=0;38;2;58;60;78:*.pkg=1;38;2;255;85;85:*.png=0;38;2;255;121;198:*.pod=0;38;2;255;184;108:*.ppm=0;38;2;255;121;198:*.pps=0;38;2;255;184;108:*.ppt=0;38;2;255;184;108:*.pro=0;38;2;255;184;108:*.ps1=0;38;2;255;184;108:*.psd=0;38;2;255;121;198:*.ptx=0;38;2;255;121;198:*.pxn=0;38;2;255;121;198:*.pyc=0;38;2;58;60;78:*.pyd=0;38;2;58;60;78:*.pyo=0;38;2;58;60;78:*.qoi=0;38;2;255;121;198:*.r3d=0;38;2;255;121;198:*.raf=0;38;2;255;121;198:*.rar=1;38;2;255;85;85:*.raw=0;38;2;255;121;198:*.rpm=1;38;2;255;85;85:*.rst=0;38;2;255;184;108:*.rtf=0;38;2;255;184;108:*.rw2=0;38;2;255;121;198:*.rwl=0;38;2;255;121;198:*.rwz=0;38;2;255;121;198:*.sbt=0;38;2;255;184;108:*.sql=0;38;2;255;184;108:*.sr2=0;38;2;255;121;198:*.srf=0;38;2;255;121;198:*.srw=0;38;2;255;121;198:*.stl=0;38;2;255;121;198:*.stp=0;38;2;255;121;198:*.sty=0;38;2;58;60;78:*.svg=0;38;2;255;121;198:*.swf=1;38;2;255;184;108:*.swp=0;38;2;58;60;78:*.sxi=0;38;2;255;184;108:*.sxw=0;38;2;255;184;108:*.tar=1;38;2;255;85;85:*.tbz=1;38;2;255;85;85:*.tcl=0;38;2;255;184;108:*.tex=0;38;2;255;184;108:*.tga=0;38;2;255;121;198:*.tgz=1;38;2;255;85;85:*.tif=0;38;2;255;121;198:*.tml=0;38;2;255;184;108:*.tmp=0;38;2;58;60;78:*.toc=0;38;2;58;60;78:*.tsx=0;38;2;255;184;108:*.ttf=0;38;2;255;184;108:*.txt=0;38;2;255;184;108:*.typ=0;38;2;255;184;108:*.usd=0;38;2;255;121;198:*.vcd=1;38;2;255;85;85:*.vim=0;38;2;255;184;108:*.vob=1;38;2;255;184;108:*.vsh=0;38;2;255;184;108:*.wav=0;38;2;139;233;253:*.wma=0;38;2;139;233;253:*.wmv=1;38;2;255;184;108:*.wrl=0;38;2;255;121;198:*.x3d=0;38;2;255;121;198:*.x3f=0;38;2;255;121;198:*.xlr=0;38;2;255;184;108:*.xls=0;38;2;255;184;108:*.xml=0;38;2;255;184;108:*.xmp=0;38;2;255;184;108:*.xpm=0;38;2;255;121;198:*.xvf=0;38;2;255;121;198:*.yml=0;38;2;255;184;108:*.zig=0;38;2;255;184;108:*.zip=1;38;2;255;85;85:*.zsh=0;38;2;255;184;108:*.zst=1;38;2;255;85;85:*TODO=1;38;2;255;184;108:*hgrc=0;38;2;255;184;108:*.avif=0;38;2;255;121;198:*.bash=0;38;2;255;184;108:*.braw=0;38;2;255;121;198:*.conf=0;38;2;255;184;108:*.dart=0;38;2;255;184;108:*.data=0;38;2;255;121;198:*.diff=0;38;2;255;184;108:*.docx=0;38;2;255;184;108:*.epub=0;38;2;255;184;108:*.fish=0;38;2;255;184;108:*.flac=0;38;2;139;233;253:*.h264=1;38;2;255;184;108:*.hack=0;38;2;255;184;108:*.heif=0;38;2;255;121;198:*.hgrc=0;38;2;255;184;108:*.html=0;38;2;255;184;108:*.iges=0;38;2;255;121;198:*.info=0;38;2;255;184;108:*.java=0;38;2;255;184;108:*.jpeg=0;38;2;255;121;198:*.json=0;38;2;255;184;108:*.less=0;38;2;255;184;108:*.lisp=0;38;2;255;184;108:*.lock=0;38;2;58;60;78:*.make=0;38;2;255;184;108:*.mojo=0;38;2;255;184;108:*.mpeg=1;38;2;255;184;108:*.nims=0;38;2;255;184;108:*.opus=0;38;2;139;233;253:*.orig=0;38;2;58;60;78:*.pptx=0;38;2;255;184;108:*.prql=0;38;2;255;184;108:*.psd1=0;38;2;255;184;108:*.psm1=0;38;2;255;184;108:*.purs=0;38;2;255;184;108:*.raku=0;38;2;255;184;108:*.rlib=0;38;2;58;60;78:*.sass=0;38;2;255;184;108:*.scad=0;38;2;255;184;108:*.scss=0;38;2;255;184;108:*.step=0;38;2;255;121;198:*.tbz2=1;38;2;255;85;85:*.tiff=0;38;2;255;121;198:*.toml=0;38;2;255;184;108:*.usda=0;38;2;255;121;198:*.usdc=0;38;2;255;121;198:*.usdz=0;38;2;255;121;198:*.webm=1;38;2;255;184;108:*.webp=0;38;2;255;121;198:*.woff=0;38;2;255;184;108:*.xbps=1;38;2;255;85;85:*.xlsx=0;38;2;255;184;108:*.yaml=0;38;2;255;184;108:*stdin=0;38;2;58;60;78:*v.mod=0;38;2;255;184;108:*.blend=0;38;2;255;121;198:*.cabal=0;38;2;255;184;108:*.cache=0;38;2;58;60;78:*.class=0;38;2;58;60;78:*.cmake=0;38;2;255;184;108:*.ctags=0;38;2;58;60;78:*.dylib=0;38;2;80;250;123:*.dyn_o=0;38;2;58;60;78:*.gcode=0;38;2;255;184;108:*.ipynb=0;38;2;255;184;108:*.mdown=0;38;2;255;184;108:*.patch=0;38;2;255;184;108:*.rmeta=0;38;2;58;60;78:*.scala=0;38;2;255;184;108:*.shtml=0;38;2;255;184;108:*.swift=0;38;2;255;184;108:*.toast=1;38;2;255;85;85:*.woff2=0;38;2;255;184;108:*.xhtml=0;38;2;255;184;108:*Icon\r=0;38;2;58;60;78:*LEGACY=0;38;2;255;184;108:*NOTICE=0;38;2;255;184;108:*README=0;38;2;255;184;108:*go.mod=0;38;2;255;184;108:*go.sum=0;38;2;58;60;78:*passwd=0;38;2;255;184;108:*shadow=0;38;2;255;184;108:*stderr=0;38;2;58;60;78:*stdout=0;38;2;58;60;78:*.bashrc=0;38;2;255;184;108:*.config=0;38;2;255;184;108:*.dyn_hi=0;38;2;58;60;78:*.flake8=0;38;2;255;184;108:*.gradle=0;38;2;255;184;108:*.groovy=0;38;2;255;184;108:*.ignore=0;38;2;255;184;108:*.matlab=0;38;2;255;184;108:*.nimble=0;38;2;255;184;108:*COPYING=0;38;2;255;184;108:*INSTALL=0;38;2;255;184;108:*LICENCE=0;38;2;255;184;108:*LICENSE=0;38;2;255;184;108:*TODO.md=1;38;2;255;184;108:*VERSION=0;38;2;255;184;108:*.alembic=0;38;2;255;121;198:*.desktop=0;38;2;255;184;108:*.gemspec=0;38;2;255;184;108:*.mailmap=0;38;2;255;184;108:*Doxyfile=0;38;2;255;184;108:*Makefile=0;38;2;255;184;108:*TODO.txt=1;38;2;255;184;108:*setup.py=0;38;2;255;184;108:*.DS_Store=0;38;2;58;60;78:*.cmake.in=0;38;2;255;184;108:*.fdignore=0;38;2;255;184;108:*.kdevelop=0;38;2;255;184;108:*.markdown=0;38;2;255;184;108:*.rgignore=0;38;2;255;184;108:*.tfignore=0;38;2;255;184;108:*CHANGELOG=0;38;2;255;184;108:*COPYRIGHT=0;38;2;255;184;108:*README.md=0;38;2;255;184;108:*bun.lockb=0;38;2;58;60;78:*configure=0;38;2;255;184;108:*.gitconfig=0;38;2;255;184;108:*.gitignore=0;38;2;255;184;108:*.localized=0;38;2;58;60;78:*.scons_opt=0;38;2;58;60;78:*.timestamp=0;38;2;58;60;78:*CODEOWNERS=0;38;2;255;184;108:*Dockerfile=0;38;2;255;184;108:*INSTALL.md=0;38;2;255;184;108:*README.txt=0;38;2;255;184;108:*SConscript=0;38;2;255;184;108:*SConstruct=0;38;2;255;184;108:*.cirrus.yml=0;38;2;255;184;108:*.gitmodules=0;38;2;255;184;108:*.synctex.gz=0;38;2;58;60;78:*.travis.yml=0;38;2;255;184;108:*INSTALL.txt=0;38;2;255;184;108:*LICENSE-MIT=0;38;2;255;184;108:*MANIFEST.in=0;38;2;255;184;108:*Makefile.am=0;38;2;255;184;108:*Makefile.in=0;38;2;58;60;78:*.applescript=0;38;2;255;184;108:*.fdb_latexmk=0;38;2;58;60;78:*.webmanifest=0;38;2;255;184;108:*CHANGELOG.md=0;38;2;255;184;108:*CONTRIBUTING=0;38;2;255;184;108:*CONTRIBUTORS=0;38;2;255;184;108:*appveyor.yml=0;38;2;255;184;108:*configure.ac=0;38;2;255;184;108:*.bash_profile=0;38;2;255;184;108:*.clang-format=0;38;2;255;184;108:*.editorconfig=0;38;2;255;184;108:*CHANGELOG.txt=0;38;2;255;184;108:*.gitattributes=0;38;2;255;184;108:*.gitlab-ci.yml=0;38;2;255;184;108:*CMakeCache.txt=0;38;2;58;60;78:*CMakeLists.txt=0;38;2;255;184;108:*LICENSE-APACHE=0;38;2;255;184;108:*pyproject.toml=0;38;2;255;184;108:*CODE_OF_CONDUCT=0;38;2;255;184;108:*CONTRIBUTING.md=0;38;2;255;184;108:*CONTRIBUTORS.md=0;38;2;255;184;108:*.sconsign.dblite=0;38;2;58;60;78:*CONTRIBUTING.txt=0;38;2;255;184;108:*CONTRIBUTORS.txt=0;38;2;255;184;108:*requirements.txt=0;38;2;255;184;108:*package-lock.json=0;38;2;58;60;78:*CODE_OF_CONDUCT.md=0;38;2;255;184;108:*.CFUserTextEncoding=0;38;2;58;60;78:*CODE_OF_CONDUCT.txt=0;38;2;255;184;108:*azure-pipelines.yml=0;38;2;255;184;108"
