package com.brisa.local;

/* JADX INFO: loaded from: classes.dex */
final class PlaybackButtons {

    static final class Button {
        final String action;
        final String icon;
        final String label;

        Button(String str, String str2, String str3) {
            this.action = str;
            this.label = str2;
            this.icon = str3;
        }
    }

    PlaybackButtons() {
    }

    static Button[] layout(boolean z) {
        Button[] buttonArr = new Button[5];
        buttonArr[0] = new Button("back", "Retroceder 10 segundos", "back10");
        buttonArr[1] = new Button(z ? "pause" : "play", z ? "Pausar" : "Reanudar", z ? "pause" : "play");
        buttonArr[2] = new Button("forward", "Adelantar 10 segundos", "forward10");
        buttonArr[3] = new Button("previous", "Canción anterior", "previous");
        buttonArr[4] = new Button("next", "Siguiente canción", "next");
        return buttonArr;
    }

    static boolean publish(boolean z, boolean z2) {
        return z || z2;
    }
}
