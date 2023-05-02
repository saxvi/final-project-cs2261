# 1 "game.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "game.c"
# 1 "game.h" 1
# 1 "sprites.h" 1



# 1 "gba.h" 1




typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long s64;
typedef unsigned long long u64;
typedef void (*ihp_t)(void);






extern volatile unsigned short *videoBuffer;
# 40 "gba.h"
void waitForVBlank();
# 57 "gba.h"
int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2);
# 73 "gba.h"
extern unsigned short oldButtons;
extern unsigned short buttons;




typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;
extern DMA *dma;
# 105 "gba.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 127 "gba.h"
typedef void (*ihp)(void);
# 5 "sprites.h" 2





typedef struct {
  u16 attr0;
  u16 attr1;
  u16 attr2;
  u16 fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[128];
# 63 "sprites.h"
void hideSprites();


typedef struct {
    int x;
    int y;
    int dx;
    int dy;
    int width;
    int height;
    int direction;
    int isMoving;
    int timeUntilNextFrame;
    int frame;
    int numOfFrames;
    int active;
    int hide;
} SPRITE;
# 2 "game.h" 2
# 16 "game.h"
    extern int score;
    extern int lives;
    extern int level;


    extern SPRITE player;

    extern SPRITE basket;
    extern SPRITE table;

    extern SPRITE points;
    extern SPRITE SC;

    extern SPRITE life[3];
    extern SPRITE dogs[3];
    extern SPRITE sToy[6];
    extern SPRITE mToy[3];
    extern SPRITE lToy[2];


    extern int safe;
    extern int state;
    extern int vOff;
    extern int hOff;
    extern int time;






    void initStart();
    void updateStart();
    void drawStart();


    void initGame();
    void updateGame();
    void drawGame();


    void initPlayer();
    void updatePlayer();
    void drawPlayer();


    void initDogs();
    void updateDogs();
    void drawDogs();


    void initToys();
    void updateToys();
    void drawToys();


    void initPoints();
    void updatePoints();
    void drawPoints();




    void initLives();
    void drawLives();


    void initBasket();
    void drawBasket();


    void initSC();
    void drawSC();


    void initTable();
    void drawTable();
# 2 "game.c" 2
# 1 "print.h" 1
# 25 "print.h"
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 1 3 4
# 9 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 1 3 4
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 1 3 4







# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 1 3 4
# 28 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_newlib_version.h" 1 3 4
# 29 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 2 3 4
# 9 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 2 3 4
# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4

# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 35 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 187 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 1 3 4
# 20 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 10 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 2 3 4
# 26 "print.h" 2
# 35 "print.h"

# 35 "print.h"
uint8_t mgba_open(void);
void mgba_printf_level(int level, const char* ptr, ...);
void mgba_printf(const char* string, ...);
void mgba_break(void);
void mgba_close(void);
# 3 "game.c" 2


# 1 "spritesheet.h" 1
# 21 "spritesheet.h"
extern const unsigned short spritesheetTiles[16384];


extern const unsigned short spritesheetPal[256];
# 6 "game.c" 2
# 1 "collisionMap1.h" 1
# 21 "collisionMap1.h"
extern const unsigned short collisionMap1Bitmap[32768];


extern const unsigned short collisionMap1Pal[256];
# 7 "game.c" 2
# 1 "mode0.h" 1
# 32 "mode0.h"
typedef struct { u16 tileData[16]; } TILE;
typedef TILE charblock[512];



typedef struct {
 u16 tilemap[1024];
} screenblock;
# 8 "game.c" 2
# 1 "sound.h" 1



void setupSounds();
void playSoundA(const signed char* sound, int length, int loops);
void playSoundB(const signed char* sound, int length, int loops);

void pauseSounds();
void unpauseSounds();
void stopSounds();
# 49 "sound.h"
typedef struct{
    const signed char* data;
    int dataLength;
    int isPlaying;
    int looping;
    int durationInVBlanks;
    int vBlankCount;
} SOUND;

SOUND soundA;
SOUND soundB;
# 9 "game.c" 2
# 1 "meow.h" 1


extern const unsigned int meow_sampleRate;
extern const unsigned int meow_length;
extern const signed char meow_data[];
# 10 "game.c" 2
# 1 "scoreUp.h" 1


extern const unsigned int scoreUp_sampleRate;
extern const unsigned int scoreUp_length;
extern const signed char scoreUp_data[];
# 11 "game.c" 2


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

SPRITE basket;
SPRITE table;

SPRITE SC;
SPRITE points;
SPRITE life[3];

SPRITE player;

SPRITE dogs[3];
SPRITE sToy[6];
SPRITE mToy[3];
SPRITE lToy[2];




    void initStart();
    void updateStart();
    void drawStart();
    void goToStart();


    void initGame();
    void updateGame();
    void drawGame();
    void goToGame();


    void goToInstructions();
    void goToLose();
    void goToWin();


    void initPlayer();
    void updatePlayer();
    void drawPlayer();

    void initPlayerS();
    void updatePlayerS();
    void drawPlayerS();


    void initDogs();
    void updateDogs();
    void drawDogs();


    void initToys();
    void updateToys();
    void drawToys();


    void initLives();
    void drawLives();


    void initBasket();
    void drawBasket();


    void initSC();
    void drawSC();


    void initPoints();
    void updatePoints();
    void drawPoints();


inline unsigned char colorAt1(int x, int y) {
    return ((u8 *) collisionMap1Bitmap)[((y) * (256) + (x))];
}


void initStart() {
    initPlayerS();
}

void updateStart() {
    updatePlayerS();
}

void drawStart() {
    drawPlayerS();
}


void initGame() {


    DMANow(3, spritesheetTiles, &((charblock *)0x06000000)[4], 32768/2);
    DMANow(3, spritesheetPal, ((u16 *)0x5000200), 256);

    lives = 3;
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
}

void updateGame() {

    updatePlayer();
    updateDogs();
    updateToys();
}

void drawGame() {

    drawPlayer();
    drawDogs();
    drawToys();
    drawLives();
    drawBasket();

    (*(volatile unsigned short *)0x04000010) = hOff;
    (*(volatile unsigned short *)0x04000012) = vOff;

    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);
}




