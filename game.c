#include "game.h"
#include "print.h"
#include "gba.h"
#include "sprites.h"
#include "spritesheet.h"
#include "collisionMap1.h"
#include "mode0.h"
#include "sound.h"
#include "meow.h"
#include "scoreUp.h"

// variables
int hOff, vOff, time, hOff2;

enum {
    START,
    INSTRUCTIONS,
    INSTR2,
    PAUSE,
    GAME1,
    GAME2,
    WIN,
    LOSE,
    EXTRA
}; 

typedef enum {
    DOWN,
    UP,
    RIGHT,
    LEFT
    } DIRECTION;


OBJ_ATTR shadowOAM[128];

int currSB;
int lives;
int score;
int level;
int carrying;
int safe;
int aniSpeed;

SPRITE basket;
SPRITE table;

SPRITE SC;
SPRITE points;
SPRITE life[STARTINGLIVES];
SPRITE cheat;

SPRITE player;

SPRITE dogs[DOGCOUNT];
SPRITE sToy[SMALLTOYS];
SPRITE mToy[MEDTOYS];
SPRITE lToy[LARGETOYS];

// prototypes

    // start
    void initStart();
    void updateStart();
    void drawStart();
    void goToStart();

    // game
    void initGame();
    void updateGame();
    void drawGame();
    void goToGame();

    // other
    void goToInstructions();
    void goToLose();
    void goToWin();

    // player
    void initPlayer();
    void updatePlayer();
    void drawPlayer();

    void initPlayerS();
    void updatePlayerS();
    void drawPlayerS();

    // dogs
    void initDogs();
    void updateDogs();
    void drawDogs();

    // toys
    void initToys();
    void updateToys();
    void drawToys();

    // lives
    void initLives();
    void drawLives();

    // basket
    void initBasket();
    void drawBasket();

    // score
    void initSC();
    void drawSC();

    // points
    void initPoints();
    void updatePoints();
    void drawPoints();

    // cheat
    void initCheat();
    void updateCheat();
    void drawCheat();

// map 1 collision checks
inline unsigned char colorAt1(int x, int y) {
    return ((u8 *) collisionMap1Bitmap)[OFFSET(x, y, MAPWIDTH)];
}

// START PAGE SETUP
void initStart() {
    initPlayerS();
}

void updateStart() {
    updatePlayerS();
}

void drawStart() {
    drawPlayerS();
}

// GAME SETUP
void initGame() {

    // init sprites
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen/2);
    DMANow(3, spritesheetPal, SPRITEPALETTE, 256);
    
    lives =  3;
    score = 0;
    carrying = 0;
    safe = 0;

    vOff = 0;
    hOff = 0;

    initPlayer();
    initDogs();
    initToys();
    initLives();
    initBasket();
    initCheat();
}

void updateGame() {

    updatePlayer();
    updateDogs();
    updateToys();
    updateCheat();
}

void drawGame() {

    drawPlayer();
    drawDogs();
    drawToys();
    drawLives();
    drawBasket();
    drawCheat();

    REG_BG0HOFF = hOff;
    REG_BG0VOFF = vOff;

    DMANow(3, shadowOAM, OAM, 128*4);
}


// ============================= player ============================= //

void initPlayer() {

    player.width = 24;
    player.height = 24;
    player.numOfFrames = 2;
    player.dx = 2;
    player.dy = 2;
    player.x = 8;
    player.y = 16;
    player.direction = DOWN;
    aniSpeed = 10;

}

