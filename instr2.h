
//{{BLOCK(instr2)

//======================================================================
//
//	instr2, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 265 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 16960 + 2048 = 19520
//
//	Time-stamp: 2023-05-02, 15:04:57
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_INSTR2_H
#define GRIT_INSTR2_H

#define instr2TilesLen 16960
extern const unsigned short instr2Tiles[8480];

#define instr2MapLen 2048
extern const unsigned short instr2Map[1024];

#define instr2PalLen 512
extern const unsigned short instr2Pal[256];

#endif // GRIT_INSTR2_H

//}}BLOCK(instr2)
