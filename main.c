// =============== things i am still planning to do =============== //
// working on the dog sprites, and adding sound, and fixing palette on winScreen, and updating instructions, info, and lose screens.
// trying to get an XL infintely scrolling/looping BG for the start page, and going to add cat sprite and game title.
// going to actually add the other sizes of toys--just working on getting other things functional first

// =============== new updates (or something idk) =============== //
// added all art, and animation cycles. fixed the gaps so player can access all parts of the map

#include <stdlib.h>
#include "print.h"

#include "gba.h"
#include "mode0.h"
#include "print.h"
#include "sprites.h"
#include "sound.h"

#include "startBG2.h"
#include "start.h"
#include "startXL.h"
#include "instructions.h"
#include "instr2.h"
#include "gameBG.h"
#include "pigeonPhotoGAMEVER.h"
#include "loseScreen.h"
#include "pause.h"

#include "spritesheet.h"
#include "game.h"

#include "startSong.h"
#include "gameSong.h"
#include "goofyahhbeatEXTRA.h"
#include "meow.h"
#include "scoreUp.h"

#define MAPWIDTH 0
#define MAPHEIGHT 0

// prototypes
void initialize();
void initGame();
void updateGame();
void drawGame();

void start();
void goToStart();
void instructions();
void goToInstructions();
void game();
void goToGame();
void pause();
void goToPause();
void win();
void goToWin();
void lose();
void goToLose();
void extra();
void goToExtra();

void setupInterrupts();
void interruptHandler();

OBJ_ATTR shadowOAM[128];

// game variables
int seed;
int level; 
int time;
int state;

enum {
    START,
    INSTRUCTIONS,
    INSTR2,
    PAUSE,
    GAME,
    WIN,
    LOSE,
    EXTRA
};

// button vars
unsigned short oldButtons;
unsigned short buttons;

// hoff/voff
int hOff;
int vOff;

int hOff2;

int currSB;

// sound
 SOUND soundA;
 SOUND soundB;

int main() {

    mgba_open();

    initialize();

    while (1) {

        time++;

        oldButtons = buttons;
        buttons = REG_BUTTONS;

        waitForVBlank();
        DMANow(3, shadowOAM, OAM, 128*4);

        // state machine
        switch(state) {
            case START:
                start();
                break;
            case INSTRUCTIONS:
                instructions();
                break;
            case INSTR2:
                instr2();
                break;
            case PAUSE:
                pause();
                break;
            case GAME:
                game();
                break;
            case WIN:
                win();
                break;
            case LOSE:
                lose();
                break;
            case EXTRA:
                extra();
                break;
        }
    }
}

//interrupt stuff

void interruptHandler(void) {

	REG_IME = 0;

	if (REG_IF == IRQ_VBLANK) {

        // SOUND A LOOPING
        if (soundA.isPlaying) { 
            soundA.vBlankCount++;
            if (soundA.vBlankCount >= soundA.durationInVBlanks) {
                    soundA.vBlankCount = 0;
                    playSoundA(soundA.data, soundA.dataLength, 1);
                }
            }
        }

    if (soundB.isPlaying) {
        soundB.vBlankCount++;
        if (soundB.vBlankCount > soundB.durationInVBlanks) {
            soundB.vBlankCount = 0;
        //} else {
            REG_TM1CNT = TIMER_OFF;
            dma[2].cnt = 0;
        }
	}

    REG_IF = REG_IF;
    REG_IME = 1;
}

void setupInterrupts(void) {

	REG_IME = 0;

    REG_INTERRUPT = interruptHandler;

    REG_IE |= IRQ_VBLANK;
    REG_DISPSTAT |= DISPSTAT_VBLANK_IRQ;

	REG_IME = 1;
}

// start game
void initialize() {

    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | BG_ENABLE(1) | SPRITE_ENABLE;

    // load sprites into memory
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen/2);
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen/2);

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;

    setupSounds();
    setupInterrupts();

    goToStart();
}

// sets up start state
void goToStart() {

    initStart();

    currSB = 26;

    REG_BG1HOFF = 0;

    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(26) | BG_SIZE_WIDE | BG_8BPP; 

    hOff = 0;

    // load start xl bg
    DMANow(3, startXLPal, PALETTE, 256);
    DMANow(3, startXLTiles, &CHARBLOCK[1], startXLTilesLen / 2);
    DMANow(3, startXLMap, &SCREENBLOCK[26], startXLMapLen / 2);

    // LOAD PARALLAX BG HERE
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(30) | BG_SIZE_WIDE;

    hOff2 = 0;

    // load scrolling bg
    DMANow(3, startBG2Tiles, &CHARBLOCK[0], startBG2TilesLen / 2);
    DMANow(3, startBG2Map, &SCREENBLOCK[30], startBG2MapLen / 2);

    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);
    
    stopSounds();
    playSoundA(startSong_data, startSong_length, 1);

    state = START;
}

// runs every frame of start state
void start() {

    REG_BG1HOFF = hOff2;
    hOff2++;

    updateStart();
    drawStart();

    waitForVBlank();

}

// sets up instruction page
void goToInstructions() {
    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
    
    REG_BG0HOFF = 0;

    DMANow(3, instructionsPal, PALETTE, 256);

    DMANow(3, instructionsTiles, &CHARBLOCK[0], instructionsTilesLen/2);
    DMANow(3, instructionsMap, &SCREENBLOCK[31], instructionsMapLen/2);

    hideSprites();
    waitForVBlank();

    DMANow(3, shadowOAM, OAM, 128*4);

    pauseSounds();

    

    state = INSTRUCTIONS;
}

