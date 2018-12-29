LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

TOMMATH_SRC := tommath

LOCAL_MODULE := tommath
LOCAL_CFLAGS := -Wall -W -Wsign-compare \
		-O3 -funroll-loops \
		-fomit-frame-pointer \
		-Ijni/tommath

LOCAL_C_INCLUDES := $(TOMMATH_SRC)

LOCAL_SRC_FILES := \
	$(TOMMATH_SRC)/bn_error.c \
	$(TOMMATH_SRC)/bn_fast_mp_invmod.c \
	$(TOMMATH_SRC)/bn_fast_mp_montgomery_reduce.c \
	$(TOMMATH_SRC)/bn_fast_s_mp_mul_digs.c \
	$(TOMMATH_SRC)/bn_fast_s_mp_mul_high_digs.c \
	$(TOMMATH_SRC)/bn_fast_s_mp_sqr.c \
	$(TOMMATH_SRC)/bn_mp_2expt.c \
	$(TOMMATH_SRC)/bn_mp_abs.c \
	$(TOMMATH_SRC)/bn_mp_add.c \
	$(TOMMATH_SRC)/bn_mp_add_d.c \
	$(TOMMATH_SRC)/bn_mp_addmod.c \
	$(TOMMATH_SRC)/bn_mp_and.c \
	$(TOMMATH_SRC)/bn_mp_clamp.c \
	$(TOMMATH_SRC)/bn_mp_clear.c \
	$(TOMMATH_SRC)/bn_mp_clear_multi.c \
	$(TOMMATH_SRC)/bn_mp_cmp.c \
	$(TOMMATH_SRC)/bn_mp_cmp_d.c \
	$(TOMMATH_SRC)/bn_mp_cmp_mag.c \
	$(TOMMATH_SRC)/bn_mp_cnt_lsb.c \
	$(TOMMATH_SRC)/bn_mp_copy.c \
	$(TOMMATH_SRC)/bn_mp_count_bits.c \
	$(TOMMATH_SRC)/bn_mp_div.c \
	$(TOMMATH_SRC)/bn_mp_div_2.c \
	$(TOMMATH_SRC)/bn_mp_div_2d.c \
	$(TOMMATH_SRC)/bn_mp_div_3.c \
	$(TOMMATH_SRC)/bn_mp_div_d.c \
	$(TOMMATH_SRC)/bn_mp_dr_is_modulus.c \
	$(TOMMATH_SRC)/bn_mp_dr_reduce.c \
	$(TOMMATH_SRC)/bn_mp_dr_setup.c \
	$(TOMMATH_SRC)/bn_mp_exch.c \
	$(TOMMATH_SRC)/bn_mp_expt_d.c \
	$(TOMMATH_SRC)/bn_mp_exptmod.c \
	$(TOMMATH_SRC)/bn_mp_exptmod_fast.c \
	$(TOMMATH_SRC)/bn_mp_exteuclid.c \
	$(TOMMATH_SRC)/bn_mp_fread.c \
	$(TOMMATH_SRC)/bn_mp_fwrite.c \
	$(TOMMATH_SRC)/bn_mp_gcd.c \
	$(TOMMATH_SRC)/bn_mp_get_int.c \
	$(TOMMATH_SRC)/bn_mp_grow.c \
	$(TOMMATH_SRC)/bn_mp_init.c \
	$(TOMMATH_SRC)/bn_mp_init_copy.c \
	$(TOMMATH_SRC)/bn_mp_init_multi.c \
	$(TOMMATH_SRC)/bn_mp_init_set.c \
	$(TOMMATH_SRC)/bn_mp_init_set_int.c \
	$(TOMMATH_SRC)/bn_mp_init_size.c \
	$(TOMMATH_SRC)/bn_mp_invmod.c \
	$(TOMMATH_SRC)/bn_mp_invmod_slow.c \
	$(TOMMATH_SRC)/bn_mp_is_square.c \
	$(TOMMATH_SRC)/bn_mp_jacobi.c \
	$(TOMMATH_SRC)/bn_mp_karatsuba_mul.c \
	$(TOMMATH_SRC)/bn_mp_karatsuba_sqr.c \
	$(TOMMATH_SRC)/bn_mp_lcm.c \
	$(TOMMATH_SRC)/bn_mp_lshd.c \
	$(TOMMATH_SRC)/bn_mp_mod.c \
	$(TOMMATH_SRC)/bn_mp_mod_2d.c \
	$(TOMMATH_SRC)/bn_mp_mod_d.c \
	$(TOMMATH_SRC)/bn_mp_montgomery_calc_normalization.c \
	$(TOMMATH_SRC)/bn_mp_montgomery_reduce.c \
	$(TOMMATH_SRC)/bn_mp_montgomery_setup.c \
	$(TOMMATH_SRC)/bn_mp_mul.c \
	$(TOMMATH_SRC)/bn_mp_mul_2.c \
	$(TOMMATH_SRC)/bn_mp_mul_2d.c \
	$(TOMMATH_SRC)/bn_mp_mul_d.c \
	$(TOMMATH_SRC)/bn_mp_mulmod.c \
	$(TOMMATH_SRC)/bn_mp_n_root.c \
	$(TOMMATH_SRC)/bn_mp_neg.c \
	$(TOMMATH_SRC)/bn_mp_or.c \
	$(TOMMATH_SRC)/bn_mp_prime_fermat.c \
	$(TOMMATH_SRC)/bn_mp_prime_is_divisible.c \
	$(TOMMATH_SRC)/bn_mp_prime_is_prime.c \
	$(TOMMATH_SRC)/bn_mp_prime_miller_rabin.c \
	$(TOMMATH_SRC)/bn_mp_prime_next_prime.c \
	$(TOMMATH_SRC)/bn_mp_prime_rabin_miller_trials.c \
	$(TOMMATH_SRC)/bn_mp_prime_random_ex.c \
	$(TOMMATH_SRC)/bn_mp_radix_size.c \
	$(TOMMATH_SRC)/bn_mp_radix_smap.c \
	$(TOMMATH_SRC)/bn_mp_rand.c \
	$(TOMMATH_SRC)/bn_mp_read_radix.c \
	$(TOMMATH_SRC)/bn_mp_read_signed_bin.c \
	$(TOMMATH_SRC)/bn_mp_read_unsigned_bin.c \
	$(TOMMATH_SRC)/bn_mp_reduce.c \
	$(TOMMATH_SRC)/bn_mp_reduce_2k.c \
	$(TOMMATH_SRC)/bn_mp_reduce_2k_l.c \
	$(TOMMATH_SRC)/bn_mp_reduce_2k_setup.c \
	$(TOMMATH_SRC)/bn_mp_reduce_2k_setup_l.c \
	$(TOMMATH_SRC)/bn_mp_reduce_is_2k.c \
	$(TOMMATH_SRC)/bn_mp_reduce_is_2k_l.c \
	$(TOMMATH_SRC)/bn_mp_reduce_setup.c \
	$(TOMMATH_SRC)/bn_mp_rshd.c \
	$(TOMMATH_SRC)/bn_mp_set.c \
	$(TOMMATH_SRC)/bn_mp_set_int.c \
	$(TOMMATH_SRC)/bn_mp_shrink.c \
	$(TOMMATH_SRC)/bn_mp_signed_bin_size.c \
	$(TOMMATH_SRC)/bn_mp_sqr.c \
	$(TOMMATH_SRC)/bn_mp_sqrmod.c \
	$(TOMMATH_SRC)/bn_mp_sqrt.c \
	$(TOMMATH_SRC)/bn_mp_sub.c \
	$(TOMMATH_SRC)/bn_mp_sub_d.c \
	$(TOMMATH_SRC)/bn_mp_submod.c \
	$(TOMMATH_SRC)/bn_mp_to_signed_bin.c \
	$(TOMMATH_SRC)/bn_mp_to_signed_bin_n.c \
	$(TOMMATH_SRC)/bn_mp_to_unsigned_bin.c \
	$(TOMMATH_SRC)/bn_mp_to_unsigned_bin_n.c \
	$(TOMMATH_SRC)/bn_mp_toom_mul.c \
	$(TOMMATH_SRC)/bn_mp_toom_sqr.c \
	$(TOMMATH_SRC)/bn_mp_toradix.c \
	$(TOMMATH_SRC)/bn_mp_toradix_n.c \
	$(TOMMATH_SRC)/bn_mp_unsigned_bin_size.c \
	$(TOMMATH_SRC)/bn_mp_xor.c \
	$(TOMMATH_SRC)/bn_mp_zero.c \
	$(TOMMATH_SRC)/bn_prime_tab.c \
	$(TOMMATH_SRC)/bn_reverse.c \
	$(TOMMATH_SRC)/bn_s_mp_add.c \
	$(TOMMATH_SRC)/bn_s_mp_exptmod.c \
	$(TOMMATH_SRC)/bn_s_mp_mul_digs.c \
	$(TOMMATH_SRC)/bn_s_mp_mul_high_digs.c \
	$(TOMMATH_SRC)/bn_s_mp_sqr.c \
	$(TOMMATH_SRC)/bn_s_mp_sub.c \
	$(TOMMATH_SRC)/bncore.c

include $(BUILD_STATIC_LIBRARY)
