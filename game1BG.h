
//{{BLOCK(game1BG)

//======================================================================
//
//	game1BG, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 9 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 288 + 2048 = 2848
//
//	Time-stamp: 2023-04-04, 15:26:23
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GAME1BG_H
#define GRIT_GAME1BG_H

#define game1BGTilesLen 288
extern const unsigned short game1BGTiles[144];

#define game1BGMapLen 2048
extern const unsigned short game1BGMap[1024];

#define game1BGPalLen 512
extern const unsigned short game1BGPal[256];

#endif // GRIT_GAME1BG_H

//}}BLOCK(game1BG)
