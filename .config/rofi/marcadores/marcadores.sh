#!/usr/bin/env bash
# BROWSER="firefox -private-window"
# BROWSER="vivaldi-stable"
# BROWSER="vivaldi-stable -incognito"
# BROWSER="waterfox -private-window"
BROWSER="/opt/waterfox/waterfox -private-window"

declare -a paginas=(
"IA https://duckduckgo.com/?q=DuckDuckGo+AI+Chat&ia=chat&duckai=1"
"TRADUCTOR https://translate.google.com.ar/?hl=es"
"GOOGLE MAPS https://www.google.com/maps"
"ARCH LINUX https://archlinux.org/"
"HYPRLAND https://wiki.hyprland.org/"
"JKANIME https://jkanime.net/"
"PANDRAMA https://pandrama.app"
"DORAMASMP4 https://doramasmp4.io"
"HTML COLOR https://htmlcolorcodes.com/es/"
"VICTORHACK https://victorhck.gitbook.io/aprende-vim/cap28_ambito_variables_vimscript"
"SED 4.3 https://www.gnu.org/software/sed/manual/sed.html"
"EDITOR REGISTRO WINDOWS https://norfipc.com/registro/index.html"
"CURSO GOBIERNO https://agenciadeaprendizaje.bue.edu.ar/cursos/page/2/"
"GEEKLAND https://geekland.eu/indice/"
"https://www.tiktok.com/@abrilmilagros2626"
"https://www.tiktok.com/@tatiana_dancerr"
"https://www.tiktok.com/@afortunaada"
"salir"
)