// runs every frame of instructions state
void instructions() {

    hideSprites();

    // back to start    
    if (BUTTON_PRESSED(BUTTON_START)) {

        pauseSounds();
        goToStart();
    }

    // back to pause
    if (BUTTON_PRESSED(BUTTON_A)) {
        goToPause();
    }

    //instr 2
    if (BUTTON_PRESSED(BUTTON_RSHOULDER)) {
        goToInstr2();
    }

    waitForVBlank();
}

// go to instr 2
void goToInstr2() {
    DMANow(3, instr2Pal, PALETTE, 256);

    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);

    DMANow(3, instr2Tiles, &CHARBLOCK[0], instr2TilesLen/2);
    DMANow(3, instr2Map, &SCREENBLOCK[31], instr2MapLen/2);

    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128*4);

    state = INSTR2;
}

void instr2() {

hideSprites();

    // back to start    
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }

    // back to pause
    if (BUTTON_PRESSED(BUTTON_A)) {
        goToPause();
    }

    //instr 2
    if (BUTTON_PRESSED(BUTTON_LSHOULDER)) {
        goToInstructions();
    }

    waitForVBlank();
}

// sets up pause state
void goToPause() {
    DMANow(3, pausePal, PALETTE, 256);

    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);

    DMANow(3, pauseTiles, &CHARBLOCK[0], pauseTilesLen/2);
    DMANow(3, pauseMap, &SCREENBLOCK[31], pauseMapLen/2);

    hideSprites();
    DMANow(3, shadowOAM, OAM, 128*4);

    state = PAUSE;
}

// runs every frame of pause
void pause() {
    hideSprites();

    // back to game    
    if (BUTTON_PRESSED(BUTTON_START)) {
            goToGame();
    }

    // quit game, return to start
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToStart();
    }

    // instructions (if you forgor :skull:)
    if (BUTTON_PRESSED(BUTTON_A)) {
        goToInstructions();
    }

    waitForVBlank();
}

// sets up game level 1
void goToGame() {

    REG_DISPCTL = BG_ENABLE(0) | BG_ENABLE(1) | SPRITE_ENABLE;

    // setting up Game background 0
    REG_BG0CNT = BG_SIZE_SMALL | BG_8BPP | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
    DMANow(3, gameBGPal, PALETTE, 256);
    DMANow(3, gameBGTiles, &CHARBLOCK[0], gameBGTilesLen/2);
    DMANow(3, gameBGMap, &SCREENBLOCK[31], gameBGMapLen/2);

    hideSprites();
    DMANow(3, shadowOAM, OAM, 128*4);
    waitForVBlank();

    stopSounds();
    playSoundA(gameSong_data, gameSong_length, 1);

    level = 1;
    state = GAME;
}

// runs every frame of game
void game() {
    
    if (BUTTON_PRESSED(BUTTON_START)) {
        REG_BG0HOFF = 0;
        REG_BG0VOFF = 0;

        goToPause();
    }

    if (lives == 0) {
        REG_BG0HOFF = 0;
        REG_BG0VOFF = 0;
        pauseSounds();
        goToLose();
    }

    if (score == 5) {
        hOff = 0;
        pauseSounds();
        goToWin();
    }

    // debug
    if (BUTTON_PRESSED(BUTTON_RSHOULDER)) {
        REG_BG0HOFF = 0;
        REG_BG0VOFF = 0;
        pauseSounds();
        goToWin();
    }

    updateGame();
    drawGame();

    DMANow(3, shadowOAM, OAM, 128*4);
    waitForVBlank();
}

// sets up win state
void goToWin() {


    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_8BPP;

    DMANow(3, pigeonPhotoGAMEVERPal, PALETTE, 256);

    DMANow(3, pigeonPhotoGAMEVERTiles, &CHARBLOCK[0], pigeonPhotoGAMEVERTilesLen/2);
    DMANow(3, pigeonPhotoGAMEVERMap, &SCREENBLOCK[31], pigeonPhotoGAMEVERMapLen/2);

    hideSprites();
    DMANow(3, shadowOAM, OAM, 128*4);

    playSoundA(startSong_data, startSong_length, 1);

    state = WIN;
}

// runs every frame of win state
void win() {

    hideSprites();

    if (BUTTON_PRESSED(BUTTON_START)) {
        REG_BG0HOFF = 0;
        REG_BG0VOFF = 0;
        REG_BG1HOFF = 0;
        REG_BG1VOFF = 0;
        goToStart();
    }

    if (BUTTON_PRESSED(BUTTON_A)) {
        pauseSounds();
        goToExtra();
    }
}

// sets up lose state
void goToLose() {
    DMANow(3, loseScreenPal, PALETTE, 256);

    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);

    DMANow(3, loseScreenTiles, &CHARBLOCK[0], loseScreenTilesLen/2);
    DMANow(3, loseScreenMap, &SCREENBLOCK[31], loseScreenMapLen/2);

    hideSprites();
    DMANow(3, shadowOAM, OAM, 128*4);

    state = LOSE;
}

// runs every frame of lose state
void lose() {
    
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }

}

// sets up extra info page
void goToExtra() {

    playSoundA(goofyahhbeatEXTRA_data, goofyahhbeatEXTRA_length, 1);

    hideSprites();

    

}

void extra() {

    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}