
//{{BLOCK(instr2)

//======================================================================
//
//	instr2, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 254 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 16256 + 2048 = 18816
//
//	Time-stamp: 2023-05-02, 22:21:10
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_INSTR2_H
#define GRIT_INSTR2_H

#define instr2TilesLen 16256
extern const unsigned short instr2Tiles[8128];

#define instr2MapLen 2048
extern const unsigned short instr2Map[1024];

#define instr2PalLen 512
extern const unsigned short instr2Pal[256];

#endif // GRIT_INSTR2_H

//}}BLOCK(instr2)
