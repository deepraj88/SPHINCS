#include <stdint.h>
#include <string.h>

#include "thash.h"
#include "address.h"
#include "params.h"
#include "sha256.h"

/**
 * Takes an array of inblocks concatenated arrays of SPX_N bytes.
 */
void thash(unsigned char *out, const unsigned char *in, unsigned int inblocks,
           const unsigned char *pub_seed, uint32_t addr[8])
{
    unsigned char buf[SPX_SHA256_ADDR_BYTES + 35*SPX_N];
    unsigned char outbuf[SPX_SHA256_OUTPUT_BYTES];
    uint8_t sha2_state[40];
    int loop;
/*    static block_count=0;
    if(inblocks>block_count){
    	block_count = inblocks;
    	printf("inblocks = %d\n",inblocks);
    }*/

    (void)pub_seed; /* Suppress an 'unused parameter' warning. */

    /* Retrieve precomputed state containing pub_seed */
    //memcpy(sha2_state, state_seeded, 40 * sizeof(uint8_t));
    for(loop=0;loop<40;loop++)
    	sha2_state[loop] = state_seeded[loop];

    compress_address(buf, addr);
    //memcpy(buf + SPX_SHA256_ADDR_BYTES, in, inblocks * SPX_N);
    for(loop=0;loop<inblocks*SPX_N;loop++)
    	buf[loop + SPX_SHA256_ADDR_BYTES] = in[loop];

    sha256_inc_finalize(outbuf, sha2_state, buf, SPX_SHA256_ADDR_BYTES + inblocks*SPX_N);
    //memcpy(out, outbuf, SPX_N);
    for(loop=0;loop<SPX_N;loop++)
    	out[loop] = outbuf[loop];
}
