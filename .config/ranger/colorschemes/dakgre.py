# ██████╗  █████╗ ██╗  ██╗ ██████╗ ██████╗ ███████╗   ██████╗ ██╗   ██╗
# ██╔══██╗██╔══██╗██║ ██╔╝██╔════╝ ██╔══██╗██╔════╝   ██╔══██╗╚██╗ ██╔╝
# ██║  ██║███████║█████╔╝ ██║  ███╗██████╔╝█████╗     ██████╔╝ ╚████╔╝ 
# ██║  ██║██╔══██║██╔═██╗ ██║   ██║██╔══██╗██╔══╝     ██╔═══╝   ╚██╔╝  
# ██████╔╝██║  ██║██║  ██╗╚██████╔╝██║  ██║███████╗██╗██║        ██║   
# ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝╚═╝        ╚═╝



from __future__ import absolute_import, division, print_function

from ranger.gui.colorscheme import ColorScheme
from ranger.gui.color import (
    black,	
    white,	
    blue,	
    red,	
    green,	
    yellow,	
    magenta,	
    default,
    normal,
    bold,
    reverse,
    default_colors,
)


class dakgre(ColorScheme):
    progress_bar_color = 238

    def verify_browser(self, context, fg, bg, attr):
        if context.selected:
            attr = reverse
        else:
            attr = normal
        if context.empty or context.error:
            bg = 8
            fg = 1
        if context.border:
            fg = 8
        if context.document:
            attr |= normal
            fg = 7
        if context.media:
            if context.image:
                attr |= normal
                fg = 3
            elif context.video:
                fg = 196
            elif context.audio:
                fg = 219
            else:
                fg = 219
        if context.container:
            attr |= bold
            fg = 9
        if context.directory:
            attr |= bold
            fg = 125
           # bg = 20
        elif context.executable and not any(
            (context.media, context.container, context.fifo, context.socket)
        ):
            attr |= bold
            fg = 2
        if context.socket:
            fg = 5
            attr |= bold
        if context.fifo or context.device:
            fg = 3
            if context.device:
                attr |= bold
        if context.link:
            fg = 6 if context.good else 13
        if context.tag_marker and not context.selected:
            attr |= bold
            if fg in (197, 90):
                fg = 1
            else:
                fg = 15
        if not context.selected and (context.cut or context.copied):
            fg = 216
            attr |= bold
        if context.main_column:
            if context.selected:
                attr |= bold
                fg = 238
                bg = 196
            if context.marked:
                attr |= bold
                fg = 221
                bg = 8
        if context.badinfo:
            if attr & reverse:
                bg = 254
            else:
                fg = 201

        if context.inactive_pane:
            fg = 247
            bg = 243
            attr |= bold

        return fg, bg, attr

    def verify_titlebar(self, context, fg, bg, attr):
        attr |= bold
        if context.hostname:
            fg = 35 
        elif context.directory:
            fg = 161
        elif context.tab:
            if context.good:
                fg = 220
                bg = 8
        elif context.link:
                fg = 220
                bg = 8

        return fg, bg, attr

    def verify_statusbar(self, context, fg, bg, attr):
        if context.permissions:
            if context.good:
                fg = 10
                bg = 16
            elif context.bad:
                bg = 16
                fg = 196
        if context.marked:
            attr |= bold | reverse
            fg = 3
        if context.frozen:
            attr |= bold | reverse
            fg = 14
        if context.message:
            if context.bad:
                attr |= bold
                fg = 196
        if context.loaded:
            bg = 215
        if context.vcsinfo:
            fg = 87
            attr &= ~bold
        if context.vcscommit:
            fg = 208
            attr &= ~bold
        if context.vcsdate:
            fg = 219
            attr &= ~bold

        return fg, bg, attr

    def verify_taskview(self, context, fg, bg, attr):
        if context.title:
            fg = 221
            bg = 239

        if context.selected:
            fg = 111
            bg = 248

        if context.loaded:
            if context.selected:
                fg = 39
            else:
                bg = 250

        return fg, bg, attr

    def verify_vcsfile(self, context, fg, bg, attr):
        attr &= ~bold
        if context.vcsconflict:
            fg = 5
        elif context.vcschanged:
            fg = 11
        elif context.vcsunknown:
            fg = 8
        elif context.vcsstaged:
            fg = 21
        elif context.vcssync:
            fg = 11
        elif context.vcsignored:
            fg = 191

        return fg, bg, attr

    def verify_vcsremote(self, context, fg, bg, attr):
        attr &= ~bold
        if context.vcssync or context.vcsnone:
            fg = 180
        elif context.vcsbehind:
            fg = 1
        elif context.vcsahead:
            fg = 6
        elif context.vcsdiverged:
            fg = 5
        elif context.vcsunknown:
            fg = 1

        return fg, bg, attr

    def use(self, context):
        fg, bg, attr = default_colors
        fg = 203
        #bg = 197
        if context.reset:
            return default_colors

        elif context.in_browser:
            fg, bg, attr = self.verify_browser(context, fg, bg, attr)

        elif context.in_titlebar:
            fg, bg, attr = self.verify_titlebar(context, fg, bg, attr)

        elif context.in_statusbar:
            fg, bg, attr = self.verify_statusbar(context, fg, bg, attr)

        if context.text:
            if context.highlight:
                attr |= reverse

        if context.in_taskview:
            fg, bg, attr = self.verify_taskview(context, fg, bg, attr)

        if context.vcsfile and not context.selected:
            fg, bg, attr = self.verify_vcsfile(context, fg, bg, attr)

        elif context.vcsremote and not context.selected:
            fg, bg, attr = self.verify_vcsremote(context, fg, bg, attr)

        return fg, bg, attr
