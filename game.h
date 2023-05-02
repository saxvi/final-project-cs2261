#include "sprites.h"
// constants
    #define DOGCOUNT 3
    #define SMALLTOYS 6
    #define MEDTOYS 3
    #define LARGETOYS 2
    #define STARTINGLIVES 3
    #define MAPWIDTH 256
    #define MAPHEIGHT 256
    #define SCREENWIDTH 240
    #define SCREENHEIGHT 160

// variables

    // game info
    extern int score;
    extern int lives;
    extern int level;

    // game objects
    extern SPRITE player;

    extern SPRITE basket;
    extern SPRITE table;

    extern SPRITE points;
    extern SPRITE SC;

    extern SPRITE life[STARTINGLIVES];
    extern SPRITE dogs[DOGCOUNT];
    extern SPRITE sToy[SMALLTOYS];
    extern SPRITE mToy[MEDTOYS];
    extern SPRITE lToy[LARGETOYS];

    // util
    extern int safe;
    extern int state;
    extern int vOff;
    extern int hOff;
    extern int time;

// game prototypes

    // dynamic

    // start
    void initStart();
    void updateStart();
    void drawStart();

    // game
    void initGame();
    void updateGame();
    void drawGame();

    // player
    void initPlayer();
    void updatePlayer();
    void drawPlayer();

    // dogs
    void initDogs();
    void updateDogs();
    void drawDogs();

    // toys
    void initToys();
    void updateToys();
    void drawToys();

    // score points
    void initPoints();
    void updatePoints();
    void drawPoints();

    // static

    // lives
    void initLives();
    void drawLives();

    // basket
    void initBasket();
    void drawBasket();

    // SCORE
    void initSC();
    void drawSC();

    // table
    void initTable();
    void drawTable();








