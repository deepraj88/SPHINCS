<project xmlns="com.autoesl.autopilot.project" top="crypto_sign_signature" name="sphincs1_sha.prj">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow askAgain="false" name="csim" csimMode="2" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../../newtest_sign.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="wots.c" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="utils.c" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="thash_sha256_simple.c" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="sign.c" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="sha256.c" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="rng.c" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="hash_sha256.c" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="fors.c" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="aes.c" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="address.c" sc="0" tb="false" cflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="keypair" status="inactive"/>
        <solution name="sign" status="active"/>
    </solutions>
</project>