declare -a youtube=(
"  PROFE SANTIAGO INFO https://www.youtube.com/c/ProfeSantiago64/videos"
"  WINDESA INFO https://www.youtube.com/@WindowsDesatendidos/videos"
"  NICKJANETAKIS INFO LXL https://www.youtube.com/@NickJanetakis/videos"
"  FABIOAKITA INFO https://www.youtube.com/watch?v=85k8se4Zo70&ab_channel=FabioAkita"
"  TUTOSPC LXL https://www.youtube.com/@TutosPCyoutube/videos"
"  LACHICADESISTEMAS LXL https://www.youtube.com/@lachicadesistemas/videos"
"  LOCOSPORLINUX LXL https://www.youtube.com/@LocosporLinux/videos"
"  PELADONERD LXL https://www.youtube.com/@PeladoNerd/videos"
"  PINGU CBS https://www.youtube.com/@ElPinguinoDeMario/videos"
"  LINUXENCASA LXL https://www.youtube.com/c/LinuxenCasa"
"  RED MARIO LXL https://www.youtube.com/@LareddeMario/videos"
"  EDUCAMPS INFO https://www.youtube.com/@EduCampsYT/videos"
"  PABLO MARTINEZ WIN https://www.youtube.com/@PabloMartinezSoporteTi/playlists"
"  LASTDRAGON LXL https://www.youtube.com/c/LacuevadelultimodragonLastDragon/videos"
"  ALPHA PROG https://www.youtube.com/@Alpha_Dev/videos"
"  EVIL LXL https://www.youtube.com/@Theevilland3000/videos"
"  BITBOSS INFO https://www.youtube.com/@BitBoss/videos"
"  LUA1 CHARLIE L https://www.youtube.com/watch?v=Y2iqRZ4EYbk"
"  LUA2 ARTUROFILIOVILLA https://www.youtube.com/watch?v=zy5rXnrdZ74"
"  LUA CURSO https://www.youtube.com/watch?v=Og2BZ0c-gtk&list=PLZKvFeoJSjNnpuiy_ez9PylW8neFp2-gA&index=6&ab_channel=MiguelHernandezLiebano"
"  OTRODSISTEM PROG https://www.youtube.com/watch?v=P1Zw0gywq80&ab_channel=otrom%C3%A1sdesistemas"
"  SEBEK LXL https://www.youtube.com/@DeNoobAProEnLinux/videos"
"  REPROMOD ELECT https://www.youtube.com/@repromod/videos"
"  REPRO REPARACIONES ELECT https://www.youtube.com/watch?v=5VpVmYbV0lg&list=PLHkxPC0jicIFWX4Nhm7lFMDDthYhnFT4x&index=85"
"  ELCTGPL https://www.youtube.com/@electgpl/videos"
"  METADATAVE ELECT https://www.youtube.com/channel/UC5f3eCXyxsqadRHzTeZSdZw/videos"
"  PRACTICAS DE ELECTRONICA ELECT https://www.youtube.com/@PracticasdeElectronica/search?query=medir"
"  ACADENAS ELECT https://www.youtube.com/c/acadenas/videos"
"  MOVILONE ELECT https://www.youtube.com/c/MovilOne/playlists"
"  MENTALIDAD DE INGENIERÍA ELECT https://www.youtube.com/c/MentalidadDeIngenier%C3%ADa/videos"
"  EDITRONIKX ELECT https://www.youtube.com/watch?v=LjYClvMPRdE"
"  CONOCIENDOLINUX LXL https://www.youtube.com/c/ConociendoLinux/videos"
"  SYSBERADS INFO https://www.youtube.com/@SysBeards/videos"
"  ENTROPIABINARIA LXL https://www.youtube.com/c/Entrop%C3%ADabinaria/videos"
"  DALTO PROG https://www.youtube.com/@soydalto/videos"
"  DALTOPYTHON PROG https://www.youtube.com/watch?v=nKPbfIU442g"
"  PYTHON ROELCODE PROG https://www.youtube.com/watch?v=_NG3bSXLRzs"
"  PROGRAMACIONDESDE0 PROG https://www.youtube.com/watch?v=PBChlAXf1j0&list=PLb_E6BNMg5j7-MJ0ctjvKQlv2PU7qbMDb"
"  SOLO PYTHON ERIC PROG https://www.youtube.com/watch?v=ppz1e_ceeIw"
"  TODOCODE PROG https://www.youtube.com/@TodoCode/videos"
"  TODOCODE POO PROG https://www.youtube.com/watch?v=tcza2FEz4u4&list=PLQxX2eiEaqbwNP20GMMCjRslRq2lOLWlg"
"  TODOCODE CSS PROG https://www.youtube.com/watch?v=vKi9XI3Ya7s&list=PLQxX2eiEaqbw7lsosVOlAcZBqHPEPO5dc"
"  IOSONOMAURI PROG https://www.youtube.com/watch?v=6Djzt8h0YWI"
"  LUCAS MOY PROG https://www.youtube.com/@atl.academy/videos"
"  IQANANSOFT SCR https://www.youtube.com/@iqanansoft/videos"
"  IQANANSOFT SCR https://www.youtube.com/watch?v=klYFGZael9g&list=PLl3e2sVWjZE3cfN_IVqw9wG8VvMx1V1do"
"  JOSÉ LUIS GARCÍA MARTÍNEZ SCR https://www.youtube.com/watch?v=uDIGRSYE8PI"
"  JOSE LUIS CALVO SCR https://www.youtube.com/watch?v=fCbuFQT7KVo&list=PL1o7flGIFRb3KdvtL9YVPCkm4rqkqgHNi&index=1"
"  SOLO PYTHON CBS https://www.youtube.com/watch?v=bquM3077ljk&list=PLFRKQL-FSrHIgob25HRift5VJANZSxjH8"
"  Agrawain CBS https://www.youtube.com/watch?v=MG4i6GOeWPU&list=PLPEJ2VwKBGeLXsqPz256f3IOCryWA-MhI&index=3"
"  DEB0o CBS https://www.youtube.com/watch?v=ag1A9qmRQ10"
"  DAVID PEREIRA CBS https://www.youtube.com/c/DavidPereira/videos"
"  ALONSOCABALLERO CBS https://www.youtube.com/c/AlonsoCaballero/videos"
"  VIRSH INFO https://www.youtube.com/watch?v=HKq1Z7ZgFRA"
"  GOTBLETU LXL https://www.youtube.com/c/gotbletu/videos"
"  PELYCHANNEL LXL https://www.youtube.com/@PelyChannel/playlists"
"  AULA CLICK ADMIN https://www.youtube.com/watch?v=BrqH4PVyYF4&list=PLomN84AdULIBcoI8Rb98dnompliIktJk9"
"  SYSADMIT ADMIN https://www.youtube.com/c/SYSADMIT/videos"
"  MRWHITEBP ADMIN https://www.youtube.com/user/mrwhitebp/videos"
"  FIDELDOMINGUEZVALERO ADMIN https://www.youtube.com/c/FidelDominguezValero/videos"
"  NASEROS ADMIN https://www.youtube.com/watch?v=um41JAqO42g&list=PLSvxAUzJ-XSfY0KpwV8SHBlyLVcrZkENc"
"  TUTORIP INFO https://www.youtube.com/user/TutorIP/videos"
"  DT REPO PROPIO INFO https://www.youtube.com/watch?v=CYqd2AHXosk"
"  VLC INFO https://www.youtube.com/watch?v=E31t2u1zDhw&list=PLREUv47U9HKYM63i737jrPB80H9Azxv6D&index=6"
"  DIARIO LINUX LXL https://www.youtube.com/channel/UC3xygB0WkaYoUbi1E9xvDoA/videos"
"  VIMYLATEX INFO https://www.youtube.com/c/VimyLaTeXenespa%C3%B1ol/videos"
"  LEARN LINUX LXL https://www.youtube.com/channel/UCX2iwQSI2zGulmMFXHIxfgA/videos"
"  ABDULLAH LXL https://www.youtube.com/c/AbdullahToday/search?query=bspwm"
"  PROTESILAOS LXL https://www.youtube.com/c/ProtesilaosStavrou/videos"
"  BUDLABS LXL https://www.youtube.com/c/dubbeltumme/search?query=rofi"
"  JAKE LINUX LXL https://www.youtube.com/c/JakeLinux/videos"
"  WINDOWS TUTOS INFO https://www.youtube.com/c/gvideosmtutorialesgm/videos"
"  SSH INFO https://www.youtube.com/watch?v=XwfvCJaHrCc"
"  DOCKER DFBASTIDAS INFO https://www.youtube.com/watch?v=JXZXVPRtyiM&list=PLDbrnXa6SAzWqcDK9DP9MPOLVtGcDNW7I&index=8"
"salir"
)

