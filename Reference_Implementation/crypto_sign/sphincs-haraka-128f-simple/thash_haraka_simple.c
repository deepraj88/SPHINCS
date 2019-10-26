#include <stdint.h>
#include <string.h>

#include "thash.h"
#include "address.h"
#include "params.h"

#include "haraka.h"

/**
 * Takes an array of inblocks concatenated arrays of SPX_N bytes.
 */
void thash(unsigned char *out, const unsigned char *in, unsigned int inblocks,
           const unsigned char *pub_seed, uint32_t addr[8])
{
    unsigned char buf[SPX_ADDR_BYTES + 35*SPX_N]; //Updated by Deepraj. Maximum size. Only two options 1 or 35. Make two functions later.
    unsigned char outbuf[32];
    unsigned char buf_tmp[64];
    int loop;
/*    static count_max = 0;
    if(count_max < inblocks) {
    	count_max = inblocks;
        printf("inblocks = %d\n",inblocks);
    }*/

    (void)pub_seed; /* Suppress an 'unused parameter' warning. */

    if (inblocks == 1) {
        /* F function */
        /* Since SPX_N may be smaller than 32, we need a temporary buffer. */
        //memset(buf_tmp, 0, 64);
    	for(loop=0;loop<64;loop++)
    		buf_tmp[loop] = 0;

        addr_to_bytes(buf_tmp, addr);
        //memcpy(buf_tmp + SPX_ADDR_BYTES, in, SPX_N);
        for(loop=0;loop<SPX_N;loop++)
        	buf_tmp[SPX_ADDR_BYTES+loop] = in[loop];

        haraka512(outbuf, buf_tmp);
        //memcpy(out, outbuf, SPX_N);
        for(loop=0;loop<SPX_N;loop++)
        	out[loop] = outbuf[loop];
    } else {
        /* All other tweakable hashes*/
        addr_to_bytes(buf, addr);
        //memcpy(buf + SPX_ADDR_BYTES, in, inblocks * SPX_N);
        for(loop=0;loop<inblocks*SPX_N;loop++)
        	buf[SPX_ADDR_BYTES+loop] = in[loop];
        haraka_S(out, SPX_N, buf, SPX_ADDR_BYTES + inblocks*SPX_N);
    }
}
