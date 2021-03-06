// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "ap_stream.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "m1"
#define AUTOTB_TVIN_m1  "../tv/cdatafile/c.gemm.autotvin_m1.dat"
// wrapc file define: "m2"
#define AUTOTB_TVIN_m2  "../tv/cdatafile/c.gemm.autotvin_m2.dat"
// wrapc file define: "prod"
#define AUTOTB_TVOUT_prod  "../tv/cdatafile/c.gemm.autotvout_prod.dat"
#define AUTOTB_TVIN_prod  "../tv/cdatafile/c.gemm.autotvin_prod.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "prod"
#define AUTOTB_TVOUT_PC_prod  "../tv/rtldatafile/rtl.gemm.autotvout_prod.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			m1_depth = 0;
			m2_depth = 0;
			prod_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{m1 " << m1_depth << "}\n";
			total_list << "{m2 " << m2_depth << "}\n";
			total_list << "{prod " << prod_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int m1_depth;
		int m2_depth;
		int prod_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern "C" void gemm (
double m1[4096],
double m2[4096],
double prod[4096]);

extern "C" void AESL_WRAP_gemm (
double m1[4096],
double m2[4096],
double prod[4096])
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;


		// output port post check: "prod"
		aesl_fh.read(AUTOTB_TVOUT_PC_prod, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_prod, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_prod, AESL_token); // data

			sc_bv<64> *prod_pc_buffer = new sc_bv<64>[4096];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'prod', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'prod', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					prod_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_prod, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_prod))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: prod
				{
					// bitslice(63, 0)
					// {
						// celement: prod(63, 0)
						// {
							sc_lv<64>* prod_lv0_0_4095_1 = new sc_lv<64>[4096];
						// }
					// }

					// bitslice(63, 0)
					{
						int hls_map_index = 0;
						// celement: prod(63, 0)
						{
							// carray: (0) => (4095) @ (1)
							for (int i_0 = 0; i_0 <= 4095; i_0 += 1)
							{
								if (&(prod[0]) != NULL) // check the null address if the c port is array or others
								{
									prod_lv0_0_4095_1[hls_map_index].range(63, 0) = sc_bv<64>(prod_pc_buffer[hls_map_index].range(63, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(63, 0)
					{
						int hls_map_index = 0;
						// celement: prod(63, 0)
						{
							// carray: (0) => (4095) @ (1)
							for (int i_0 = 0; i_0 <= 4095; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : prod[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : prod[0]
								// output_left_conversion : *(long long*)&prod[i_0]
								// output_type_conversion : (prod_lv0_0_4095_1[hls_map_index]).to_uint64()
								if (&(prod[0]) != NULL) // check the null address if the c port is array or others
								{
									*(long long*)&prod[i_0] = (prod_lv0_0_4095_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] prod_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "m1"
		char* tvin_m1 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_m1);

		// "m2"
		char* tvin_m2 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_m2);

		// "prod"
		char* tvin_prod = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_prod);
		char* tvout_prod = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_prod);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_m1, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_m1, tvin_m1);

		sc_bv<64>* m1_tvin_wrapc_buffer = new sc_bv<64>[4096];

		// RTL Name: m1
		{
			// bitslice(63, 0)
			{
				int hls_map_index = 0;
				// celement: m1(63, 0)
				{
					// carray: (0) => (4095) @ (1)
					for (int i_0 = 0; i_0 <= 4095; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : m1[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : m1[0]
						// regulate_c_name       : m1
						// input_type_conversion : *(long long*)&m1[i_0]
						if (&(m1[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<64> m1_tmp_mem;
							m1_tmp_mem = *(long long*)&m1[i_0];
							m1_tvin_wrapc_buffer[hls_map_index].range(63, 0) = m1_tmp_mem.range(63, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 4096; i++)
		{
			sprintf(tvin_m1, "%s\n", (m1_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_m1, tvin_m1);
		}

		tcl_file.set_num(4096, &tcl_file.m1_depth);
		sprintf(tvin_m1, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_m1, tvin_m1);

		// release memory allocation
		delete [] m1_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_m2, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_m2, tvin_m2);

		sc_bv<64>* m2_tvin_wrapc_buffer = new sc_bv<64>[4096];

		// RTL Name: m2
		{
			// bitslice(63, 0)
			{
				int hls_map_index = 0;
				// celement: m2(63, 0)
				{
					// carray: (0) => (4095) @ (1)
					for (int i_0 = 0; i_0 <= 4095; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : m2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : m2[0]
						// regulate_c_name       : m2
						// input_type_conversion : *(long long*)&m2[i_0]
						if (&(m2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<64> m2_tmp_mem;
							m2_tmp_mem = *(long long*)&m2[i_0];
							m2_tvin_wrapc_buffer[hls_map_index].range(63, 0) = m2_tmp_mem.range(63, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 4096; i++)
		{
			sprintf(tvin_m2, "%s\n", (m2_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_m2, tvin_m2);
		}

		tcl_file.set_num(4096, &tcl_file.m2_depth);
		sprintf(tvin_m2, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_m2, tvin_m2);

		// release memory allocation
		delete [] m2_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_prod, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_prod, tvin_prod);

		sc_bv<64>* prod_tvin_wrapc_buffer = new sc_bv<64>[4096];

		// RTL Name: prod
		{
			// bitslice(63, 0)
			{
				int hls_map_index = 0;
				// celement: prod(63, 0)
				{
					// carray: (0) => (4095) @ (1)
					for (int i_0 = 0; i_0 <= 4095; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : prod[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : prod[0]
						// regulate_c_name       : prod
						// input_type_conversion : *(long long*)&prod[i_0]
						if (&(prod[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<64> prod_tmp_mem;
							prod_tmp_mem = *(long long*)&prod[i_0];
							prod_tvin_wrapc_buffer[hls_map_index].range(63, 0) = prod_tmp_mem.range(63, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 4096; i++)
		{
			sprintf(tvin_prod, "%s\n", (prod_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_prod, tvin_prod);
		}

		tcl_file.set_num(4096, &tcl_file.prod_depth);
		sprintf(tvin_prod, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_prod, tvin_prod);

		// release memory allocation
		delete [] prod_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		gemm(m1, m2, prod);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_prod, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_prod, tvout_prod);

		sc_bv<64>* prod_tvout_wrapc_buffer = new sc_bv<64>[4096];

		// RTL Name: prod
		{
			// bitslice(63, 0)
			{
				int hls_map_index = 0;
				// celement: prod(63, 0)
				{
					// carray: (0) => (4095) @ (1)
					for (int i_0 = 0; i_0 <= 4095; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : prod[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : prod[0]
						// regulate_c_name       : prod
						// input_type_conversion : *(long long*)&prod[i_0]
						if (&(prod[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<64> prod_tmp_mem;
							prod_tmp_mem = *(long long*)&prod[i_0];
							prod_tvout_wrapc_buffer[hls_map_index].range(63, 0) = prod_tmp_mem.range(63, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 4096; i++)
		{
			sprintf(tvout_prod, "%s\n", (prod_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_prod, tvout_prod);
		}

		tcl_file.set_num(4096, &tcl_file.prod_depth);
		sprintf(tvout_prod, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_prod, tvout_prod);

		// release memory allocation
		delete [] prod_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "m1"
		delete [] tvin_m1;
		// release memory allocation: "m2"
		delete [] tvin_m2;
		// release memory allocation: "prod"
		delete [] tvout_prod;
		delete [] tvin_prod;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