void updatePlayer() {

    // player sprite edges
    int leftX = player.x;
    int rightX = player.x + player.width - 1;
    int topY = player.y;
    int bottomY = player.y + player.height - 1;


    // orienting and moving the sprite

    player.isMoving = 0;
    safe = 0;

    // moving left
    if (!safe && BUTTON_HELD(BUTTON_LEFT)) {
        player.direction = LEFT;
        player.isMoving = 1;

        // lvl 1 checks
        if ((player.x > 0) && !colorAt1(leftX - player.dx, topY) && !colorAt1(leftX - player.dx, bottomY)) {
            player.x -= player.dx;
        }
    }

    // moving up
    if (!safe && BUTTON_HELD(BUTTON_UP)) {
        player.direction = UP;
        player.isMoving = 1;

        // lvl 1 checks
        if ((level == 1) && (player.y > 0) && !colorAt1(leftX, topY - player.dy) && !colorAt1(rightX, topY - player.dy)) {
            player.y -= player.dy;
        }
    }

    // moving down
    if (!safe && BUTTON_HELD(BUTTON_DOWN)) {
        player.direction = DOWN;
        player.isMoving = 1;

        // lvl 1 checks
        if ((player.y + player.height < MAPHEIGHT) && !colorAt1(leftX, bottomY + player.dy) && !colorAt1(rightX, bottomY + player.dy)) {
            player.y += player.dy;
        }
    }

    // moving right
    if (!safe && BUTTON_HELD(BUTTON_RIGHT)) {
        player.direction = RIGHT;
        player.isMoving = 1;

        // lvl 1 checks
        if ((level == 1) && (player.x + player.width < MAPWIDTH) && !colorAt1(rightX + player.dx, topY) && !colorAt1(rightX + player.dx, bottomY)) {
            player.x += player.dx;
        }
    }

    // allow invulnerability when player FULLY ON safe point
    if (collision(player.x, player.y, player.width, player.height, table.x + (table.width/2), table.y + (table.height/2), 1, 1) && BUTTON_PRESSED(BUTTON_LSHOULDER)) {
        safe = !safe;
        mgba_printf("player safety: %d", safe);
    }

    // WALKING ANIMATION
    if (player.isMoving) {

        if (player.timeUntilNextFrame % aniSpeed == 0) {
            player.frame = (player.frame + 1) % player.numOfFrames;
        };
        if (player.timeUntilNextFrame == 0) {
            player.timeUntilNextFrame = aniSpeed;
        }
        player.timeUntilNextFrame--;

    } else {
        player.frame = 0;
        player.timeUntilNextFrame = aniSpeed;
    }


    // center screen on player as much as possible without wrapping
        if (hOff + SCREENWIDTH < MAPWIDTH && player.x - hOff >= SCREENWIDTH / 2) {
            hOff += 2;
        }
        if (hOff > 0 && player.x - hOff <= SCREENWIDTH / 2){
            hOff -= 2;
        }
        if (vOff + SCREENHEIGHT < MAPHEIGHT && player.y - vOff >= SCREENHEIGHT / 2) {
            vOff += 2;
        }
        if (vOff > 0 && player.y - vOff <= SCREENHEIGHT / 2) {
            vOff -= 2;
        }

}

void drawPlayer() {

    if (!safe) {
        shadowOAM[0].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(player.y - vOff);
        shadowOAM[0].attr1 = ATTR1_MEDIUM | ATTR1_X(player.x - hOff);
        shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((player.direction * 4), (player.frame * 4)); //| ATTR2_PRIORITY(1);
    } else {
        shadowOAM[0].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(player.y - vOff);
        shadowOAM[0].attr1 = ATTR1_MEDIUM | ATTR1_X(player.x - hOff);
        shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((player.direction * 4), (player.frame * 4));// | ATTR2_PRIORITY(1);
    }

    DMANow(3, shadowOAM, OAM, 128*4);
}

// player for start screen

void initPlayerS() {
    player.width = 24;
    player.height = 24;
    player.numOfFrames = 2;
    player.dx = 2;
    player.dy = 0;
    player.x = 0;
    player.y = 80;
    player.direction = RIGHT;
    player.hide = 0;
}

