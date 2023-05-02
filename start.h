
//{{BLOCK(start)

//======================================================================
//
//	start, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 212 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 6784 + 4096 = 11392
//
//	Time-stamp: 2023-04-04, 10:57:26
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_START_H
#define GRIT_START_H

#define startTilesLen 6784
extern const unsigned short startTiles[3392];

#define startMapLen 4096
extern const unsigned short startMap[2048];

#define startPalLen 512
extern const unsigned short startPal[256];

#endif // GRIT_START_H

//}}BLOCK(start)