void initPlayer() {

    player.width = 24;
    player.height = 24;
    player.numOfFrames = 2;
    player.dx = 2;
    player.dy = 2;
    player.x = 8;
    player.y = 16;
    player.direction = DOWN;

}

void updatePlayer() {


    int leftX = player.x;
    int rightX = player.x + player.width - 1;
    int topY = player.y;
    int bottomY = player.y + player.height - 1;




    player.isMoving = 0;
    safe = 0;


    if (!safe && (~(buttons) & ((1<<5)))) {
        player.direction = LEFT;
        player.isMoving = 1;


        if ((player.x > 0) && !colorAt1(leftX - player.dx, topY) && !colorAt1(leftX - player.dx, bottomY)) {
            player.x -= player.dx;
        }
    }


    if (!safe && (~(buttons) & ((1<<6)))) {
        player.direction = UP;
        player.isMoving = 1;


        if ((level == 1) && (player.y > 0) && !colorAt1(leftX, topY - player.dy) && !colorAt1(rightX, topY - player.dy)) {
            player.y -= player.dy;
        }
    }


    if (!safe && (~(buttons) & ((1<<7)))) {
        player.direction = DOWN;
        player.isMoving = 1;


        if ((player.y + player.height < 256) && !colorAt1(leftX, bottomY + player.dy) && !colorAt1(rightX, bottomY + player.dy)) {
            player.y += player.dy;
        }
    }


    if (!safe && (~(buttons) & ((1<<4)))) {
        player.direction = RIGHT;
        player.isMoving = 1;


        if ((level == 1) && (player.x + player.width < 256) && !colorAt1(rightX + player.dx, topY) && !colorAt1(rightX + player.dx, bottomY)) {
            player.x += player.dx;
        }
    }


    if (collision(player.x, player.y, player.width, player.height, table.x + (table.width/2), table.y + (table.height/2), 1, 1) && (!(~(oldButtons) & ((1<<9))) && (~(buttons) & ((1<<9))))) {
        safe = !safe;
        mgba_printf("player safety: %d", safe);
    }


    if (player.isMoving) {

        if (player.timeUntilNextFrame % 10 == 0) {
            player.frame = (player.frame + 1) % player.numOfFrames;
        };
        if (player.timeUntilNextFrame == 0) {
            player.timeUntilNextFrame = 10;
        }
        player.timeUntilNextFrame--;

    } else {
        player.frame = 0;
        player.timeUntilNextFrame = 10;
    }



        if (hOff + 240 < 256 && player.x - hOff >= 240 / 2) {
            hOff += 2;
        }
        if (hOff > 0 && player.x - hOff <= 240 / 2){
            hOff -= 2;
        }
        if (vOff + 160 < 256 && player.y - vOff >= 160 / 2) {
            vOff += 2;
        }
        if (vOff > 0 && player.y - vOff <= 160 / 2) {
            vOff -= 2;
        }

}