void updatePlayerS() {

        player.isMoving = 0;

    if (BUTTON_HELD(BUTTON_RIGHT)) {
        player.direction = RIGHT;
        player.isMoving = 1;
        if ((player.x + player.width < 1024)) {
            if (BUTTON_HELD(BUTTON_A)) {
                player.x += (player.dx * 2);
            }
            player.x += player.dx;
        }
    }

    if (BUTTON_HELD(BUTTON_LEFT)) {
        player.direction = LEFT;
        player.isMoving = 1;
        if ((player.x > 0)) {
            if (BUTTON_HELD(BUTTON_A)) {
                player.x -= (player.dx * 2);
            }
            player.x -= player.dx;
        }
    }

    // animate walk
    if (player.isMoving) {
        player.timeUntilNextFrame--;
        if (player.timeUntilNextFrame % 10 == 0) {
            player.frame = (player.frame + 1) % player.numOfFrames;
        }
        if (player.timeUntilNextFrame == 0) {
            player.timeUntilNextFrame = 10;
        }
    } else {
        player.frame = 0;
        player.timeUntilNextFrame = 10;
    }

    // move hoff if player halfway thru screen
    if (player.x > SCREENWIDTH / 2 - player.width / 2) {
        hOff = player.x - ((currSB - 26) * 256) - (SCREENWIDTH / 2) + player.width/2;
    }

    if (hOff > 256) {
        currSB++;
        hOff -= 256;
        REG_BG0CNT = BG_SCREENBLOCK(currSB) | BG_CHARBLOCK(1) | BG_SIZE_WIDE  | BG_8BPP;
    }

    if (hOff <= 0) {
        currSB--;
        hOff += 256;
        REG_BG0CNT = BG_SCREENBLOCK(currSB) | BG_CHARBLOCK(1) | BG_SIZE_WIDE | BG_8BPP;
   }

    // loop it
    if (currSB == 29 && hOff > 0) {
        hOff = 0;
    }

    REG_BG0HOFF = hOff;

    if (collision(player.x, player.y, player.width, player.height, 390, 90, 44, 21) && BUTTON_PRESSED(BUTTON_START)) {       
        initGame();
        goToGame();
    }

    if (collision(player.x, player.y, player.width, player.height, 786, 90, 44, 21) && BUTTON_PRESSED(BUTTON_START)) {
        goToInstructions();
    }
}

void drawPlayerS() {
        shadowOAM[0].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(player.y);
        shadowOAM[0].attr1 = ATTR1_MEDIUM | ATTR1_X(player.x - (hOff + ((currSB - 26) * 256)));
        shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((player.direction * 4), (player.frame * 4));
}


// ============================= dogs ============================= //

void initDogs() {

    // doggie number one
    dogs[0].width = 32;
    dogs[0].height = 32;
    dogs[0].x = 96;
    dogs[0].y = 104;
    dogs[0].dx = 2;
    dogs[0].dy = 2;
    dogs[0].direction = LEFT;
    dogs[0].numOfFrames = 2;
    dogs[0].isMoving = 0;

    // doggie number two
    dogs[1].width = 32;
    dogs[1].width = 32;
    dogs[1].height = 32;
    dogs[1].x = 183;
    dogs[1].y = 8;
    dogs[1].dx = 1;
    dogs[1].dy = 1;
    dogs[1].direction = LEFT;
    dogs[1].numOfFrames = 2;
    dogs[1].isMoving = 0;

}

