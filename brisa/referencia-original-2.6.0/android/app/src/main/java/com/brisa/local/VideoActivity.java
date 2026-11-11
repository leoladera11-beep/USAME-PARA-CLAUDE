package com.brisa.local;

import android.app.Activity;
import android.graphics.Color;
import android.graphics.Insets;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.WindowInsets;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.MediaController;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.VideoView;

/* JADX INFO: loaded from: classes.dex */
public final class VideoActivity extends Activity {
    private MediaController controls;
    private boolean foreground;
    private VideoView video;
    private MediaPlayer soundPlayer;

    private int dp(int i) {
        return Math.round(i * getResources().getDisplayMetrics().density);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String stringExtra = getIntent().getStringExtra("videoId");
        Uri uriResolve = VideoFiles.resolve(this, stringExtra);
        if (uriResolve == null) {
            finish();
            return;
        }
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setBackgroundColor(Color.rgb(15, 23, 19));
        if (Build.VERSION.SDK_INT >= 30) {
            getWindow().setDecorFitsSystemWindows(false);
            linearLayout.setOnApplyWindowInsetsListener(new VideoActivity$$ExternalSyntheticLambda0());
        } else {
            linearLayout.setFitsSystemWindows(true);
        }
        Button button = new Button(this);
        button.setText("‹ Videos");
        button.setAllCaps(false);
        button.setMinHeight(dp(48));
        button.setTextColor(-1);
        button.setBackgroundColor(0);
        button.setOnClickListener(new VideoActivity$$ExternalSyntheticLambda1(this));
        linearLayout.addView(button, new LinearLayout.LayoutParams(-2, dp(52)));
        TextView textView = new TextView(this);
        textView.setText(VideoFiles.name(this, stringExtra));
        textView.setMaxLines(2);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setTextSize(18.0f);
        textView.setTextColor(-1);
        textView.setPadding(dp(16), 0, dp(16), dp(6));
        linearLayout.addView(textView);
        TextView textView2 = new TextView(this);
        textView2.setText("Calidad original");
        textView2.setTextColor(Color.rgb(169, 224, 190));
        textView2.setPadding(dp(16), 0, dp(16), dp(12));
        linearLayout.addView(textView2);
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setBackgroundColor(-16777216);
        linearLayout.addView(frameLayout, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        this.video = new VideoView(this) {
            @Override public void start() { super.start(); if (soundPlayer != null) SoundEffects.attach(VideoActivity.this, soundPlayer); }
            @Override public void pause() { super.pause(); SoundEffects.suspend(soundPlayer); }
        };
        this.video.setAudioFocusRequest(2);
        frameLayout.addView(this.video, new FrameLayout.LayoutParams(-1, -1, 17));
        this.controls = new MediaController(this);
        this.video.setMediaController(this.controls);
        this.video.setOnPreparedListener(new VideoActivity$$ExternalSyntheticLambda2(this, textView2));
        this.video.setOnErrorListener(new VideoActivity$$ExternalSyntheticLambda3(this));
        setContentView(linearLayout);
        this.video.setVideoURI(uriResolve);
    }

    static /* synthetic */ WindowInsets lambda$0(View view, WindowInsets windowInsets) {
        int iSystemBars = WindowInsets.Type.systemBars() | WindowInsets.Type.displayCutout();
        Insets insets = windowInsets.getInsets(iSystemBars);
        view.setPadding(insets.left, insets.top, insets.right, insets.bottom);
        return new WindowInsets.Builder(windowInsets).setInsets(iSystemBars, Insets.NONE).setInsetsIgnoringVisibility(iSystemBars, Insets.NONE).setDisplayCutout(null).build();
    }

    /* JADX INFO: renamed from: lambda$1$com-brisa-local-VideoActivity, reason: not valid java name */
    /* synthetic */ void m29lambda$1$combrisalocalVideoActivity(View view) {
        finish();
    }

    /* JADX INFO: renamed from: lambda$2$com-brisa-local-VideoActivity, reason: not valid java name */
    /* synthetic */ void m30lambda$2$combrisalocalVideoActivity(TextView textView, MediaPlayer mediaPlayer) {
        this.soundPlayer = mediaPlayer; SoundEffects.attach(this, mediaPlayer);
        textView.setText(String.valueOf(mediaPlayer.getVideoWidth()) + " × " + mediaPlayer.getVideoHeight() + " · Original");
        if (this.foreground) {
            this.video.start();
            this.controls.show(2500);
        }
    }

    /* JADX INFO: renamed from: lambda$3$com-brisa-local-VideoActivity, reason: not valid java name */
    /* synthetic */ boolean m31lambda$3$combrisalocalVideoActivity(MediaPlayer mediaPlayer, int i, int i2) {
        Toast.makeText(this, "No se pudo reproducir. Prueba MP4 con H.264 y AAC o vuelve a añadir el archivo.", 1).show();
        finish();
        return true;
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        this.foreground = true;
        if (soundPlayer != null) SoundEffects.attach(this, soundPlayer);
    }

    @Override // android.app.Activity
    protected void onStop() {
        this.foreground = false;
        SoundEffects.release(soundPlayer);
        if (this.video != null && this.video.isPlaying()) {
            this.video.pause();
        }
        if (this.controls != null) {
            this.controls.hide();
        }
        super.onStop();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        SoundEffects.release(soundPlayer); soundPlayer = null;
        if (this.video != null) {
            this.video.stopPlayback();
        }
        super.onDestroy();
    }
}