void drawPlayer() {

    if (!safe) {
        shadowOAM[0].attr0 = (0<<13) | (0<<14) | ((player.y - vOff) & 0xFF);
        shadowOAM[0].attr1 = (2<<14) | ((player.x - hOff) & 0x1FF);
        shadowOAM[0].attr2 = (((0) & 0xF) << 12) | ((((player.frame * 4)) * 32 + ((player.direction * 4))) & 0x3FF);
    } else {
        shadowOAM[0].attr0 = (0<<13) | (0<<14) | ((player.y - vOff) & 0xFF);
        shadowOAM[0].attr1 = (2<<14) | ((player.x - hOff) & 0x1FF);
        shadowOAM[0].attr2 = (((0) & 0xF) << 12) | ((((player.frame * 4)) * 32 + ((player.direction * 4))) & 0x3FF);
    }

    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);
}



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

    if ((~(buttons) & ((1<<4)))) {
        player.direction = RIGHT;
        player.isMoving = 1;
        if ((player.x + player.width < 1024)) {
            if ((~(buttons) & ((1<<0)))) {
                player.x += (player.dx * 2);
            }
            player.x += player.dx;
        }
    }

    if ((~(buttons) & ((1<<5)))) {
        player.direction = LEFT;
        player.isMoving = 1;
        if ((player.x > 0)) {
            if ((~(buttons) & ((1<<0)))) {
                player.x -= (player.dx * 2);
            }
            player.x -= player.dx;
        }
    }


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


    if (player.x > 240 / 2 - player.width / 2) {
        hOff = player.x - ((currSB - 26) * 256) - (240 / 2) + player.width/2;
    }

    if (hOff > 256) {
        currSB++;
        hOff -= 256;
        (*(volatile unsigned short*)0x4000008) = ((currSB) << 8) | ((1) << 2) | (1 << 14) | (1 << 7);
    }

    if (hOff <= 0) {
        currSB--;
        hOff += 256;
        (*(volatile unsigned short*)0x4000008) = ((currSB) << 8) | ((1) << 2) | (1 << 14) | (1 << 7);
   }


    if (currSB == 29 && hOff > 0) {
        hOff = 0;
    }

    (*(volatile unsigned short *)0x04000010) = hOff;

    if (collision(player.x, player.y, player.width, player.height, 390, 90, 44, 21) && (!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        initGame();
        goToGame();
    }

    if (collision(player.x, player.y, player.width, player.height, 786, 90, 44, 21) && (!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        goToInstructions();
    }
}

void drawPlayerS() {
        shadowOAM[0].attr0 = (0<<13) | (0<<14) | ((player.y) & 0xFF);
        shadowOAM[0].attr1 = (2<<14) | ((player.x - (hOff + ((currSB - 26) * 256))) & 0x1FF);
        shadowOAM[0].attr2 = (((0) & 0xF) << 12) | ((((player.frame * 4)) * 32 + ((player.direction * 4))) & 0x3FF);
}




void initDogs() {


    dogs[0].width = 32;
    dogs[0].height = 32;
    dogs[0].x = 96;
    dogs[0].y = 104;
    dogs[0].dx = 2;
    dogs[0].dy = 2;
    dogs[0].direction = LEFT;
    dogs[0].numOfFrames = 2;
    dogs[0].isMoving = 0;


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
    for (int i = 0; i < 3; i++) {

        dogs[i].isMoving = 1;


        int leftX = dogs[i].x;
        int rightX = dogs[i].x + dogs[i].width - 1;
        int topY = dogs[i].y;
        int bottomY = dogs[i].y + dogs[i].height - 1;


        if (!safe && collision(player.x, player.y, player.width, player.height, dogs[i].x, dogs[i].y, dogs[i].width, dogs[i].height)) {
            player.x = 8;
            player.y = 16;
            hOff = 0;
            vOff = 0;
            lives--;
        }

        if (dogs[i].isMoving) {



            int buffer = 2;
            int shift = 0;

            if (!colorAt1(leftX - buffer, bottomY - 1 + buffer) && !colorAt1(leftX - buffer, topY + 1 - buffer)) {
                dogs[i].dx = -dogs[i].dx;
                dogs[i].x -= shift;
                dogs[i].y += shift;
            }

            if (!colorAt1(rightX + buffer, bottomY - 1 + buffer) && !colorAt1(rightX + buffer, topY + 1 - buffer)) {
                dogs[i].dx = -dogs[i].dx;
                dogs[i].y += shift;
            }

            if (!colorAt1(leftX + 1 + buffer, topY - buffer) && !colorAt1(rightX - 1 + buffer, topY - buffer)) {
                dogs[i].dy = -dogs[i].dy;
                dogs[i].y -= shift;
            }

            if (!colorAt1(leftX + 1 + buffer, bottomY + buffer) && !colorAt1(rightX - 1 + buffer, bottomY + buffer)) {
                dogs[i].dy = -dogs[i].dy;
                dogs[i].y += shift;
            }



            if (dogs[i].dx > 0 && dogs[i].dy > 0) {
                dogs[i].direction = RIGHT;
            }
            if (dogs[i].dx > 0 && dogs[i].dy < 0) {
                dogs[i].direction = UP;
            }
            if (dogs[i].dx < 0 && dogs[i].dy < 0) {
                dogs[i].direction = DOWN;
            }
            if (dogs[i].dx < 0 && dogs[i].dy > 0) {
                dogs[i].direction = LEFT;
            }

            dogs[i].x += dogs[i].dx;
            dogs[i].y += dogs[i].dy;


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

    for (int i = 0; i < 3; i++) {

        shadowOAM[1].attr0 = (0<<13) | ((dogs[0].y - vOff) & 0xFF);
        shadowOAM[1].attr1 = (2<<14) | ((dogs[0].x - hOff) & 0x1FF);
        shadowOAM[1].attr2 = (((0) & 0xF) << 12) | ((((8 + dogs[0].frame * 4)) * 32 + ((dogs[0].direction * 4))) & 0x3FF);


        shadowOAM[2].attr0 = (0<<13) | ((dogs[1].y - vOff) & 0xFF);
        shadowOAM[2].attr1 = (2<<14) | ((dogs[1].x - hOff) & 0x1FF);
        shadowOAM[2].attr2 = (((1) & 0xF) << 12) | ((((8 + dogs[1].frame * 4)) * 32 + ((16 + dogs[1].direction * 4))) & 0x3FF);

    }
}




void initToys() {


    for (int i = 0; i < 6; i++) {
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
# 568 "game.c"
}

void updateToys() {


    for (int i = 0; i < 6; i++) {
        if ((!carrying) && collision(sToy[i].x, sToy[i].y, 8, 8, player.x, player.y, player.width, player.height)) {
            if ((!(~(oldButtons) & ((1<<0))) && (~(buttons) & ((1<<0))))) {
                sToy[i].isMoving = 1;
                carrying = 1;
                soundB.isPlaying = 1;
                playSoundB(meow_data, meow_length, 0);
            }
        }

        if ((!(~(oldButtons) & ((1<<1))) && (~(buttons) & ((1<<1)))) && carrying && (collision(player.x, player.y, player.width, player.height, basket.x, basket.y, basket.width, basket.height))) {
            carrying = 0;
            sToy[i].hide = 1;
            score += 1;
            playSoundB(scoreUp_data, scoreUp_length, 0);
        }
    }
}

void drawToys() {

    for (int i = 0; i < 6; i++) {

        if (!sToy[i].hide) {
            if (!sToy[i].isMoving) {
                shadowOAM[4 + (i*2)].attr0 = (0<<13) | ((sToy[i].y - vOff) & 0xFF);
                shadowOAM[4 + (i*2)].attr1 = ((sToy[i].x - hOff) & 0x1FF);
                shadowOAM[4 + (i*2)].attr2 = (((0) & 0xF) << 12) | ((((sToy[i].frame)) * 32 + (16)) & 0x3FF);
            } else if (carrying) {
                shadowOAM[4 + (i*2)].attr0 = (0<<13) | ((player.y + (player.height / 2) - vOff) & 0xFF);
                shadowOAM[4 + (i*2)].attr1 = ((player.x + (player.width / 2) - hOff) & 0x1FF);
                shadowOAM[4 + (i*2)].attr2 = (((0) & 0xF) << 12) | ((((sToy[i].frame)) * 32 + ((16 + player.direction))) & 0x3FF);
            }

        } else {
            shadowOAM[4].attr0 = (2<<8);
        }
    }
# 619 "game.c"
}




void initLives() {
    for (int i = 0; i < 3; i++) {
        life[i].width = 16;
        life[i].height = 8;
        life[i].x = 184 + (i * 16);
        life[i].y = 8;

    }
}

void drawLives() {

    if (lives == 3) {
        shadowOAM[7].attr0 = (0<<13) | (1<<14) | ((8) & 0xFF);
        shadowOAM[7].attr1 = ((184) & 0x1FF);
        shadowOAM[7].attr2 = (((0) & 0xF) << 12) | (((31) * 32 + (0)) & 0x3FF);

        shadowOAM[9].attr0 = (0<<13) | (1<<14) | ((8) & 0xFF);
        shadowOAM[9].attr1 = ((201) & 0x1FF);
        shadowOAM[9].attr2 = (((0) & 0xF) << 12) | (((31) * 32 + (0)) & 0x3FF);

        shadowOAM[11].attr0 = (0<<13) | (1<<14) | ((8) & 0xFF);
        shadowOAM[11].attr1 = ((218) & 0x1FF);
        shadowOAM[11].attr2 = (((0) & 0xF) << 12) | (((31) * 32 + (0)) & 0x3FF);

    } else if (lives == 2) {
        shadowOAM[7].attr0 = (0<<13) | (1<<14) | ((8) & 0xFF);
        shadowOAM[7].attr1 = ((184) & 0x1FF);
        shadowOAM[7].attr2 = (((0) & 0xF) << 12) | (((31) * 32 + (0)) & 0x3FF);

        shadowOAM[9].attr0 = (0<<13) | (1<<14) | ((8) & 0xFF);
        shadowOAM[9].attr1 = ((201) & 0x1FF);
        shadowOAM[9].attr2 = (((0) & 0xF) << 12) | (((31) * 32 + (0)) & 0x3FF);

        shadowOAM[11].attr0 = (2<<8);

    } else if (lives == 1) {

        ((u16 *)0x5000200)[2] = ((u16 *)0x5000200)[7];

        shadowOAM[7].attr0 = (0<<13) | (1<<14) | ((8) & 0xFF);
        shadowOAM[7].attr1 = ((184) & 0x1FF);
        shadowOAM[7].attr2 = (((0) & 0xF) << 12) | (((31) * 32 + (0)) & 0x3FF);

        shadowOAM[9].attr0 = (2<<8);

        shadowOAM[11].attr0 = (2<<8);


    } else if (lives == 0) {
        goToLose();
    }
}



void initBasket() {
    basket.x = 216;
    basket.y = 232;
    basket.height = 16;
    basket.width = 32;
}

void drawBasket() {
    shadowOAM[12].attr0 = (0<<13) | (1<<14) | ((basket.y) & 0xFF);
    shadowOAM[12].attr1 = (2<<14) | ((basket.x) & 0x1FF);
    shadowOAM[12].attr2 = (((0) & 0xF) << 12) | (((2) & 3) << 10) | (((12) * 32 + (0)) & 0x3FF);

    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);

}



void initSC() {
    SC.x = 8;
    SC.y = 8;
    SC.height = 8;
    SC.width = 32;
}

void drawSC() {

    shadowOAM[14].attr0 = (0<<13) | (1<<14) | ((SC.y) & 0xFF);
    shadowOAM[14].attr1 = (1<<14) | ((SC.x) & 0x1FF);
    shadowOAM[14].attr2 = (((0) & 0xF) << 12) | (((31) * 32 + (2)) & 0x3FF);

    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);


    if (((!(~(oldButtons) & ((1<<9))) && (~(buttons) & ((1<<9)))))|| (score == 5)) {
        goToWin();
    }
}


void initPoints() {
    points.width = 8;
    points.height = 8;
    points.x = 32;
    points.y = 8;
}

void drawPoints() {


    if (score == 0) {
        shadowOAM[15].attr0 = (0<<13) | ((points.y) & 0xFF);
        shadowOAM[15].attr1 = ((points.x) & 0x1FF);
        shadowOAM[15].attr2 = (((0) & 0xF) << 12) | (((31) * 32 + (15)) & 0x3FF);


    } else if (score < 10) {
        shadowOAM[15].attr0 = (0<<13) | ((points.y) & 0xFF);
        shadowOAM[15].attr1 = ((points.x + 8) & 0x1FF);
        shadowOAM[15].attr2 = (((0) & 0xF) << 12) | (((31) * 32 + (5 + score)) & 0x3FF);


    } else if ((score > 10) && (score < 20)) {
        shadowOAM[15].attr0 = (0<<13) | ((points.y) & 0xFF);
        shadowOAM[15].attr1 = ((points.x) & 0x1FF);
        shadowOAM[15].attr2 = (((0) & 0xF) << 12) | (((31) * 32 + (6)) & 0x3FF);

        shadowOAM[16].attr0 = (0<<13) | ((points.y) & 0xFF);
        shadowOAM[16].attr1 = ((points.x + 8) & 0x1FF);
        shadowOAM[16].attr2 = (((0) & 0xF) << 12) | (((31) * 32 + ((5 + score - 10))) & 0x3FF);



    } else if (score > 20) {
        shadowOAM[15].attr0 = (1<<13) | ((points.y) & 0xFF);
        shadowOAM[15].attr1 = ((points.x) & 0x1FF);
        shadowOAM[15].attr2 = (((0) & 0xF) << 12) | (((31) * 32 + (7)) & 0x3FF);

        shadowOAM[16].attr0 = (0<<13) | ((points.y) & 0xFF);
        shadowOAM[16].attr1 = ((points.x + 8) & 0x1FF);
        shadowOAM[16].attr2 = (((0) & 0xF) << 12) | (((31) * 32 + ((5 + score - 10))) & 0x3FF);
    }
}


void initTable() {
    if (level == 1) {
        table.x = 128;
        table.y = 168;
        table.width = 32;
        table.height = 64;
    }
}

void drawTable() {
    shadowOAM[17].attr0 = (1<<13) | (2<<14) | ((table.y) & 0xFF);
    shadowOAM[17].attr1 = (3<<14) | ((table.x) & 0x1FF);
    shadowOAM[17].attr2 = (((0) & 0xF) << 12) | (((11) * 32 + (4)) & 0x3FF) | (((0) & 3) << 10);
}
