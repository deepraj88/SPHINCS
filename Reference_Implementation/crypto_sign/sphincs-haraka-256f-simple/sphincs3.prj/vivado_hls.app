<project xmlns="com.autoesl.autopilot.project" name="sphincs3.prj" top="crypto_sign_open">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow askAgain="false" name="csim" csimMode="2" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../../newtest_sign.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas -Wno-unknown-pragmas"/>
        <file name="address.c" sc="0" tb="false" cflags=""/>
        <file name="aes.c" sc="0" tb="false" cflags=""/>
        <file name="fors.c" sc="0" tb="false" cflags=""/>
        <file name="haraka.c" sc="0" tb="false" cflags=""/>
        <file name="hash_haraka.c" sc="0" tb="false" cflags=""/>
        <file name="rng.c" sc="0" tb="false" cflags=""/>
        <file name="sign.c" sc="0" tb="false" cflags=""/>
        <file name="thash_haraka_simple.c" sc="0" tb="false" cflags=""/>
        <file name="utils.c" sc="0" tb="false" cflags=""/>
        <file name="wots.c" sc="0" tb="false" cflags=""/>
    </files>
    <solutions xmlns="">
        <solution name="sign_open" status="active"/>
        <solution name="keypair" status="inactive"/>
    </solutions>
</project>