void updateDogs() {
    for (int i = 0; i < DOGCOUNT; i++) {

        dogs[i].isMoving = 1;
        
        // set dimensions
        int leftX = dogs[i].x;
        int rightX = dogs[i].x + dogs[i].width - 1;
        int topY = dogs[i].y;
        int bottomY = dogs[i].y + dogs[i].height - 1;

        // if dog hits player
        if (!safe && collision(player.x, player.y, player.width, player.height, dogs[i].x, dogs[i].y, dogs[i].width, dogs[i].height)) {
            player.x = 8;
            player.y = 16;
            hOff = 0;
            vOff = 0;
            lives--;
        }

        if (dogs[i].isMoving) {

            // boundary checks

            int buffer = 2;
            int shift = 0;

            if (!colorAt1(leftX - buffer, bottomY - 1 + buffer) && !colorAt1(leftX - buffer, topY + 1 - buffer)) { //  left side hits wall
                dogs[i].dx = -dogs[i].dx;
                dogs[i].x -= shift;
                dogs[i].y += shift;
            }

            if (!colorAt1(rightX + buffer, bottomY - 1 + buffer) && !colorAt1(rightX + buffer, topY + 1 - buffer))  { // right side hits wall
                dogs[i].dx = -dogs[i].dx;
                dogs[i].y += shift;
            }

            if (!colorAt1(leftX + 1 + buffer, topY - buffer) && !colorAt1(rightX - 1 + buffer, topY - buffer)) { // top side hits wall
                dogs[i].dy = -dogs[i].dy;
                dogs[i].y -= shift;
            }

            if (!colorAt1(leftX + 1 + buffer, bottomY + buffer) && !colorAt1(rightX - 1 + buffer, bottomY + buffer)) { // bottom side hits wall
                dogs[i].dy = -dogs[i].dy;
                dogs[i].y += shift;
            }


            // direction
            if (dogs[i].dx > 0 && dogs[i].dy > 0) { // +x, +y
                dogs[i].direction = RIGHT;
            }
            if (dogs[i].dx > 0 && dogs[i].dy < 0) { // +x, -y
                dogs[i].direction = UP;
            }
            if (dogs[i].dx < 0 && dogs[i].dy < 0) { // -x, -y
                dogs[i].direction = DOWN;
            }
            if (dogs[i].dx < 0 && dogs[i].dy > 0) { // -x, +y
                dogs[i].direction = LEFT;
            }

            dogs[i].x += dogs[i].dx;
            dogs[i].y += dogs[i].dy;
        
            // animate walk
            if (dogs[i].isMoving) {
                dogs[i].timeUntilNextFrame--;
                if (dogs[i].timeUntilNextFrame % 10 == 0) {
                    dogs[i].frame = (dogs[i].frame + 1) % dogs[i].numOfFrames;
                }
                if (dogs[i].timeUntilNextFrame == 0) {
                    dogs[i].timeUntilNextFrame = 10;
                }
            } else {
                dogs[i].frame = 0;
                dogs[i].timeUntilNextFrame = 10;
            }
        }
    }
}

