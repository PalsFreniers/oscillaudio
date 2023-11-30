#include <raylib.h>
#include <stdio.h>
#include <stdlib.h>

int main() {
        InitWindow(600, 400, "Oscillaudio");
        SetTargetFPS(60);
        InitAudioDevice();
        Music music = LoadMusicStream("musics/sound.ogg");
        PlayMusicStream(music);
        while(!WindowShouldClose()) {
                UpdateMusicStream(music);
                BeginDrawing();
                ClearBackground((struct Color){0x28, 0x28, 0x28, 0xFF});
                EndDrawing();
        }
        return EXIT_SUCCESS;
}
