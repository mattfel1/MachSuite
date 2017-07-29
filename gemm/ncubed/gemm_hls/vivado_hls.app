<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" projectType="C/C++" name="gemm_hls" top="gemm">
    <files>
        <file name="../../local_support.c" sc="0" tb="1" cflags=" -I../../../../common "/>
        <file name="../../../../common/support.c" sc="0" tb="1" cflags=" -I../../../../common "/>
        <file name="../../../../common/harness.c" sc="0" tb="1" cflags=" -I../../../../common "/>
        <file name="check.data" sc="0" tb="false" cflags=""/>
        <file name="input.data" sc="0" tb="false" cflags=""/>
        <file name="support.h" sc="0" tb="false" cflags="-I../../common"/>
        <file name="gemm.c" sc="0" tb="false" cflags="-I../../common"/>
    </files>
    <solutions>
        <solution name="solution" status=""/>
    </solutions>
</AutoPilot:project>