void drawDogs() {

    for (int i = 0; i < DOGCOUNT; i++) {
        // big boy
        shadowOAM[1].attr0 = ATTR0_4BPP | ATTR0_Y(dogs[0].y - vOff);
        shadowOAM[1].attr1 = ATTR1_MEDIUM | ATTR1_X(dogs[0].x - hOff);
        shadowOAM[1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((dogs[0].direction * 4), (8 + dogs[0].frame * 4));

        // number two
        shadowOAM[2].attr0 = ATTR0_4BPP | ATTR0_Y(dogs[1].y - vOff);
        shadowOAM[2].attr1 = ATTR1_MEDIUM | ATTR1_X(dogs[1].x - hOff);
        shadowOAM[2].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID((16 + dogs[1].direction * 4), (8 + dogs[1].frame * 4));

    }
}


// ============================= toys ============================= //

void initToys() {

    // small toys
    for (int i = 0; i < SMALLTOYS; i++) {
        sToy[i].hide = 0;
        sToy[i].isMoving = 0;
        sToy[i].width = 8;
        sToy[i].height = 8;
        if ((i + 1) < 5) {
            sToy[i].direction = i + 1;
        } else {
            sToy[i].direction = UP;
        }
    }

    sToy[0].x = 16;
    sToy[0].y = 128;

    sToy[1].x = 72;
    sToy[1].y = 160;

    sToy[2].x = 163;
    sToy[2].y = 24;

    sToy[3].x = 192;
    sToy[3].y = 200;

    sToy[4].x = 200;
    sToy[4].y = 64;

    sToy[5].x = 16;
    sToy[5].y = 208;

    // medium toys



    // large toys


}

void updateToys() {

    // small toys
    for (int i = 0; i < SMALLTOYS; i++) {
        if ((!carrying) && collision(sToy[i].x, sToy[i].y, 8, 8, player.x, player.y, player.width, player.height)) {
            if (BUTTON_PRESSED(BUTTON_A)) {
                sToy[i].isMoving = 1;
                carrying = 1;
                soundB.isPlaying = 1;
                playSoundB(meow_data, meow_length, 0);
            }
        }

        if (BUTTON_PRESSED(BUTTON_B) && carrying && (collision(player.x, player.y, player.width, player.height, basket.x, basket.y, basket.width, basket.height))) {
            carrying = 0;
            sToy[i].hide = 1; 
            score += 1;
            playSoundB(scoreUp_data, scoreUp_length, 0);
        }
    }
}

void drawToys() {

    for (int i = 0; i < SMALLTOYS; i++) {

        if (!sToy[i].hide) {
            if (!sToy[i].isMoving) {
                shadowOAM[4 + (i*2)].attr0 = ATTR0_4BPP | ATTR0_Y(sToy[i].y - vOff);
                shadowOAM[4 + (i*2)].attr1 = ATTR1_X(sToy[i].x - hOff);
                shadowOAM[4 + (i*2)].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(16, (sToy[i].frame));
            } else if (carrying) {
                shadowOAM[4 + (i*2)].attr0 = ATTR0_4BPP | ATTR0_Y(player.y + (player.height / 2) - vOff);
                shadowOAM[4 + (i*2)].attr1 = ATTR1_X(player.x + (player.width / 2) - hOff);
                shadowOAM[4 + (i*2)].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((16 + player.direction), (sToy[i].frame));
            }

        } else {
            shadowOAM[4].attr0 = ATTR0_HIDE;
        }
    }
    

    // for (int i = 0; i < MEDTOYS; i++) {
    //     shadowOAM[5].attr0 = ATTR0_4BPP | ATTR0_WIDE | ATTR0_Y(mToy[i].y - vOff);
    //     shadowOAM[5].attr1 = ATTR1_SMALL | ATTR1_X(player.x - hOff);
    //     shadowOAM[5].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((20 + (player.direction * 4)), (mToy[i].frame));

    // }
}


// ============================= lives ============================= //

void initLives() {
    for (int i = 0; i < STARTINGLIVES; i++) {
        life[i].width = 16;
        life[i].height = 8;
        life[i].x = 184 + (i * 16);
        life[i].y = 8;

    }
}

void drawLives() {

    if (lives == 3) {
        shadowOAM[7].attr0 = ATTR0_4BPP | ATTR0_WIDE | ATTR0_Y(8);
        shadowOAM[7].attr1 = ATTR1_X(184);
        shadowOAM[7].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 31);

        shadowOAM[9].attr0 = ATTR0_4BPP | ATTR0_WIDE | ATTR0_Y(8);
        shadowOAM[9].attr1 = ATTR1_X(201);
        shadowOAM[9].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 31);

        shadowOAM[11].attr0 = ATTR0_4BPP | ATTR0_WIDE | ATTR0_Y(8);
        shadowOAM[11].attr1 = ATTR1_X(218);
        shadowOAM[11].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 31);

    } else if (lives == 2) {
        shadowOAM[7].attr0 = ATTR0_4BPP | ATTR0_WIDE | ATTR0_Y(8);
        shadowOAM[7].attr1 = ATTR1_X(184);
        shadowOAM[7].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 31);

        shadowOAM[9].attr0 = ATTR0_4BPP | ATTR0_WIDE | ATTR0_Y(8);
        shadowOAM[9].attr1 = ATTR1_X(201);
        shadowOAM[9].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 31);

        shadowOAM[11].attr0 = ATTR0_HIDE;

    } else if (lives == 1) {

        SPRITEPALETTE[2] = SPRITEPALETTE[7];

        shadowOAM[7].attr0 = ATTR0_4BPP | ATTR0_WIDE | ATTR0_Y(8);
        shadowOAM[7].attr1 = ATTR1_X(184);
        shadowOAM[7].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 31);

        shadowOAM[9].attr0 = ATTR0_HIDE;

        shadowOAM[11].attr0 = ATTR0_HIDE;


    } else if (lives == 0) {
        goToLose();
    }
}

// ============================= basket ============================= //

void initBasket() {
    basket.x = 216;
    basket.y = 232;
    basket.height = 16;
    basket.width = 32;
}

void drawBasket() {
    shadowOAM[12].attr0 = ATTR0_4BPP | ATTR0_WIDE | ATTR0_Y(basket.y);
    shadowOAM[12].attr1 = ATTR1_MEDIUM | ATTR1_X(basket.x);
    shadowOAM[12].attr2 = ATTR2_PALROW(0) | ATTR2_PRIORITY(2) | ATTR2_TILEID(0, 12);

    DMANow(3, shadowOAM, OAM, 128*4);

}

// cheat //

void initCheat() {
    cheat.x = 16;
    cheat.y = 0;
    cheat.dx= 0;
    cheat.dy = 2;
    cheat.height = 8;
    cheat.width = 8;
    cheat.hide = 1;
    cheat.isMoving = 0;
    mgba_printf("cheat initialized");
}

