#include "gemm.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void gemm::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m1_address0\" :  \"" << m1_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m1_ce0\" :  \"" << m1_ce0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m1_q0\" :  \"" << m1_q0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m1_address1\" :  \"" << m1_address1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m1_ce1\" :  \"" << m1_ce1.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m1_q1\" :  \"" << m1_q1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m2_address0\" :  \"" << m2_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m2_ce0\" :  \"" << m2_ce0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m2_q0\" :  \"" << m2_q0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m2_address1\" :  \"" << m2_address1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m2_ce1\" :  \"" << m2_ce1.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m2_q1\" :  \"" << m2_q1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"prod_address0\" :  \"" << prod_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"prod_ce0\" :  \"" << prod_ce0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"prod_we0\" :  \"" << prod_we0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"prod_d0\" :  \"" << prod_d0.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

