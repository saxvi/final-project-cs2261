
//{{BLOCK(extra)

//======================================================================
//
//	extra, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 326 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 20864 + 2048 = 23424
//
//	Time-stamp: 2023-05-02, 15:41:12
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_EXTRA_H
#define GRIT_EXTRA_H

#define extraTilesLen 20864
extern const unsigned short extraTiles[10432];

#define extraMapLen 2048
extern const unsigned short extraMap[1024];

#define extraPalLen 512
extern const unsigned short extraPal[256];

#endif // GRIT_EXTRA_H

//}}BLOCK(extra)
