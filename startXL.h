
//{{BLOCK(startXL)

//======================================================================
//
//	startXL, 1024x256@8, 
//	+ palette 256 entries, not compressed
//	+ 232 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 128x32 
//	Total size: 512 + 14848 + 8192 = 23552
//
//	Time-stamp: 2023-04-30, 17:01:27
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_STARTXL_H
#define GRIT_STARTXL_H

#define startXLTilesLen 14848
extern const unsigned short startXLTiles[7424];

#define startXLMapLen 8192
extern const unsigned short startXLMap[4096];

#define startXLPalLen 512
extern const unsigned short startXLPal[256];

#endif // GRIT_STARTXL_H

//}}BLOCK(startXL)
