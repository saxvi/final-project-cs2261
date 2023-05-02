
//{{BLOCK(gameBG)

//======================================================================
//
//	gameBG, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 156 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 9984 + 2048 = 12544
//
//	Time-stamp: 2023-05-02, 11:28:26
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GAMEBG_H
#define GRIT_GAMEBG_H

#define gameBGTilesLen 9984
extern const unsigned short gameBGTiles[4992];

#define gameBGMapLen 2048
extern const unsigned short gameBGMap[1024];

#define gameBGPalLen 512
extern const unsigned short gameBGPal[256];

#endif // GRIT_GAMEBG_H

//}}BLOCK(gameBG)