void updateCheat() {

    if (BUTTON_PRESSED(BUTTON_LSHOULDER)) {
        mgba_printf("cheat button pressed");
        cheat.hide = 0;
    }

    if (!cheat.hide) {
        if (cheat.y < 100) {
            cheat.y += cheat.dy;
        }

        if (collision(player.x, player.y, player.width, player.height, cheat.x, cheat.y,  cheat.width, cheat.height) && BUTTON_PRESSED(BUTTON_A)) {
            player.dx = 5;
            player.dy = 5;
            cheat.hide = 1;
            aniSpeed = 4;
        }
    }
    mgba_printf("cheat initialized");
}

void drawCheat() {

    if (!cheat.hide) {
        shadowOAM[32].attr0 = ATTR0_Y(cheat.y - hOff);
        shadowOAM[32].attr1 = ATTR1_X(cheat.x - vOff);
        shadowOAM[32].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(16, 1) | ATTR2_PRIORITY(0);
    } else {
        shadowOAM[32].attr0 = ATTR0_HIDE;
    }
}

// ============================= score (SC) ============================= //

// void initSC() {
//     SC.x = 8;
//     SC.y = 8;
//     SC.height = 8;
//     SC.width = 32;
// }

// void drawSC() {

//     shadowOAM[14].attr0 = ATTR0_4BPP | ATTR0_WIDE | ATTR0_Y(SC.y);
//     shadowOAM[14].attr1 = ATTR1_SMALL | ATTR1_X(SC.x);
//     shadowOAM[14].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(2, 31);

//     DMANow(3, shadowOAM, OAM, 128*4);
// }

// // ============================= score number ============================= //
// void initPoints() {
//     points.width = 8;
//     points.height = 8;
//     points.x = 32;
//     points.y = 8;
// }

// void drawPoints() {

//     // only display 0
//     if (score == 0) {
//         shadowOAM[15].attr0 = ATTR0_4BPP | ATTR0_Y(points.y);
//         shadowOAM[15].attr1 = ATTR1_X(points.x);
//         shadowOAM[15].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(15, 31);

//     // first digit empty, second digit ones
//     } else if (score < 10) {
//         shadowOAM[15].attr0 = ATTR0_4BPP | ATTR0_Y(points.y);
//         shadowOAM[15].attr1 = ATTR1_X(points.x + 8);
//         shadowOAM[15].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(5 + score, 31);

//     // first digit 1, second digit ones
//     } else if ((score > 10) && (score < 20)) {
//         shadowOAM[15].attr0 = ATTR0_4BPP | ATTR0_Y(points.y);
//         shadowOAM[15].attr1 = ATTR1_X(points.x);
//         shadowOAM[15].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(6, 31);

//         shadowOAM[16].attr0 = ATTR0_4BPP | ATTR0_Y(points.y);
//         shadowOAM[16].attr1 = ATTR1_X(points.x + 8);
//         shadowOAM[16].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((5 + score - 10), 31);


//     // first digit 2, second digit ones
//     } else if (score > 20) {
//         shadowOAM[15].attr0 = ATTR0_8BPP | ATTR0_Y(points.y);
//         shadowOAM[15].attr1 = ATTR1_X(points.x);
//         shadowOAM[15].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(7, 31);
    
//         shadowOAM[16].attr0 = ATTR0_4BPP | ATTR0_Y(points.y);
//         shadowOAM[16].attr1 = ATTR1_X(points.x + 8);
//         shadowOAM[16].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((5 + score - 10), 31);
//     }
// }

// // ============================= table ============================= //
// void initTable() {
//     if (level == 1) {
//         table.x = 128;
//         table.y = 168;
//         table.width = 32;
//         table.height = 64;
//     }
// }   

// void drawTable() {
//     shadowOAM[17].attr0 = ATTR0_8BPP | ATTR0_TALL | ATTR0_Y(table.y);
//     shadowOAM[17].attr1 = ATTR1_LARGE | ATTR1_X(table.x);
//     shadowOAM[17].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(4, 11) | ATTR2_PRIORITY(0);
// }