# Función para abrir el navegador con las URLs seleccionadas
abrir_navegador() {
  local opciones="$1"
  while read -r opcion; do
    # Obtener la última palabra de la opción, que contiene la URL
    mostrar=$(echo "$opcion" | awk '{print $NF}')
    # Abrir el navegador con la URL correspondiente
    $BROWSER "$mostrar" &
  done <<< "$opciones"
}

# Verificar si se pasó un argumento
if [[ "$1" == "youtube" ]]; then
  # Obtener la selección de opciones de YouTube
  opciones_youtube=$(printf '%s\n' "${youtube[@]}" | rofi -dmenu -i -multi-select -p "Marcadores YouTube >" -theme /$HOME/.config/rofi/temas/marcadores.rasi)
  
  # Verificar si se seleccionó una opción válida
  if [[ -n "$opciones_youtube" && "$opciones_youtube" != "salir" ]]; then
    abrir_navegador "$opciones_youtube"
  fi
else
  # Obtener la selección de páginas usando Rofi
  opciones=$(printf '%s\n' "${paginas[@]}" | rofi -dmenu -i -multi-select -p "Marcadores >" -theme /$HOME/.config/rofi/temas/marcadores.rasi)

  # Verificar si se seleccionó una opción válida
  if [[ -n "$opciones" && "$opciones" != "salir" ]]; then
    abrir_navegador "$opciones"
  fi
fi
