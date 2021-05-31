make[1]: Entering directory '/home/user/OS/GuestOS/user'
src/bin/00hello_world.rs src/bin/ch2_hello_world.rs src/bin/ch2t_write0.rs src/bin/ch2_exit.rs src/bin/ch2_power.rs src/bin/01store_fault.rs src/bin/02power.rs src/bin/ch2_write1.rs
target/riscv64gc-unknown-none-elf/release/00hello_world target/riscv64gc-unknown-none-elf/release/ch2_hello_world target/riscv64gc-unknown-none-elf/release/ch2t_write0 target/riscv64gc-unknown-none-elf/release/ch2_exit target/riscv64gc-unknown-none-elf/release/ch2_power target/riscv64gc-unknown-none-elf/release/01store_fault target/riscv64gc-unknown-none-elf/release/02power target/riscv64gc-unknown-none-elf/release/ch2_write1
target/riscv64gc-unknown-none-elf/release/00hello_world.bin target/riscv64gc-unknown-none-elf/release/ch2_hello_world.bin target/riscv64gc-unknown-none-elf/release/ch2t_write0.bin target/riscv64gc-unknown-none-elf/release/ch2_exit.bin target/riscv64gc-unknown-none-elf/release/ch2_power.bin target/riscv64gc-unknown-none-elf/release/01store_fault.bin target/riscv64gc-unknown-none-elf/release/02power.bin target/riscv64gc-unknown-none-elf/release/ch2_write1.bin
rust-objcopy --binary-architecture=riscv64 target/riscv64gc-unknown-none-elf/release/00hello_world --strip-all -O binary  target/riscv64gc-unknown-none-elf/release/00hello_world.bin;  rust-objcopy --binary-architecture=riscv64 target/riscv64gc-unknown-none-elf/release/ch2_hello_world --strip-all -O binary  target/riscv64gc-unknown-none-elf/release/ch2_hello_world.bin;  rust-objcopy --binary-architecture=riscv64 target/riscv64gc-unknown-none-elf/release/ch2t_write0 --strip-all -O binary  target/riscv64gc-unknown-none-elf/release/ch2t_write0.bin;  rust-objcopy --binary-architecture=riscv64 target/riscv64gc-unknown-none-elf/release/ch2_exit --strip-all -O binary  target/riscv64gc-unknown-none-elf/release/ch2_exit.bin;  rust-objcopy --binary-architecture=riscv64 target/riscv64gc-unknown-none-elf/release/ch2_power --strip-all -O binary  target/riscv64gc-unknown-none-elf/release/ch2_power.bin;  rust-objcopy --binary-architecture=riscv64 target/riscv64gc-unknown-none-elf/release/01store_fault --strip-all -O binary  target/riscv64gc-unknown-none-elf/release/01store_fault.bin;  rust-objcopy --binary-architecture=riscv64 target/riscv64gc-unknown-none-elf/release/02power --strip-all -O binary  target/riscv64gc-unknown-none-elf/release/02power.bin;  rust-objcopy --binary-architecture=riscv64 target/riscv64gc-unknown-none-elf/release/ch2_write1 --strip-all -O binary  target/riscv64gc-unknown-none-elf/release/ch2_write1.bin;
make[1]: Leaving directory '/home/user/OS/GuestOS/user'
Platform: qemu

target/riscv64gc-unknown-none-elf/release/os:     file format elf64-littleriscv


Disassembly of section .text:

0000000090000000 <_start>:
    90000000:	00024117          	auipc	sp,0x24
    90000004:	00010113          	mv	sp,sp
    90000008:	00001097          	auipc	ra,0x1
    9000000c:	0d2080e7          	jalr	210(ra) # 900010da <rust_main>

0000000090000010 <_ZN4core3ptr44drop_in_place$LT$core..cell..BorrowError$GT$17ha6193ca44e585bb5E.llvm.8904609870628804180>:
    90000010:	1141                	addi	sp,sp,-16
    90000012:	e406                	sd	ra,8(sp)
    90000014:	e022                	sd	s0,0(sp)
    90000016:	0800                	addi	s0,sp,16
    90000018:	6402                	ld	s0,0(sp)
    9000001a:	60a2                	ld	ra,8(sp)
    9000001c:	0141                	addi	sp,sp,16
    9000001e:	8082                	ret

0000000090000020 <_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17h016e6f2e2170b419E.llvm.8904609870628804180>:
    90000020:	1101                	addi	sp,sp,-32
    90000022:	ec06                	sd	ra,24(sp)
    90000024:	e822                	sd	s0,16(sp)
    90000026:	1000                	addi	s0,sp,32
    90000028:	85aa                	mv	a1,a0
    9000002a:	6108                	ld	a0,0(a0)
    9000002c:	e909                	bnez	a0,9000003e <.LBB3_3>
    9000002e:	567d                	li	a2,-1
    90000030:	00858513          	addi	a0,a1,8
    90000034:	e190                	sd	a2,0(a1)
    90000036:	6442                	ld	s0,16(sp)
    90000038:	60e2                	ld	ra,24(sp)
    9000003a:	6105                	addi	sp,sp,32
    9000003c:	8082                	ret

000000009000003e <.LBB3_3>:
    9000003e:	00004517          	auipc	a0,0x4
    90000042:	fd250513          	addi	a0,a0,-46 # 90004010 <anon.30cfc24f32ed8f4217ea0a754ffb84e0.0.llvm.8904609870628804180>

0000000090000046 <.LBB3_4>:
    90000046:	00004697          	auipc	a3,0x4
    9000004a:	04268693          	addi	a3,a3,66 # 90004088 <anon.30cfc24f32ed8f4217ea0a754ffb84e0.3.llvm.8904609870628804180>

000000009000004e <.LBB3_5>:
    9000004e:	00008717          	auipc	a4,0x8
    90000052:	2ca70713          	addi	a4,a4,714 # 90008318 <anon.30cfc24f32ed8f4217ea0a754ffb84e0.40.llvm.8904609870628804180>
    90000056:	fe840613          	addi	a2,s0,-24
    9000005a:	45c1                	li	a1,16
    9000005c:	00001097          	auipc	ra,0x1
    90000060:	62e080e7          	jalr	1582(ra) # 9000168a <_ZN4core6option18expect_none_failed17hf4b8b266798017eaE>
	...

0000000090000066 <_ZN4core4cell16RefCell$LT$T$GT$6borrow17h1b375efbe73d6fa3E.llvm.8904609870628804180>:
    90000066:	1101                	addi	sp,sp,-32
    90000068:	ec06                	sd	ra,24(sp)
    9000006a:	e822                	sd	s0,16(sp)
    9000006c:	1000                	addi	s0,sp,32
    9000006e:	862a                	mv	a2,a0
    90000070:	6108                	ld	a0,0(a0)
    90000072:	00150693          	addi	a3,a0,1
    90000076:	00d05a63          	blez	a3,9000008a <_ZN4core4cell16RefCell$LT$T$GT$6borrow17h1b375efbe73d6fa3E.llvm.8904609870628804180+0x24>
    9000007a:	00860513          	addi	a0,a2,8
    9000007e:	e214                	sd	a3,0(a2)
    90000080:	85b2                	mv	a1,a2
    90000082:	6442                	ld	s0,16(sp)
    90000084:	60e2                	ld	ra,24(sp)
    90000086:	6105                	addi	sp,sp,32
    90000088:	8082                	ret
    9000008a:	872e                	mv	a4,a1

000000009000008c <.LBB4_3>:
    9000008c:	00004517          	auipc	a0,0x4
    90000090:	fb450513          	addi	a0,a0,-76 # 90004040 <anon.30cfc24f32ed8f4217ea0a754ffb84e0.1.llvm.8904609870628804180>

0000000090000094 <.LBB4_4>:
    90000094:	00004697          	auipc	a3,0x4
    90000098:	01468693          	addi	a3,a3,20 # 900040a8 <anon.30cfc24f32ed8f4217ea0a754ffb84e0.4.llvm.8904609870628804180>
    9000009c:	fe840613          	addi	a2,s0,-24
    900000a0:	45e1                	li	a1,24
    900000a2:	00001097          	auipc	ra,0x1
    900000a6:	5e8080e7          	jalr	1512(ra) # 9000168a <_ZN4core6option18expect_none_failed17hf4b8b266798017eaE>
	...

00000000900000ac <_ZN2os5batch11KernelStack12push_context17h1e75d4f1222b2d47E.llvm.8904609870628804180>:
    900000ac:	1101                	addi	sp,sp,-32
    900000ae:	ec06                	sd	ra,24(sp)
    900000b0:	e822                	sd	s0,16(sp)
    900000b2:	e426                	sd	s1,8(sp)
    900000b4:	1000                	addi	s0,sp,32
    900000b6:	85aa                	mv	a1,a0
    900000b8:	6509                	lui	a0,0x2
    900000ba:	ef05051b          	addiw	a0,a0,-272

00000000900000be <.LBB5_3>:
    900000be:	00005617          	auipc	a2,0x5
    900000c2:	f4260613          	addi	a2,a2,-190 # 90005000 <_ZN2os5batch12KERNEL_STACK17hdada18c36c42a008E.llvm.8904609870628804180>
    900000c6:	00a604b3          	add	s1,a2,a0
    900000ca:	11000613          	li	a2,272
    900000ce:	8526                	mv	a0,s1
    900000d0:	00004097          	auipc	ra,0x4
    900000d4:	bec080e7          	jalr	-1044(ra) # 90003cbc <memcpy>
    900000d8:	c499                	beqz	s1,900000e6 <.LBB5_4>
    900000da:	8526                	mv	a0,s1
    900000dc:	64a2                	ld	s1,8(sp)
    900000de:	6442                	ld	s0,16(sp)
    900000e0:	60e2                	ld	ra,24(sp)
    900000e2:	6105                	addi	sp,sp,32
    900000e4:	8082                	ret

00000000900000e6 <.LBB5_4>:
    900000e6:	00004517          	auipc	a0,0x4
    900000ea:	f7250513          	addi	a0,a0,-142 # 90004058 <anon.30cfc24f32ed8f4217ea0a754ffb84e0.2.llvm.8904609870628804180>

00000000900000ee <.LBB5_5>:
    900000ee:	00008617          	auipc	a2,0x8
    900000f2:	f2260613          	addi	a2,a2,-222 # 90008010 <anon.30cfc24f32ed8f4217ea0a754ffb84e0.6.llvm.8904609870628804180>
    900000f6:	02b00593          	li	a1,43
    900000fa:	00001097          	auipc	ra,0x1
    900000fe:	5f0080e7          	jalr	1520(ra) # 900016ea <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
	...

0000000090000104 <_ZN2os5batch15AppManagerInner8load_app17h96a2241552fe6ad4E.llvm.8904609870628804180>:
    90000104:	7159                	addi	sp,sp,-112
    90000106:	f486                	sd	ra,104(sp)
    90000108:	f0a2                	sd	s0,96(sp)
    9000010a:	eca6                	sd	s1,88(sp)
    9000010c:	1880                	addi	s0,sp,112
    9000010e:	84aa                	mv	s1,a0
    90000110:	6108                	ld	a0,0(a0)
    90000112:	f8b43c23          	sd	a1,-104(s0)
    90000116:	0aa5f863          	bgeu	a1,a0,900001c6 <.LBB6_14+0x6c>
    9000011a:	f9840513          	addi	a0,s0,-104
    9000011e:	faa43023          	sd	a0,-96(s0)

0000000090000122 <.LBB6_12>:
    90000122:	00003517          	auipc	a0,0x3
    90000126:	52a50513          	addi	a0,a0,1322 # 9000364c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    9000012a:	faa43423          	sd	a0,-88(s0)
    9000012e:	fb840513          	addi	a0,s0,-72
    90000132:	faa43823          	sd	a0,-80(s0)

0000000090000136 <.LBB6_13>:
    90000136:	00008517          	auipc	a0,0x8
    9000013a:	08250513          	addi	a0,a0,130 # 900081b8 <.Lanon.30cfc24f32ed8f4217ea0a754ffb84e0.26>
    9000013e:	faa43c23          	sd	a0,-72(s0)
    90000142:	4509                	li	a0,2
    90000144:	fca43023          	sd	a0,-64(s0)
    90000148:	fc043423          	sd	zero,-56(s0)
    9000014c:	fa040513          	addi	a0,s0,-96
    90000150:	fca43c23          	sd	a0,-40(s0)
    90000154:	4505                	li	a0,1
    90000156:	fea43023          	sd	a0,-32(s0)

000000009000015a <.LBB6_14>:
    9000015a:	00008597          	auipc	a1,0x8
    9000015e:	70658593          	addi	a1,a1,1798 # 90008860 <anon.9696fc7f3b11bdd2401a2df391a12fb6.0.llvm.13126102975132998425>
    90000162:	fb040513          	addi	a0,s0,-80
    90000166:	fb840613          	addi	a2,s0,-72
    9000016a:	00002097          	auipc	ra,0x2
    9000016e:	c84080e7          	jalr	-892(ra) # 90001dee <_ZN4core3fmt5write17h338141860f5a80fbE>
    90000172:	ed39                	bnez	a0,900001d0 <.LBB6_15>
    90000174:	0000100f          	fence.i
    90000178:	00020537          	lui	a0,0x20
    9000017c:	24100593          	li	a1,577
    90000180:	05da                	slli	a1,a1,0x16
    90000182:	00158613          	addi	a2,a1,1
    90000186:	157d                	addi	a0,a0,-1
    90000188:	00058023          	sb	zero,0(a1)
    9000018c:	85b2                	mv	a1,a2
    9000018e:	f975                	bnez	a0,90000182 <.LBB6_14+0x28>
    90000190:	f9843503          	ld	a0,-104(s0)
    90000194:	45c1                	li	a1,16
    90000196:	06a5e263          	bltu	a1,a0,900001fa <.LBB6_18>
    9000019a:	06b50563          	beq	a0,a1,90000204 <.LBB6_19>
    9000019e:	050e                	slli	a0,a0,0x3
    900001a0:	00a485b3          	add	a1,s1,a0
    900001a4:	698c                	ld	a1,16(a1)
    900001a6:	9526                	add	a0,a0,s1
    900001a8:	6d08                	ld	a0,24(a0)
    900001aa:	40b50633          	sub	a2,a0,a1
    900001ae:	24100513          	li	a0,577
    900001b2:	055a                	slli	a0,a0,0x16
    900001b4:	00004097          	auipc	ra,0x4
    900001b8:	b08080e7          	jalr	-1272(ra) # 90003cbc <memcpy>
    900001bc:	64e6                	ld	s1,88(sp)
    900001be:	7406                	ld	s0,96(sp)
    900001c0:	70a6                	ld	ra,104(sp)
    900001c2:	6165                	addi	sp,sp,112
    900001c4:	8082                	ret
    900001c6:	00000097          	auipc	ra,0x0
    900001ca:	596080e7          	jalr	1430(ra) # 9000075c <_ZN2os3sbi8shutdown17hc1300fe5ffdb27e6E>
	...

00000000900001d0 <.LBB6_15>:
    900001d0:	00008517          	auipc	a0,0x8
    900001d4:	6c050513          	addi	a0,a0,1728 # 90008890 <anon.9696fc7f3b11bdd2401a2df391a12fb6.1.llvm.13126102975132998425>

00000000900001d8 <.LBB6_16>:
    900001d8:	00008697          	auipc	a3,0x8
    900001dc:	6e868693          	addi	a3,a3,1768 # 900088c0 <anon.9696fc7f3b11bdd2401a2df391a12fb6.2.llvm.13126102975132998425>

00000000900001e0 <.LBB6_17>:
    900001e0:	00008717          	auipc	a4,0x8
    900001e4:	71070713          	addi	a4,a4,1808 # 900088f0 <anon.9696fc7f3b11bdd2401a2df391a12fb6.4.llvm.13126102975132998425>
    900001e8:	fb840613          	addi	a2,s0,-72
    900001ec:	02b00593          	li	a1,43
    900001f0:	00001097          	auipc	ra,0x1
    900001f4:	49a080e7          	jalr	1178(ra) # 9000168a <_ZN4core6option18expect_none_failed17hf4b8b266798017eaE>
	...

00000000900001fa <.LBB6_18>:
    900001fa:	00008617          	auipc	a2,0x8
    900001fe:	fde60613          	addi	a2,a2,-34 # 900081d8 <.Lanon.30cfc24f32ed8f4217ea0a754ffb84e0.31>
    90000202:	a031                	j	9000020e <.LBB6_19+0xa>

0000000090000204 <.LBB6_19>:
    90000204:	00008617          	auipc	a2,0x8
    90000208:	fec60613          	addi	a2,a2,-20 # 900081f0 <.Lanon.30cfc24f32ed8f4217ea0a754ffb84e0.32>
    9000020c:	4545                	li	a0,17
    9000020e:	45c5                	li	a1,17
    90000210:	00001097          	auipc	ra,0x1
    90000214:	506080e7          	jalr	1286(ra) # 90001716 <_ZN4core9panicking18panic_bounds_check17ha760e6d8204f3836E>
	...

000000009000021a <_ZN2os5batch4init17ha1e8acf6e0b011a7E>:
    9000021a:	7115                	addi	sp,sp,-224
    9000021c:	ed86                	sd	ra,216(sp)
    9000021e:	e9a2                	sd	s0,208(sp)
    90000220:	e5a6                	sd	s1,200(sp)
    90000222:	e1ca                	sd	s2,192(sp)
    90000224:	fd4e                	sd	s3,184(sp)
    90000226:	f952                	sd	s4,176(sp)
    90000228:	f556                	sd	s5,168(sp)
    9000022a:	f15a                	sd	s6,160(sp)
    9000022c:	ed5e                	sd	s7,152(sp)
    9000022e:	e962                	sd	s8,144(sp)
    90000230:	e566                	sd	s9,136(sp)
    90000232:	e16a                	sd	s10,128(sp)
    90000234:	fcee                	sd	s11,120(sp)
    90000236:	1180                	addi	s0,sp,224
    90000238:	f6840513          	addi	a0,s0,-152
    9000023c:	f2a43823          	sd	a0,-208(s0)

0000000090000240 <.LBB9_15>:
    90000240:	00008517          	auipc	a0,0x8
    90000244:	04850513          	addi	a0,a0,72 # 90008288 <.Lanon.30cfc24f32ed8f4217ea0a754ffb84e0.34>
    90000248:	f6a43423          	sd	a0,-152(s0)
    9000024c:	4505                	li	a0,1
    9000024e:	f6a43823          	sd	a0,-144(s0)
    90000252:	f6043c23          	sd	zero,-136(s0)

0000000090000256 <.LBB9_16>:
    90000256:	00008517          	auipc	a0,0x8
    9000025a:	dd250513          	addi	a0,a0,-558 # 90008028 <.Lanon.30cfc24f32ed8f4217ea0a754ffb84e0.13>
    9000025e:	f8a43423          	sd	a0,-120(s0)
    90000262:	f8043823          	sd	zero,-112(s0)

0000000090000266 <.LBB9_17>:
    90000266:	00008597          	auipc	a1,0x8
    9000026a:	5fa58593          	addi	a1,a1,1530 # 90008860 <anon.9696fc7f3b11bdd2401a2df391a12fb6.0.llvm.13126102975132998425>
    9000026e:	f3040513          	addi	a0,s0,-208
    90000272:	f6840913          	addi	s2,s0,-152
    90000276:	864a                	mv	a2,s2
    90000278:	00002097          	auipc	ra,0x2
    9000027c:	b76080e7          	jalr	-1162(ra) # 90001dee <_ZN4core3fmt5write17h338141860f5a80fbE>
    90000280:	14051163          	bnez	a0,900003c2 <.LBB9_26>

0000000090000284 <.LBB9_18>:
    90000284:	00024517          	auipc	a0,0x24
    90000288:	d7c50513          	addi	a0,a0,-644 # 90024000 <boot_stack_top>
    9000028c:	00001097          	auipc	ra,0x1
    90000290:	9d8080e7          	jalr	-1576(ra) # 90000c64 <_ZN4spin4once13Once$LT$T$GT$9call_once17hf970fb52e2f39247E>
    90000294:	610c                	ld	a1,0(a0)
    90000296:	0585                	addi	a1,a1,1
    90000298:	16b05a63          	blez	a1,9000040c <.LBB9_31>
    9000029c:	e10c                	sd	a1,0(a0)
    9000029e:	f2a43023          	sd	a0,-224(s0)
    900002a2:	00850493          	addi	s1,a0,8
    900002a6:	f2943823          	sd	s1,-208(s0)

00000000900002aa <.LBB9_19>:
    900002aa:	00003b17          	auipc	s6,0x3
    900002ae:	3a2b0b13          	addi	s6,s6,930 # 9000364c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    900002b2:	f3643c23          	sd	s6,-200(s0)
    900002b6:	f7243023          	sd	s2,-160(s0)

00000000900002ba <.LBB9_20>:
    900002ba:	00008517          	auipc	a0,0x8
    900002be:	d8e50513          	addi	a0,a0,-626 # 90008048 <.Lanon.30cfc24f32ed8f4217ea0a754ffb84e0.15>
    900002c2:	f6a43423          	sd	a0,-152(s0)
    900002c6:	4509                	li	a0,2
    900002c8:	f6a43823          	sd	a0,-144(s0)
    900002cc:	f6043c23          	sd	zero,-136(s0)
    900002d0:	f3040513          	addi	a0,s0,-208
    900002d4:	f8a43423          	sd	a0,-120(s0)
    900002d8:	4505                	li	a0,1
    900002da:	f8a43823          	sd	a0,-112(s0)

00000000900002de <.LBB9_21>:
    900002de:	00008597          	auipc	a1,0x8
    900002e2:	58258593          	addi	a1,a1,1410 # 90008860 <anon.9696fc7f3b11bdd2401a2df391a12fb6.0.llvm.13126102975132998425>
    900002e6:	f6040513          	addi	a0,s0,-160
    900002ea:	f6840a13          	addi	s4,s0,-152
    900002ee:	8652                	mv	a2,s4
    900002f0:	00002097          	auipc	ra,0x2
    900002f4:	afe080e7          	jalr	-1282(ra) # 90001dee <_ZN4core3fmt5write17h338141860f5a80fbE>
    900002f8:	e569                	bnez	a0,900003c2 <.LBB9_26>
    900002fa:	0004bb83          	ld	s7,0(s1)
    900002fe:	080b8e63          	beqz	s7,9000039a <.LBB9_25+0x76>
    90000302:	4481                	li	s1,0
    90000304:	f2043503          	ld	a0,-224(s0)
    90000308:	0561                	addi	a0,a0,24

000000009000030a <.LBB9_22>:
    9000030a:	00003917          	auipc	s2,0x3
    9000030e:	e6090913          	addi	s2,s2,-416 # 9000316a <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E>

0000000090000312 <.LBB9_23>:
    90000312:	00008997          	auipc	s3,0x8
    90000316:	d7698993          	addi	s3,s3,-650 # 90008088 <.Lanon.30cfc24f32ed8f4217ea0a754ffb84e0.20>

000000009000031a <.LBB9_24>:
    9000031a:	00008d17          	auipc	s10,0x8
    9000031e:	dded0d13          	addi	s10,s10,-546 # 900080f8 <.Lanon.30cfc24f32ed8f4217ea0a754ffb84e0.23>
    90000322:	4d8d                	li	s11,3

0000000090000324 <.LBB9_25>:
    90000324:	00008c17          	auipc	s8,0x8
    90000328:	53cc0c13          	addi	s8,s8,1340 # 90008860 <anon.9696fc7f3b11bdd2401a2df391a12fb6.0.llvm.13126102975132998425>
    9000032c:	f6040a93          	addi	s5,s0,-160
    90000330:	f2943423          	sd	s1,-216(s0)
    90000334:	45c1                	li	a1,16
    90000336:	0ab48b63          	beq	s1,a1,900003ec <.LBB9_29>
    9000033a:	45c5                	li	a1,17
    9000033c:	0ab48d63          	beq	s1,a1,900003f6 <.LBB9_30>
    90000340:	00850c93          	addi	s9,a0,8
    90000344:	f2840593          	addi	a1,s0,-216
    90000348:	f2b43823          	sd	a1,-208(s0)
    9000034c:	f3643c23          	sd	s6,-200(s0)
    90000350:	f4a43023          	sd	a0,-192(s0)
    90000354:	f5243423          	sd	s2,-184(s0)
    90000358:	f5943823          	sd	s9,-176(s0)
    9000035c:	f5243c23          	sd	s2,-168(s0)
    90000360:	f7443023          	sd	s4,-160(s0)
    90000364:	f7343423          	sd	s3,-152(s0)
    90000368:	4511                	li	a0,4
    9000036a:	f6a43823          	sd	a0,-144(s0)
    9000036e:	f7a43c23          	sd	s10,-136(s0)
    90000372:	f9b43023          	sd	s11,-128(s0)
    90000376:	f3040513          	addi	a0,s0,-208
    9000037a:	f8a43423          	sd	a0,-120(s0)
    9000037e:	f9b43823          	sd	s11,-112(s0)
    90000382:	8556                	mv	a0,s5
    90000384:	85e2                	mv	a1,s8
    90000386:	8652                	mv	a2,s4
    90000388:	00002097          	auipc	ra,0x2
    9000038c:	a66080e7          	jalr	-1434(ra) # 90001dee <_ZN4core3fmt5write17h338141860f5a80fbE>
    90000390:	e90d                	bnez	a0,900003c2 <.LBB9_26>
    90000392:	0485                	addi	s1,s1,1
    90000394:	8566                	mv	a0,s9
    90000396:	f89b9de3          	bne	s7,s1,90000330 <.LBB9_25+0xc>
    9000039a:	f2043583          	ld	a1,-224(s0)
    9000039e:	6188                	ld	a0,0(a1)
    900003a0:	157d                	addi	a0,a0,-1
    900003a2:	e188                	sd	a0,0(a1)
    900003a4:	7de6                	ld	s11,120(sp)
    900003a6:	6d0a                	ld	s10,128(sp)
    900003a8:	6caa                	ld	s9,136(sp)
    900003aa:	6c4a                	ld	s8,144(sp)
    900003ac:	6bea                	ld	s7,152(sp)
    900003ae:	7b0a                	ld	s6,160(sp)
    900003b0:	7aaa                	ld	s5,168(sp)
    900003b2:	7a4a                	ld	s4,176(sp)
    900003b4:	79ea                	ld	s3,184(sp)
    900003b6:	690e                	ld	s2,192(sp)
    900003b8:	64ae                	ld	s1,200(sp)
    900003ba:	644e                	ld	s0,208(sp)
    900003bc:	60ee                	ld	ra,216(sp)
    900003be:	612d                	addi	sp,sp,224
    900003c0:	8082                	ret

00000000900003c2 <.LBB9_26>:
    900003c2:	00008517          	auipc	a0,0x8
    900003c6:	4ce50513          	addi	a0,a0,1230 # 90008890 <anon.9696fc7f3b11bdd2401a2df391a12fb6.1.llvm.13126102975132998425>

00000000900003ca <.LBB9_27>:
    900003ca:	00008697          	auipc	a3,0x8
    900003ce:	4f668693          	addi	a3,a3,1270 # 900088c0 <anon.9696fc7f3b11bdd2401a2df391a12fb6.2.llvm.13126102975132998425>

00000000900003d2 <.LBB9_28>:
    900003d2:	00008717          	auipc	a4,0x8
    900003d6:	51e70713          	addi	a4,a4,1310 # 900088f0 <anon.9696fc7f3b11bdd2401a2df391a12fb6.4.llvm.13126102975132998425>
    900003da:	f6840613          	addi	a2,s0,-152
    900003de:	02b00593          	li	a1,43
    900003e2:	00001097          	auipc	ra,0x1
    900003e6:	2a8080e7          	jalr	680(ra) # 9000168a <_ZN4core6option18expect_none_failed17hf4b8b266798017eaE>
	...

00000000900003ec <.LBB9_29>:
    900003ec:	00008617          	auipc	a2,0x8
    900003f0:	cf460613          	addi	a2,a2,-780 # 900080e0 <.Lanon.30cfc24f32ed8f4217ea0a754ffb84e0.22>
    900003f4:	a029                	j	900003fe <.LBB9_30+0x8>

00000000900003f6 <.LBB9_30>:
    900003f6:	00008617          	auipc	a2,0x8
    900003fa:	cd260613          	addi	a2,a2,-814 # 900080c8 <.Lanon.30cfc24f32ed8f4217ea0a754ffb84e0.21>
    900003fe:	4545                	li	a0,17
    90000400:	45c5                	li	a1,17
    90000402:	00001097          	auipc	ra,0x1
    90000406:	314080e7          	jalr	788(ra) # 90001716 <_ZN4core9panicking18panic_bounds_check17ha760e6d8204f3836E>
	...

000000009000040c <.LBB9_31>:
    9000040c:	00004517          	auipc	a0,0x4
    90000410:	c3450513          	addi	a0,a0,-972 # 90004040 <anon.30cfc24f32ed8f4217ea0a754ffb84e0.1.llvm.8904609870628804180>

0000000090000414 <.LBB9_32>:
    90000414:	00004697          	auipc	a3,0x4
    90000418:	c9468693          	addi	a3,a3,-876 # 900040a8 <anon.30cfc24f32ed8f4217ea0a754ffb84e0.4.llvm.8904609870628804180>

000000009000041c <.LBB9_33>:
    9000041c:	00008717          	auipc	a4,0x8
    90000420:	e7c70713          	addi	a4,a4,-388 # 90008298 <.Lanon.30cfc24f32ed8f4217ea0a754ffb84e0.35>
    90000424:	f6840613          	addi	a2,s0,-152
    90000428:	45e1                	li	a1,24
    9000042a:	00001097          	auipc	ra,0x1
    9000042e:	260080e7          	jalr	608(ra) # 9000168a <_ZN4core6option18expect_none_failed17hf4b8b266798017eaE>
	...

0000000090000434 <_ZN2os5batch12run_next_app17h14d6067bcbd531efE>:
    90000434:	7169                	addi	sp,sp,-304
    90000436:	f606                	sd	ra,296(sp)
    90000438:	f222                	sd	s0,288(sp)
    9000043a:	ee26                	sd	s1,280(sp)
    9000043c:	ea4a                	sd	s2,272(sp)
    9000043e:	1a00                	addi	s0,sp,304

0000000090000440 <.LBB10_1>:
    90000440:	00008517          	auipc	a0,0x8
    90000444:	e9850513          	addi	a0,a0,-360 # 900082d8 <anon.30cfc24f32ed8f4217ea0a754ffb84e0.37.llvm.8904609870628804180>
    90000448:	eca43823          	sd	a0,-304(s0)
    9000044c:	4505                	li	a0,1
    9000044e:	eca43c23          	sd	a0,-296(s0)
    90000452:	ee043023          	sd	zero,-288(s0)

0000000090000456 <.LBB10_2>:
    90000456:	00008517          	auipc	a0,0x8
    9000045a:	bd250513          	addi	a0,a0,-1070 # 90008028 <.Lanon.30cfc24f32ed8f4217ea0a754ffb84e0.13>
    9000045e:	eea43823          	sd	a0,-272(s0)
    90000462:	ee043c23          	sd	zero,-264(s0)
    90000466:	ed040513          	addi	a0,s0,-304
    9000046a:	00001097          	auipc	ra,0x1
    9000046e:	bf0080e7          	jalr	-1040(ra) # 9000105a <_ZN2os7console5print17h5d32e4d633d8cdddE>
    90000472:	00000097          	auipc	ra,0x0
    90000476:	0e4080e7          	jalr	228(ra) # 90000556 <_ZN66_$LT$os..batch..APP_MANAGER$u20$as$u20$core..ops..deref..Deref$GT$5deref17hfb48cc52da661614E.llvm.8904609870628804180>

000000009000047a <.LBB10_3>:
    9000047a:	00008597          	auipc	a1,0x8
    9000047e:	e6e58593          	addi	a1,a1,-402 # 900082e8 <anon.30cfc24f32ed8f4217ea0a754ffb84e0.38.llvm.8904609870628804180>
    90000482:	00000097          	auipc	ra,0x0
    90000486:	be4080e7          	jalr	-1052(ra) # 90000066 <_ZN4core4cell16RefCell$LT$T$GT$6borrow17h1b375efbe73d6fa3E.llvm.8904609870628804180>
    9000048a:	6190                	ld	a2,0(a1)
    9000048c:	00853903          	ld	s2,8(a0)
    90000490:	fff60513          	addi	a0,a2,-1
    90000494:	e188                	sd	a0,0(a1)
    90000496:	00000097          	auipc	ra,0x0
    9000049a:	0c0080e7          	jalr	192(ra) # 90000556 <_ZN66_$LT$os..batch..APP_MANAGER$u20$as$u20$core..ops..deref..Deref$GT$5deref17hfb48cc52da661614E.llvm.8904609870628804180>

000000009000049e <.LBB10_4>:
    9000049e:	00008597          	auipc	a1,0x8
    900004a2:	e6258593          	addi	a1,a1,-414 # 90008300 <anon.30cfc24f32ed8f4217ea0a754ffb84e0.39.llvm.8904609870628804180>
    900004a6:	00000097          	auipc	ra,0x0
    900004aa:	bc0080e7          	jalr	-1088(ra) # 90000066 <_ZN4core4cell16RefCell$LT$T$GT$6borrow17h1b375efbe73d6fa3E.llvm.8904609870628804180>
    900004ae:	84ae                	mv	s1,a1
    900004b0:	85ca                	mv	a1,s2
    900004b2:	00000097          	auipc	ra,0x0
    900004b6:	c52080e7          	jalr	-942(ra) # 90000104 <_ZN2os5batch15AppManagerInner8load_app17h96a2241552fe6ad4E.llvm.8904609870628804180>
    900004ba:	6088                	ld	a0,0(s1)
    900004bc:	157d                	addi	a0,a0,-1
    900004be:	e088                	sd	a0,0(s1)
    900004c0:	00000097          	auipc	ra,0x0
    900004c4:	096080e7          	jalr	150(ra) # 90000556 <_ZN66_$LT$os..batch..APP_MANAGER$u20$as$u20$core..ops..deref..Deref$GT$5deref17hfb48cc52da661614E.llvm.8904609870628804180>
    900004c8:	00000097          	auipc	ra,0x0
    900004cc:	b58080e7          	jalr	-1192(ra) # 90000020 <_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17h016e6f2e2170b419E.llvm.8904609870628804180>
    900004d0:	6510                	ld	a2,8(a0)
    900004d2:	0605                	addi	a2,a2,1
    900004d4:	e510                	sd	a2,8(a0)
    900004d6:	6188                	ld	a0,0(a1)
    900004d8:	0505                	addi	a0,a0,1
    900004da:	e188                	sd	a0,0(a1)
    900004dc:	10002573          	csrr	a0,sstatus
    900004e0:	eff57493          	andi	s1,a0,-257
    900004e4:	ed040913          	addi	s2,s0,-304
    900004e8:	10000613          	li	a2,256
    900004ec:	854a                	mv	a0,s2
    900004ee:	4581                	li	a1,0
    900004f0:	00003097          	auipc	ra,0x3
    900004f4:	7e2080e7          	jalr	2018(ra) # 90003cd2 <memset>
    900004f8:	fc943823          	sd	s1,-48(s0)
    900004fc:	24100513          	li	a0,577
    90000500:	055a                	slli	a0,a0,0x16
    90000502:	fca43c23          	sd	a0,-40(s0)
    90000506:	6505                	lui	a0,0x1

0000000090000508 <.LBB10_5>:
    90000508:	00007597          	auipc	a1,0x7
    9000050c:	af858593          	addi	a1,a1,-1288 # 90007000 <_ZN2os5batch10USER_STACK17h63e0fc15c4136c2eE.llvm.8904609870628804180>
    90000510:	952e                	add	a0,a0,a1
    90000512:	eea43023          	sd	a0,-288(s0)
    90000516:	854a                	mv	a0,s2
    90000518:	00000097          	auipc	ra,0x0
    9000051c:	b94080e7          	jalr	-1132(ra) # 900000ac <_ZN2os5batch11KernelStack12push_context17h1e75d4f1222b2d47E.llvm.8904609870628804180>
    90000520:	6509                	lui	a0,0x2
    90000522:	ef05051b          	addiw	a0,a0,-272

0000000090000526 <.LBB10_6>:
    90000526:	00005597          	auipc	a1,0x5
    9000052a:	ada58593          	addi	a1,a1,-1318 # 90005000 <_ZN2os5batch12KERNEL_STACK17hdada18c36c42a008E.llvm.8904609870628804180>
    9000052e:	952e                	add	a0,a0,a1
    90000530:	00000097          	auipc	ra,0x0
    90000534:	2b8080e7          	jalr	696(ra) # 900007e8 <__restore>

0000000090000538 <.LBB10_7>:
    90000538:	00008517          	auipc	a0,0x8
    9000053c:	df850513          	addi	a0,a0,-520 # 90008330 <anon.30cfc24f32ed8f4217ea0a754ffb84e0.41.llvm.8904609870628804180>

0000000090000540 <.LBB10_8>:
    90000540:	00008617          	auipc	a2,0x8
    90000544:	e1860613          	addi	a2,a2,-488 # 90008358 <anon.30cfc24f32ed8f4217ea0a754ffb84e0.42.llvm.8904609870628804180>
    90000548:	02600593          	li	a1,38
    9000054c:	00001097          	auipc	ra,0x1
    90000550:	19e080e7          	jalr	414(ra) # 900016ea <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
	...

0000000090000556 <_ZN66_$LT$os..batch..APP_MANAGER$u20$as$u20$core..ops..deref..Deref$GT$5deref17hfb48cc52da661614E.llvm.8904609870628804180>:
    90000556:	1141                	addi	sp,sp,-16
    90000558:	e406                	sd	ra,8(sp)
    9000055a:	e022                	sd	s0,0(sp)
    9000055c:	0800                	addi	s0,sp,16

000000009000055e <.LBB11_1>:
    9000055e:	00024517          	auipc	a0,0x24
    90000562:	aa250513          	addi	a0,a0,-1374 # 90024000 <boot_stack_top>
    90000566:	6402                	ld	s0,0(sp)
    90000568:	60a2                	ld	ra,8(sp)
    9000056a:	0141                	addi	sp,sp,16
    9000056c:	00000317          	auipc	t1,0x0
    90000570:	6f830067          	jr	1784(t1) # 90000c64 <_ZN4spin4once13Once$LT$T$GT$9call_once17hf970fb52e2f39247E>

0000000090000574 <_ZN4core3ptr48drop_in_place$LT$core..str..error..Utf8Error$GT$17h166ff6a964893925E>:
    90000574:	1141                	addi	sp,sp,-16
    90000576:	e406                	sd	ra,8(sp)
    90000578:	e022                	sd	s0,0(sp)
    9000057a:	0800                	addi	s0,sp,16
    9000057c:	6402                	ld	s0,0(sp)
    9000057e:	60a2                	ld	ra,8(sp)
    90000580:	0141                	addi	sp,sp,16
    90000582:	8082                	ret

0000000090000584 <_ZN2os7syscall2fs9sys_write17hc1fb3b89a272e4d3E>:
    90000584:	7119                	addi	sp,sp,-128
    90000586:	fc86                	sd	ra,120(sp)
    90000588:	f8a2                	sd	s0,112(sp)
    9000058a:	f4a6                	sd	s1,104(sp)
    9000058c:	f0ca                	sd	s2,96(sp)
    9000058e:	0100                	addi	s0,sp,128
    90000590:	4685                	li	a3,1
    90000592:	10d51463          	bne	a0,a3,9000069a <.LBB1_17+0x1a>
    90000596:	84b2                	mv	s1,a2

0000000090000598 <.LBB1_11>:
    90000598:	00007617          	auipc	a2,0x7
    9000059c:	a6860613          	addi	a2,a2,-1432 # 90007000 <_ZN2os5batch10USER_STACK17h63e0fc15c4136c2eE.llvm.8904609870628804180>
    900005a0:	00c5b533          	sltu	a0,a1,a2
    900005a4:	00154693          	xori	a3,a0,1
    900005a8:	00958533          	add	a0,a1,s1
    900005ac:	6705                	lui	a4,0x1
    900005ae:	963a                	add	a2,a2,a4
    900005b0:	00c53633          	sltu	a2,a0,a2
    900005b4:	8e75                	and	a2,a2,a3
    900005b6:	ee19                	bnez	a2,900005d4 <.LBB1_11+0x3c>
    900005b8:	0165d613          	srli	a2,a1,0x16
    900005bc:	24000693          	li	a3,576
    900005c0:	00c6b633          	sltu	a2,a3,a2
    900005c4:	6695                	lui	a3,0x5
    900005c6:	8216869b          	addiw	a3,a3,-2015
    900005ca:	06c6                	slli	a3,a3,0x11
    900005cc:	00d53533          	sltu	a0,a0,a3
    900005d0:	8d71                	and	a0,a0,a2
    900005d2:	c141                	beqz	a0,90000652 <.LBB1_14+0x1c>
    900005d4:	fb040913          	addi	s2,s0,-80
    900005d8:	854a                	mv	a0,s2
    900005da:	8626                	mv	a2,s1
    900005dc:	00002097          	auipc	ra,0x2
    900005e0:	3b2080e7          	jalr	946(ra) # 9000298e <_ZN4core3str8converts9from_utf817h36a155da9055aca2E>
    900005e4:	fb043583          	ld	a1,-80(s0)
    900005e8:	4505                	li	a0,1
    900005ea:	0ca58f63          	beq	a1,a0,900006c8 <.LBB1_20+0xe>
    900005ee:	fb843583          	ld	a1,-72(s0)
    900005f2:	fc043603          	ld	a2,-64(s0)
    900005f6:	f8b43423          	sd	a1,-120(s0)
    900005fa:	f8c43823          	sd	a2,-112(s0)
    900005fe:	f8840593          	addi	a1,s0,-120
    90000602:	f8b43c23          	sd	a1,-104(s0)

0000000090000606 <.LBB1_12>:
    90000606:	00001597          	auipc	a1,0x1
    9000060a:	b8a58593          	addi	a1,a1,-1142 # 90001190 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3fcafc7c7a83a0b9E>
    9000060e:	fab43023          	sd	a1,-96(s0)
    90000612:	fb243423          	sd	s2,-88(s0)

0000000090000616 <.LBB1_13>:
    90000616:	00008597          	auipc	a1,0x8
    9000061a:	dda58593          	addi	a1,a1,-550 # 900083f0 <.Lanon.035ee07254a686fc65cfe8e0150ef48c.25>
    9000061e:	fab43823          	sd	a1,-80(s0)
    90000622:	faa43c23          	sd	a0,-72(s0)
    90000626:	fc043023          	sd	zero,-64(s0)
    9000062a:	f9840593          	addi	a1,s0,-104
    9000062e:	fcb43823          	sd	a1,-48(s0)
    90000632:	fca43c23          	sd	a0,-40(s0)

0000000090000636 <.LBB1_14>:
    90000636:	00008597          	auipc	a1,0x8
    9000063a:	22a58593          	addi	a1,a1,554 # 90008860 <anon.9696fc7f3b11bdd2401a2df391a12fb6.0.llvm.13126102975132998425>
    9000063e:	fa840513          	addi	a0,s0,-88
    90000642:	fb040613          	addi	a2,s0,-80
    90000646:	00001097          	auipc	ra,0x1
    9000064a:	7a8080e7          	jalr	1960(ra) # 90001dee <_ZN4core3fmt5write17h338141860f5a80fbE>
    9000064e:	c539                	beqz	a0,9000069c <.LBB1_17+0x1c>
    90000650:	a8a9                	j	900006aa <.LBB1_18>
    90000652:	fb040513          	addi	a0,s0,-80
    90000656:	f8a43c23          	sd	a0,-104(s0)

000000009000065a <.LBB1_15>:
    9000065a:	00008517          	auipc	a0,0x8
    9000065e:	dce50513          	addi	a0,a0,-562 # 90008428 <.Lanon.035ee07254a686fc65cfe8e0150ef48c.28>
    90000662:	faa43823          	sd	a0,-80(s0)
    90000666:	4505                	li	a0,1
    90000668:	faa43c23          	sd	a0,-72(s0)
    9000066c:	fc043023          	sd	zero,-64(s0)

0000000090000670 <.LBB1_16>:
    90000670:	00008517          	auipc	a0,0x8
    90000674:	d5050513          	addi	a0,a0,-688 # 900083c0 <.Lanon.035ee07254a686fc65cfe8e0150ef48c.23>
    90000678:	fca43823          	sd	a0,-48(s0)
    9000067c:	fc043c23          	sd	zero,-40(s0)

0000000090000680 <.LBB1_17>:
    90000680:	00008597          	auipc	a1,0x8
    90000684:	1e058593          	addi	a1,a1,480 # 90008860 <anon.9696fc7f3b11bdd2401a2df391a12fb6.0.llvm.13126102975132998425>
    90000688:	f9840513          	addi	a0,s0,-104
    9000068c:	fb040613          	addi	a2,s0,-80
    90000690:	00001097          	auipc	ra,0x1
    90000694:	75e080e7          	jalr	1886(ra) # 90001dee <_ZN4core3fmt5write17h338141860f5a80fbE>
    90000698:	e909                	bnez	a0,900006aa <.LBB1_18>
    9000069a:	54fd                	li	s1,-1
    9000069c:	8526                	mv	a0,s1
    9000069e:	7906                	ld	s2,96(sp)
    900006a0:	74a6                	ld	s1,104(sp)
    900006a2:	7446                	ld	s0,112(sp)
    900006a4:	70e6                	ld	ra,120(sp)
    900006a6:	6109                	addi	sp,sp,128
    900006a8:	8082                	ret

00000000900006aa <.LBB1_18>:
    900006aa:	00008517          	auipc	a0,0x8
    900006ae:	1e650513          	addi	a0,a0,486 # 90008890 <anon.9696fc7f3b11bdd2401a2df391a12fb6.1.llvm.13126102975132998425>

00000000900006b2 <.LBB1_19>:
    900006b2:	00008697          	auipc	a3,0x8
    900006b6:	20e68693          	addi	a3,a3,526 # 900088c0 <anon.9696fc7f3b11bdd2401a2df391a12fb6.2.llvm.13126102975132998425>

00000000900006ba <.LBB1_20>:
    900006ba:	00008717          	auipc	a4,0x8
    900006be:	23670713          	addi	a4,a4,566 # 900088f0 <anon.9696fc7f3b11bdd2401a2df391a12fb6.4.llvm.13126102975132998425>
    900006c2:	fb040613          	addi	a2,s0,-80
    900006c6:	a03d                	j	900006f4 <.LBB1_23+0xc>
    900006c8:	fc043503          	ld	a0,-64(s0)
    900006cc:	fb843583          	ld	a1,-72(s0)
    900006d0:	faa43023          	sd	a0,-96(s0)
    900006d4:	f8b43c23          	sd	a1,-104(s0)

00000000900006d8 <.LBB1_21>:
    900006d8:	00008517          	auipc	a0,0x8
    900006dc:	c9850513          	addi	a0,a0,-872 # 90008370 <.Lanon.035ee07254a686fc65cfe8e0150ef48c.0>

00000000900006e0 <.LBB1_22>:
    900006e0:	00008697          	auipc	a3,0x8
    900006e4:	cc068693          	addi	a3,a3,-832 # 900083a0 <.Lanon.035ee07254a686fc65cfe8e0150ef48c.1>

00000000900006e8 <.LBB1_23>:
    900006e8:	00008717          	auipc	a4,0x8
    900006ec:	cf070713          	addi	a4,a4,-784 # 900083d8 <.Lanon.035ee07254a686fc65cfe8e0150ef48c.24>
    900006f0:	f9840613          	addi	a2,s0,-104
    900006f4:	02b00593          	li	a1,43
    900006f8:	00001097          	auipc	ra,0x1
    900006fc:	f92080e7          	jalr	-110(ra) # 9000168a <_ZN4core6option18expect_none_failed17hf4b8b266798017eaE>
	...

0000000090000702 <_ZN2os7syscall7process8sys_exit17h9641469e8b03db89E>:
    90000702:	711d                	addi	sp,sp,-96
    90000704:	ec86                	sd	ra,88(sp)
    90000706:	e8a2                	sd	s0,80(sp)
    90000708:	1080                	addi	s0,sp,96
    9000070a:	faa42623          	sw	a0,-84(s0)
    9000070e:	fac40513          	addi	a0,s0,-84
    90000712:	fea43023          	sd	a0,-32(s0)

0000000090000716 <.LBB0_1>:
    90000716:	00003517          	auipc	a0,0x3
    9000071a:	ba450513          	addi	a0,a0,-1116 # 900032ba <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17ha29d76a3c5b8b223E>
    9000071e:	fea43423          	sd	a0,-24(s0)

0000000090000722 <.LBB0_2>:
    90000722:	00008517          	auipc	a0,0x8
    90000726:	d4650513          	addi	a0,a0,-698 # 90008468 <anon.40ff848c9df2e696efe2594bffc19d49.2.llvm.3704931046221710405>
    9000072a:	faa43823          	sd	a0,-80(s0)
    9000072e:	4509                	li	a0,2
    90000730:	faa43c23          	sd	a0,-72(s0)
    90000734:	fc043023          	sd	zero,-64(s0)
    90000738:	fe040513          	addi	a0,s0,-32
    9000073c:	fca43823          	sd	a0,-48(s0)
    90000740:	4505                	li	a0,1
    90000742:	fca43c23          	sd	a0,-40(s0)
    90000746:	fb040513          	addi	a0,s0,-80
    9000074a:	00001097          	auipc	ra,0x1
    9000074e:	910080e7          	jalr	-1776(ra) # 9000105a <_ZN2os7console5print17h5d32e4d633d8cdddE>
    90000752:	00000097          	auipc	ra,0x0
    90000756:	ce2080e7          	jalr	-798(ra) # 90000434 <_ZN2os5batch12run_next_app17h14d6067bcbd531efE>
	...

000000009000075c <_ZN2os3sbi8shutdown17hc1300fe5ffdb27e6E>:
    9000075c:	1141                	addi	sp,sp,-16
    9000075e:	e406                	sd	ra,8(sp)
    90000760:	e022                	sd	s0,0(sp)
    90000762:	0800                	addi	s0,sp,16
    90000764:	48a1                	li	a7,8
    90000766:	4501                	li	a0,0
    90000768:	4581                	li	a1,0
    9000076a:	4601                	li	a2,0
    9000076c:	00000073          	ecall

0000000090000770 <.LBB1_1>:
    90000770:	00008517          	auipc	a0,0x8
    90000774:	d1850513          	addi	a0,a0,-744 # 90008488 <anon.dff1a1ae60d6b68fc808a8a89248e2ca.0.llvm.17863636192602611557>

0000000090000778 <.LBB1_2>:
    90000778:	00008617          	auipc	a2,0x8
    9000077c:	d3060613          	addi	a2,a2,-720 # 900084a8 <anon.dff1a1ae60d6b68fc808a8a89248e2ca.2.llvm.17863636192602611557>
    90000780:	45cd                	li	a1,19
    90000782:	00001097          	auipc	ra,0x1
    90000786:	f68080e7          	jalr	-152(ra) # 900016ea <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
	...

000000009000078c <__alltraps>:
    9000078c:	14011173          	csrrw	sp,sscratch,sp
    90000790:	716d                	addi	sp,sp,-272
    90000792:	e406                	sd	ra,8(sp)
    90000794:	ec0e                	sd	gp,24(sp)
    90000796:	f416                	sd	t0,40(sp)
    90000798:	f81a                	sd	t1,48(sp)
    9000079a:	fc1e                	sd	t2,56(sp)
    9000079c:	e0a2                	sd	s0,64(sp)
    9000079e:	e4a6                	sd	s1,72(sp)
    900007a0:	e8aa                	sd	a0,80(sp)
    900007a2:	ecae                	sd	a1,88(sp)
    900007a4:	f0b2                	sd	a2,96(sp)
    900007a6:	f4b6                	sd	a3,104(sp)
    900007a8:	f8ba                	sd	a4,112(sp)
    900007aa:	fcbe                	sd	a5,120(sp)
    900007ac:	e142                	sd	a6,128(sp)
    900007ae:	e546                	sd	a7,136(sp)
    900007b0:	e94a                	sd	s2,144(sp)
    900007b2:	ed4e                	sd	s3,152(sp)
    900007b4:	f152                	sd	s4,160(sp)
    900007b6:	f556                	sd	s5,168(sp)
    900007b8:	f95a                	sd	s6,176(sp)
    900007ba:	fd5e                	sd	s7,184(sp)
    900007bc:	e1e2                	sd	s8,192(sp)
    900007be:	e5e6                	sd	s9,200(sp)
    900007c0:	e9ea                	sd	s10,208(sp)
    900007c2:	edee                	sd	s11,216(sp)
    900007c4:	f1f2                	sd	t3,224(sp)
    900007c6:	f5f6                	sd	t4,232(sp)
    900007c8:	f9fa                	sd	t5,240(sp)
    900007ca:	fdfe                	sd	t6,248(sp)
    900007cc:	100022f3          	csrr	t0,sstatus
    900007d0:	14102373          	csrr	t1,sepc
    900007d4:	e216                	sd	t0,256(sp)
    900007d6:	e61a                	sd	t1,264(sp)
    900007d8:	140023f3          	csrr	t2,sscratch
    900007dc:	e81e                	sd	t2,16(sp)
    900007de:	850a                	mv	a0,sp
    900007e0:	00000097          	auipc	ra,0x0
    900007e4:	132080e7          	jalr	306(ra) # 90000912 <trap_handler>

00000000900007e8 <__restore>:
    900007e8:	812a                	mv	sp,a0
    900007ea:	6292                	ld	t0,256(sp)
    900007ec:	6332                	ld	t1,264(sp)
    900007ee:	63c2                	ld	t2,16(sp)
    900007f0:	10029073          	csrw	sstatus,t0
    900007f4:	14131073          	csrw	sepc,t1
    900007f8:	14039073          	csrw	sscratch,t2
    900007fc:	60a2                	ld	ra,8(sp)
    900007fe:	61e2                	ld	gp,24(sp)
    90000800:	72a2                	ld	t0,40(sp)
    90000802:	7342                	ld	t1,48(sp)
    90000804:	73e2                	ld	t2,56(sp)
    90000806:	6406                	ld	s0,64(sp)
    90000808:	64a6                	ld	s1,72(sp)
    9000080a:	6546                	ld	a0,80(sp)
    9000080c:	65e6                	ld	a1,88(sp)
    9000080e:	7606                	ld	a2,96(sp)
    90000810:	76a6                	ld	a3,104(sp)
    90000812:	7746                	ld	a4,112(sp)
    90000814:	77e6                	ld	a5,120(sp)
    90000816:	680a                	ld	a6,128(sp)
    90000818:	68aa                	ld	a7,136(sp)
    9000081a:	694a                	ld	s2,144(sp)
    9000081c:	69ea                	ld	s3,152(sp)
    9000081e:	7a0a                	ld	s4,160(sp)
    90000820:	7aaa                	ld	s5,168(sp)
    90000822:	7b4a                	ld	s6,176(sp)
    90000824:	7bea                	ld	s7,184(sp)
    90000826:	6c0e                	ld	s8,192(sp)
    90000828:	6cae                	ld	s9,200(sp)
    9000082a:	6d4e                	ld	s10,208(sp)
    9000082c:	6dee                	ld	s11,216(sp)
    9000082e:	7e0e                	ld	t3,224(sp)
    90000830:	7eae                	ld	t4,232(sp)
    90000832:	7f4e                	ld	t5,240(sp)
    90000834:	7fee                	ld	t6,248(sp)
    90000836:	6151                	addi	sp,sp,272
    90000838:	14011173          	csrrw	sp,sscratch,sp
    9000083c:	10200073          	sret

0000000090000840 <_ZN5riscv8register6scause6Scause5cause17ha75a563393405949E>:
    90000840:	1101                	addi	sp,sp,-32
    90000842:	ec06                	sd	ra,24(sp)
    90000844:	e822                	sd	s0,16(sp)
    90000846:	e426                	sd	s1,8(sp)
    90000848:	1000                	addi	s0,sp,32
    9000084a:	6104                	ld	s1,0(a0)
    9000084c:	00001097          	auipc	ra,0x1
    90000850:	af6080e7          	jalr	-1290(ra) # 90001342 <_ZN5riscv8register6scause6Scause4code17h69b008f0c3e7acbaE>
    90000854:	55fd                	li	a1,-1
    90000856:	0095da63          	bge	a1,s1,9000086a <_ZN5riscv8register6scause6Scause5cause17ha75a563393405949E+0x2a>
    9000085a:	00001097          	auipc	ra,0x1
    9000085e:	a1e080e7          	jalr	-1506(ra) # 90001278 <_ZN5riscv8register6scause9Exception4from17h4defeaca2f20f156E>
    90000862:	0ff57593          	andi	a1,a0,255
    90000866:	4505                	li	a0,1
    90000868:	a809                	j	9000087a <_ZN5riscv8register6scause6Scause5cause17ha75a563393405949E+0x3a>
    9000086a:	00001097          	auipc	ra,0x1
    9000086e:	9a0080e7          	jalr	-1632(ra) # 9000120a <_ZN5riscv8register6scause9Interrupt4from17h7fcf087f5ab1835bE>
    90000872:	85aa                	mv	a1,a0
    90000874:	4501                	li	a0,0
    90000876:	0ff5f593          	andi	a1,a1,255
    9000087a:	64a2                	ld	s1,8(sp)
    9000087c:	6442                	ld	s0,16(sp)
    9000087e:	60e2                	ld	ra,24(sp)
    90000880:	6105                	addi	sp,sp,32
    90000882:	8082                	ret

0000000090000884 <_ZN2os4trap4init17hcf0a19c9c6ec6c81E>:
    90000884:	715d                	addi	sp,sp,-80
    90000886:	e486                	sd	ra,72(sp)
    90000888:	e0a2                	sd	s0,64(sp)
    9000088a:	0880                	addi	s0,sp,80
    9000088c:	fc040513          	addi	a0,s0,-64
    90000890:	faa43c23          	sd	a0,-72(s0)

0000000090000894 <.LBB1_3>:
    90000894:	00008517          	auipc	a0,0x8
    90000898:	c4c50513          	addi	a0,a0,-948 # 900084e0 <.Lanon.8e29458fb4fe27a1d1531ba27e97313e.2>
    9000089c:	fca43023          	sd	a0,-64(s0)
    900008a0:	4505                	li	a0,1
    900008a2:	fca43423          	sd	a0,-56(s0)
    900008a6:	fc043823          	sd	zero,-48(s0)

00000000900008aa <.LBB1_4>:
    900008aa:	00008517          	auipc	a0,0x8
    900008ae:	c4650513          	addi	a0,a0,-954 # 900084f0 <.Lanon.8e29458fb4fe27a1d1531ba27e97313e.8>
    900008b2:	fea43023          	sd	a0,-32(s0)
    900008b6:	fe043423          	sd	zero,-24(s0)

00000000900008ba <.LBB1_5>:
    900008ba:	00008597          	auipc	a1,0x8
    900008be:	fa658593          	addi	a1,a1,-90 # 90008860 <anon.9696fc7f3b11bdd2401a2df391a12fb6.0.llvm.13126102975132998425>
    900008c2:	fb840513          	addi	a0,s0,-72
    900008c6:	fc040613          	addi	a2,s0,-64
    900008ca:	00001097          	auipc	ra,0x1
    900008ce:	524080e7          	jalr	1316(ra) # 90001dee <_ZN4core3fmt5write17h338141860f5a80fbE>
    900008d2:	e919                	bnez	a0,900008e8 <.LBB1_7>

00000000900008d4 <.LBB1_6>:
    900008d4:	00000517          	auipc	a0,0x0
    900008d8:	eb850513          	addi	a0,a0,-328 # 9000078c <__alltraps>
    900008dc:	10551073          	csrw	stvec,a0
    900008e0:	6406                	ld	s0,64(sp)
    900008e2:	60a6                	ld	ra,72(sp)
    900008e4:	6161                	addi	sp,sp,80
    900008e6:	8082                	ret

00000000900008e8 <.LBB1_7>:
    900008e8:	00008517          	auipc	a0,0x8
    900008ec:	fa850513          	addi	a0,a0,-88 # 90008890 <anon.9696fc7f3b11bdd2401a2df391a12fb6.1.llvm.13126102975132998425>

00000000900008f0 <.LBB1_8>:
    900008f0:	00008697          	auipc	a3,0x8
    900008f4:	fd068693          	addi	a3,a3,-48 # 900088c0 <anon.9696fc7f3b11bdd2401a2df391a12fb6.2.llvm.13126102975132998425>

00000000900008f8 <.LBB1_9>:
    900008f8:	00008717          	auipc	a4,0x8
    900008fc:	ff870713          	addi	a4,a4,-8 # 900088f0 <anon.9696fc7f3b11bdd2401a2df391a12fb6.4.llvm.13126102975132998425>
    90000900:	fc040613          	addi	a2,s0,-64
    90000904:	02b00593          	li	a1,43
    90000908:	00001097          	auipc	ra,0x1
    9000090c:	d82080e7          	jalr	-638(ra) # 9000168a <_ZN4core6option18expect_none_failed17hf4b8b266798017eaE>
	...

0000000090000912 <trap_handler>:
    90000912:	7175                	addi	sp,sp,-144
    90000914:	e506                	sd	ra,136(sp)
    90000916:	e122                	sd	s0,128(sp)
    90000918:	fca6                	sd	s1,120(sp)
    9000091a:	f8ca                	sd	s2,112(sp)
    9000091c:	0900                	addi	s0,sp,144
    9000091e:	14202973          	csrr	s2,scause
    90000922:	f7243c23          	sd	s2,-136(s0)
    90000926:	143025f3          	csrr	a1,stval
    9000092a:	84aa                	mv	s1,a0
    9000092c:	f8b43023          	sd	a1,-128(s0)
    90000930:	f7840513          	addi	a0,s0,-136
    90000934:	00001097          	auipc	ra,0x1
    90000938:	a0e080e7          	jalr	-1522(ra) # 90001342 <_ZN5riscv8register6scause6Scause4code17h69b008f0c3e7acbaE>
    9000093c:	55fd                	li	a1,-1
    9000093e:	0725de63          	bge	a1,s2,900009ba <.LBB2_16+0x1c>
    90000942:	00001097          	auipc	ra,0x1
    90000946:	936080e7          	jalr	-1738(ra) # 90001278 <_ZN5riscv8register6scause9Exception4from17h4defeaca2f20f156E>
    9000094a:	0ff57513          	andi	a0,a0,255
    9000094e:	459d                	li	a1,7
    90000950:	02b51e63          	bne	a0,a1,9000098c <trap_handler+0x7a>
    90000954:	1084b503          	ld	a0,264(s1)
    90000958:	00450713          	addi	a4,a0,4
    9000095c:	64d4                	ld	a3,136(s1)
    9000095e:	68a8                	ld	a0,80(s1)
    90000960:	6cac                	ld	a1,88(s1)
    90000962:	70b0                	ld	a2,96(s1)
    90000964:	10e4b423          	sd	a4,264(s1)
    90000968:	04000713          	li	a4,64
    9000096c:	fad43423          	sd	a3,-88(s0)
    90000970:	02e69c63          	bne	a3,a4,900009a8 <.LBB2_16+0xa>
    90000974:	00000097          	auipc	ra,0x0
    90000978:	c10080e7          	jalr	-1008(ra) # 90000584 <_ZN2os7syscall2fs9sys_write17hc1fb3b89a272e4d3E>
    9000097c:	e8a8                	sd	a0,80(s1)
    9000097e:	8526                	mv	a0,s1
    90000980:	7946                	ld	s2,112(sp)
    90000982:	74e6                	ld	s1,120(sp)
    90000984:	640a                	ld	s0,128(sp)
    90000986:	60aa                	ld	ra,136(sp)
    90000988:	6149                	addi	sp,sp,144
    9000098a:	8082                	ret
    9000098c:	4589                	li	a1,2
    9000098e:	0ab50563          	beq	a0,a1,90000a38 <.LBB2_22>
    90000992:	4599                	li	a1,6
    90000994:	00b50563          	beq	a0,a1,9000099e <.LBB2_16>
    90000998:	45a9                	li	a1,10
    9000099a:	02b51463          	bne	a0,a1,900009c2 <.LBB2_16+0x24>

000000009000099e <.LBB2_16>:
    9000099e:	00008517          	auipc	a0,0x8
    900009a2:	c6a50513          	addi	a0,a0,-918 # 90008608 <.Lanon.8e29458fb4fe27a1d1531ba27e97313e.18>
    900009a6:	a869                	j	90000a40 <.LBB2_22+0x8>
    900009a8:	05d00593          	li	a1,93
    900009ac:	0cb69463          	bne	a3,a1,90000a74 <.LBB2_23+0x26>
    900009b0:	00000097          	auipc	ra,0x0
    900009b4:	d52080e7          	jalr	-686(ra) # 90000702 <_ZN2os7syscall7process8sys_exit17h9641469e8b03db89E>
    900009b8:	0000                	unimp
    900009ba:	00001097          	auipc	ra,0x1
    900009be:	850080e7          	jalr	-1968(ra) # 9000120a <_ZN5riscv8register6scause9Interrupt4from17h7fcf087f5ab1835bE>
    900009c2:	f7840513          	addi	a0,s0,-136
    900009c6:	00000097          	auipc	ra,0x0
    900009ca:	e7a080e7          	jalr	-390(ra) # 90000840 <_ZN5riscv8register6scause6Scause5cause17ha75a563393405949E>
    900009ce:	faa40423          	sb	a0,-88(s0)
    900009d2:	fab404a3          	sb	a1,-87(s0)
    900009d6:	fa840513          	addi	a0,s0,-88
    900009da:	f8a43423          	sd	a0,-120(s0)

00000000900009de <.LBB2_17>:
    900009de:	00001517          	auipc	a0,0x1
    900009e2:	97e50513          	addi	a0,a0,-1666 # 9000135c <_ZN66_$LT$riscv..register..scause..Trap$u20$as$u20$core..fmt..Debug$GT$3fmt17he698110495db97efE>
    900009e6:	f8a43823          	sd	a0,-112(s0)
    900009ea:	f8040513          	addi	a0,s0,-128
    900009ee:	f8a43c23          	sd	a0,-104(s0)

00000000900009f2 <.LBB2_18>:
    900009f2:	00002517          	auipc	a0,0x2
    900009f6:	77850513          	addi	a0,a0,1912 # 9000316a <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E>
    900009fa:	faa43023          	sd	a0,-96(s0)

00000000900009fe <.LBB2_19>:
    900009fe:	00008517          	auipc	a0,0x8
    90000a02:	b1250513          	addi	a0,a0,-1262 # 90008510 <.Lanon.8e29458fb4fe27a1d1531ba27e97313e.11>
    90000a06:	faa43823          	sd	a0,-80(s0)
    90000a0a:	450d                	li	a0,3
    90000a0c:	faa43c23          	sd	a0,-72(s0)

0000000090000a10 <.LBB2_20>:
    90000a10:	00008517          	auipc	a0,0x8
    90000a14:	b3050513          	addi	a0,a0,-1232 # 90008540 <.Lanon.8e29458fb4fe27a1d1531ba27e97313e.12>
    90000a18:	fca43023          	sd	a0,-64(s0)
    90000a1c:	4509                	li	a0,2
    90000a1e:	fca43423          	sd	a0,-56(s0)
    90000a22:	f8840593          	addi	a1,s0,-120
    90000a26:	fcb43823          	sd	a1,-48(s0)
    90000a2a:	fca43c23          	sd	a0,-40(s0)

0000000090000a2e <.LBB2_21>:
    90000a2e:	00008597          	auipc	a1,0x8
    90000a32:	b9258593          	addi	a1,a1,-1134 # 900085c0 <.Lanon.8e29458fb4fe27a1d1531ba27e97313e.14>
    90000a36:	a8b5                	j	90000ab2 <.LBB2_26+0x8>

0000000090000a38 <.LBB2_22>:
    90000a38:	00008517          	auipc	a0,0x8
    90000a3c:	c2050513          	addi	a0,a0,-992 # 90008658 <.Lanon.8e29458fb4fe27a1d1531ba27e97313e.20>
    90000a40:	faa43823          	sd	a0,-80(s0)
    90000a44:	4505                	li	a0,1
    90000a46:	faa43c23          	sd	a0,-72(s0)
    90000a4a:	fc043023          	sd	zero,-64(s0)

0000000090000a4e <.LBB2_23>:
    90000a4e:	00008517          	auipc	a0,0x8
    90000a52:	aa250513          	addi	a0,a0,-1374 # 900084f0 <.Lanon.8e29458fb4fe27a1d1531ba27e97313e.8>
    90000a56:	fca43823          	sd	a0,-48(s0)
    90000a5a:	fc043c23          	sd	zero,-40(s0)
    90000a5e:	fb040513          	addi	a0,s0,-80
    90000a62:	00000097          	auipc	ra,0x0
    90000a66:	5f8080e7          	jalr	1528(ra) # 9000105a <_ZN2os7console5print17h5d32e4d633d8cdddE>
    90000a6a:	00000097          	auipc	ra,0x0
    90000a6e:	9ca080e7          	jalr	-1590(ra) # 90000434 <_ZN2os5batch12run_next_app17h14d6067bcbd531efE>
    90000a72:	0000                	unimp
    90000a74:	fa840513          	addi	a0,s0,-88
    90000a78:	f8a43423          	sd	a0,-120(s0)

0000000090000a7c <.LBB2_24>:
    90000a7c:	00003517          	auipc	a0,0x3
    90000a80:	bd050513          	addi	a0,a0,-1072 # 9000364c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    90000a84:	f8a43823          	sd	a0,-112(s0)

0000000090000a88 <.LBB2_25>:
    90000a88:	00008517          	auipc	a0,0x8
    90000a8c:	ed050513          	addi	a0,a0,-304 # 90008958 <anon.b6c12ff4c8d908a8c89a97ca25ce212f.1.llvm.1425950514892736462>
    90000a90:	faa43823          	sd	a0,-80(s0)
    90000a94:	4505                	li	a0,1
    90000a96:	faa43c23          	sd	a0,-72(s0)
    90000a9a:	fc043023          	sd	zero,-64(s0)
    90000a9e:	f8840593          	addi	a1,s0,-120
    90000aa2:	fcb43823          	sd	a1,-48(s0)
    90000aa6:	fca43c23          	sd	a0,-40(s0)

0000000090000aaa <.LBB2_26>:
    90000aaa:	00008597          	auipc	a1,0x8
    90000aae:	ed658593          	addi	a1,a1,-298 # 90008980 <anon.b6c12ff4c8d908a8c89a97ca25ce212f.3.llvm.1425950514892736462>
    90000ab2:	fb040513          	addi	a0,s0,-80
    90000ab6:	00001097          	auipc	ra,0x1
    90000aba:	ca0080e7          	jalr	-864(ra) # 90001756 <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>
	...

0000000090000ac0 <rust_begin_unwind>:
    90000ac0:	7171                	addi	sp,sp,-176
    90000ac2:	f506                	sd	ra,168(sp)
    90000ac4:	f122                	sd	s0,160(sp)
    90000ac6:	ed26                	sd	s1,152(sp)
    90000ac8:	e94a                	sd	s2,144(sp)
    90000aca:	1900                	addi	s0,sp,176
    90000acc:	892a                	mv	s2,a0
    90000ace:	00001097          	auipc	ra,0x1
    90000ad2:	c0c080e7          	jalr	-1012(ra) # 900016da <_ZN4core5panic9PanicInfo8location17h1a36f39edfc37a5bE>
    90000ad6:	e515                	bnez	a0,90000b02 <.LBB0_10+0x16>
    90000ad8:	854a                	mv	a0,s2
    90000ada:	00001097          	auipc	ra,0x1
    90000ade:	bfc080e7          	jalr	-1028(ra) # 900016d6 <_ZN4core5panic9PanicInfo7message17ha124ea628bb1593aE>
    90000ae2:	e52d                	bnez	a0,90000b4c <.LBB0_12+0x16>

0000000090000ae4 <.LBB0_9>:
    90000ae4:	00008517          	auipc	a0,0x8
    90000ae8:	b8450513          	addi	a0,a0,-1148 # 90008668 <.Lanon.86a3613c128665d32fc75176e6ae67c2.0>

0000000090000aec <.LBB0_10>:
    90000aec:	00008617          	auipc	a2,0x8
    90000af0:	bf460613          	addi	a2,a2,-1036 # 900086e0 <.Lanon.86a3613c128665d32fc75176e6ae67c2.5>
    90000af4:	02b00593          	li	a1,43
    90000af8:	00001097          	auipc	ra,0x1
    90000afc:	bf2080e7          	jalr	-1038(ra) # 900016ea <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
    90000b00:	0000                	unimp
    90000b02:	84aa                	mv	s1,a0
    90000b04:	00001097          	auipc	ra,0x1
    90000b08:	bda080e7          	jalr	-1062(ra) # 900016de <_ZN4core5panic8Location4file17h3a63c909928b6622E>
    90000b0c:	f8a43423          	sd	a0,-120(s0)
    90000b10:	f8b43823          	sd	a1,-112(s0)
    90000b14:	8526                	mv	a0,s1
    90000b16:	00001097          	auipc	ra,0x1
    90000b1a:	bd0080e7          	jalr	-1072(ra) # 900016e6 <_ZN4core5panic8Location4line17h438064cf29667b6aE>
    90000b1e:	f8a42e23          	sw	a0,-100(s0)
    90000b22:	854a                	mv	a0,s2
    90000b24:	00001097          	auipc	ra,0x1
    90000b28:	bb2080e7          	jalr	-1102(ra) # 900016d6 <_ZN4core5panic9PanicInfo7message17ha124ea628bb1593aE>
    90000b2c:	e541                	bnez	a0,90000bb4 <.LBB0_15+0x24>

0000000090000b2e <.LBB0_11>:
    90000b2e:	00008517          	auipc	a0,0x8
    90000b32:	b3a50513          	addi	a0,a0,-1222 # 90008668 <.Lanon.86a3613c128665d32fc75176e6ae67c2.0>

0000000090000b36 <.LBB0_12>:
    90000b36:	00008617          	auipc	a2,0x8
    90000b3a:	c1a60613          	addi	a2,a2,-998 # 90008750 <.Lanon.86a3613c128665d32fc75176e6ae67c2.10>
    90000b3e:	02b00593          	li	a1,43
    90000b42:	00001097          	auipc	ra,0x1
    90000b46:	ba8080e7          	jalr	-1112(ra) # 900016ea <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
    90000b4a:	0000                	unimp
    90000b4c:	faa43423          	sd	a0,-88(s0)
    90000b50:	fa840513          	addi	a0,s0,-88
    90000b54:	f4a43c23          	sd	a0,-168(s0)

0000000090000b58 <.LBB0_13>:
    90000b58:	00000517          	auipc	a0,0x0
    90000b5c:	65a50513          	addi	a0,a0,1626 # 900011b2 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h8fce09afd38a4be5E>
    90000b60:	f6a43023          	sd	a0,-160(s0)
    90000b64:	fb040513          	addi	a0,s0,-80
    90000b68:	f8a43423          	sd	a0,-120(s0)

0000000090000b6c <.LBB0_14>:
    90000b6c:	00008517          	auipc	a0,0x8
    90000b70:	b3c50513          	addi	a0,a0,-1220 # 900086a8 <.Lanon.86a3613c128665d32fc75176e6ae67c2.3>
    90000b74:	faa43823          	sd	a0,-80(s0)
    90000b78:	4509                	li	a0,2
    90000b7a:	faa43c23          	sd	a0,-72(s0)
    90000b7e:	fc043023          	sd	zero,-64(s0)
    90000b82:	f5840513          	addi	a0,s0,-168
    90000b86:	fca43823          	sd	a0,-48(s0)
    90000b8a:	4505                	li	a0,1
    90000b8c:	fca43c23          	sd	a0,-40(s0)

0000000090000b90 <.LBB0_15>:
    90000b90:	00008597          	auipc	a1,0x8
    90000b94:	cd058593          	addi	a1,a1,-816 # 90008860 <anon.9696fc7f3b11bdd2401a2df391a12fb6.0.llvm.13126102975132998425>
    90000b98:	f8840513          	addi	a0,s0,-120
    90000b9c:	fb040613          	addi	a2,s0,-80
    90000ba0:	00001097          	auipc	ra,0x1
    90000ba4:	24e080e7          	jalr	590(ra) # 90001dee <_ZN4core3fmt5write17h338141860f5a80fbE>
    90000ba8:	e949                	bnez	a0,90000c3a <.LBB0_21>
    90000baa:	00000097          	auipc	ra,0x0
    90000bae:	bb2080e7          	jalr	-1102(ra) # 9000075c <_ZN2os3sbi8shutdown17hc1300fe5ffdb27e6E>
    90000bb2:	0000                	unimp
    90000bb4:	faa43023          	sd	a0,-96(s0)
    90000bb8:	f8840513          	addi	a0,s0,-120
    90000bbc:	f4a43c23          	sd	a0,-168(s0)

0000000090000bc0 <.LBB0_16>:
    90000bc0:	00000517          	auipc	a0,0x0
    90000bc4:	5d050513          	addi	a0,a0,1488 # 90001190 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3fcafc7c7a83a0b9E>
    90000bc8:	f6a43023          	sd	a0,-160(s0)
    90000bcc:	f9c40513          	addi	a0,s0,-100
    90000bd0:	f6a43423          	sd	a0,-152(s0)

0000000090000bd4 <.LBB0_17>:
    90000bd4:	00003517          	auipc	a0,0x3
    90000bd8:	8bc50513          	addi	a0,a0,-1860 # 90003490 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h4f29d8511ba5e68eE>
    90000bdc:	f6a43823          	sd	a0,-144(s0)
    90000be0:	fa040513          	addi	a0,s0,-96
    90000be4:	f6a43c23          	sd	a0,-136(s0)

0000000090000be8 <.LBB0_18>:
    90000be8:	00000517          	auipc	a0,0x0
    90000bec:	5ca50513          	addi	a0,a0,1482 # 900011b2 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h8fce09afd38a4be5E>
    90000bf0:	f8a43023          	sd	a0,-128(s0)
    90000bf4:	fb040513          	addi	a0,s0,-80
    90000bf8:	faa43423          	sd	a0,-88(s0)

0000000090000bfc <.LBB0_19>:
    90000bfc:	00008517          	auipc	a0,0x8
    90000c00:	b1450513          	addi	a0,a0,-1260 # 90008710 <.Lanon.86a3613c128665d32fc75176e6ae67c2.9>
    90000c04:	faa43823          	sd	a0,-80(s0)
    90000c08:	4511                	li	a0,4
    90000c0a:	faa43c23          	sd	a0,-72(s0)
    90000c0e:	fc043023          	sd	zero,-64(s0)
    90000c12:	f5840513          	addi	a0,s0,-168
    90000c16:	fca43823          	sd	a0,-48(s0)
    90000c1a:	450d                	li	a0,3
    90000c1c:	fca43c23          	sd	a0,-40(s0)

0000000090000c20 <.LBB0_20>:
    90000c20:	00008597          	auipc	a1,0x8
    90000c24:	c4058593          	addi	a1,a1,-960 # 90008860 <anon.9696fc7f3b11bdd2401a2df391a12fb6.0.llvm.13126102975132998425>
    90000c28:	fa840513          	addi	a0,s0,-88
    90000c2c:	fb040613          	addi	a2,s0,-80
    90000c30:	00001097          	auipc	ra,0x1
    90000c34:	1be080e7          	jalr	446(ra) # 90001dee <_ZN4core3fmt5write17h338141860f5a80fbE>
    90000c38:	d92d                	beqz	a0,90000baa <.LBB0_15+0x1a>

0000000090000c3a <.LBB0_21>:
    90000c3a:	00008517          	auipc	a0,0x8
    90000c3e:	c5650513          	addi	a0,a0,-938 # 90008890 <anon.9696fc7f3b11bdd2401a2df391a12fb6.1.llvm.13126102975132998425>

0000000090000c42 <.LBB0_22>:
    90000c42:	00008697          	auipc	a3,0x8
    90000c46:	c7e68693          	addi	a3,a3,-898 # 900088c0 <anon.9696fc7f3b11bdd2401a2df391a12fb6.2.llvm.13126102975132998425>

0000000090000c4a <.LBB0_23>:
    90000c4a:	00008717          	auipc	a4,0x8
    90000c4e:	ca670713          	addi	a4,a4,-858 # 900088f0 <anon.9696fc7f3b11bdd2401a2df391a12fb6.4.llvm.13126102975132998425>
    90000c52:	fb040613          	addi	a2,s0,-80
    90000c56:	02b00593          	li	a1,43
    90000c5a:	00001097          	auipc	ra,0x1
    90000c5e:	a30080e7          	jalr	-1488(ra) # 9000168a <_ZN4core6option18expect_none_failed17hf4b8b266798017eaE>
	...

0000000090000c64 <_ZN4spin4once13Once$LT$T$GT$9call_once17hf970fb52e2f39247E>:
    90000c64:	714d                	addi	sp,sp,-336
    90000c66:	e686                	sd	ra,328(sp)
    90000c68:	e2a2                	sd	s0,320(sp)
    90000c6a:	fe26                	sd	s1,312(sp)
    90000c6c:	fa4a                	sd	s2,304(sp)
    90000c6e:	f64e                	sd	s3,296(sp)
    90000c70:	f252                	sd	s4,288(sp)
    90000c72:	0a80                	addi	s0,sp,336
    90000c74:	84aa                	mv	s1,a0
    90000c76:	0330000f          	fence	rw,rw
    90000c7a:	6108                	ld	a0,0(a0)
    90000c7c:	0230000f          	fence	r,rw
    90000c80:	e555                	bnez	a0,90000d2c <.LBB0_14+0x92>
    90000c82:	4585                	li	a1,1
    90000c84:	1604b52f          	lr.d.aqrl	a0,(s1)
    90000c88:	e501                	bnez	a0,90000c90 <_ZN4spin4once13Once$LT$T$GT$9call_once17hf970fb52e2f39247E+0x2c>
    90000c8a:	1eb4b62f          	sc.d.aqrl	a2,a1,(s1)
    90000c8e:	fa7d                	bnez	a2,90000c84 <_ZN4spin4once13Once$LT$T$GT$9call_once17hf970fb52e2f39247E+0x20>
    90000c90:	ed51                	bnez	a0,90000d2c <.LBB0_14+0x92>
    90000c92:	ea943823          	sd	s1,-336(s0)
    90000c96:	eab40c23          	sb	a1,-328(s0)

0000000090000c9a <.LBB0_14>:
    90000c9a:	00009917          	auipc	s2,0x9
    90000c9e:	36690913          	addi	s2,s2,870 # 9000a000 <erodata>
    90000ca2:	00093a03          	ld	s4,0(s2)
    90000ca6:	f4840513          	addi	a0,s0,-184
    90000caa:	08800613          	li	a2,136
    90000cae:	4581                	li	a1,0
    90000cb0:	00003097          	auipc	ra,0x3
    90000cb4:	022080e7          	jalr	34(ra) # 90003cd2 <memset>
    90000cb8:	001a0513          	addi	a0,s4,1
    90000cbc:	0d456e63          	bltu	a0,s4,90000d98 <.LBB0_19>
    90000cc0:	45c5                	li	a1,17
    90000cc2:	0eba7463          	bgeu	s4,a1,90000daa <.LBB0_20>
    90000cc6:	00351613          	slli	a2,a0,0x3
    90000cca:	00890593          	addi	a1,s2,8
    90000cce:	f4840913          	addi	s2,s0,-184
    90000cd2:	854a                	mv	a0,s2
    90000cd4:	00003097          	auipc	ra,0x3
    90000cd8:	fe8080e7          	jalr	-24(ra) # 90003cbc <memcpy>
    90000cdc:	ec040993          	addi	s3,s0,-320
    90000ce0:	08800613          	li	a2,136
    90000ce4:	854e                	mv	a0,s3
    90000ce6:	85ca                	mv	a1,s2
    90000ce8:	00003097          	auipc	ra,0x3
    90000cec:	fd4080e7          	jalr	-44(ra) # 90003cbc <memcpy>
    90000cf0:	4505                	li	a0,1
    90000cf2:	e488                	sd	a0,8(s1)
    90000cf4:	0004b823          	sd	zero,16(s1)
    90000cf8:	0144bc23          	sd	s4,24(s1)
    90000cfc:	0204b023          	sd	zero,32(s1)
    90000d00:	02848513          	addi	a0,s1,40
    90000d04:	08800613          	li	a2,136
    90000d08:	85ce                	mv	a1,s3
    90000d0a:	00003097          	auipc	ra,0x3
    90000d0e:	fb2080e7          	jalr	-78(ra) # 90003cbc <memcpy>
    90000d12:	ea040c23          	sb	zero,-328(s0)
    90000d16:	0310000f          	fence	rw,w
    90000d1a:	4509                	li	a0,2
    90000d1c:	e088                	sd	a0,0(s1)
    90000d1e:	eb040513          	addi	a0,s0,-336
    90000d22:	00001097          	auipc	ra,0x1
    90000d26:	89e080e7          	jalr	-1890(ra) # 900015c0 <_ZN60_$LT$spin..once..Finish$u20$as$u20$core..ops..drop..Drop$GT$4drop17h05e01cfad6791585E>
    90000d2a:	a005                	j	90000d4a <.LBB0_14+0xb0>
    90000d2c:	4585                	li	a1,1
    90000d2e:	00a5cb63          	blt	a1,a0,90000d44 <.LBB0_14+0xaa>
    90000d32:	02b51663          	bne	a0,a1,90000d5e <.LBB0_15>
    90000d36:	0330000f          	fence	rw,rw
    90000d3a:	6088                	ld	a0,0(s1)
    90000d3c:	0230000f          	fence	r,rw
    90000d40:	fea5d9e3          	bge	a1,a0,90000d32 <.LBB0_14+0x98>
    90000d44:	4589                	li	a1,2
    90000d46:	02b51b63          	bne	a0,a1,90000d7c <.LBB0_17>
    90000d4a:	01048513          	addi	a0,s1,16
    90000d4e:	7a12                	ld	s4,288(sp)
    90000d50:	79b2                	ld	s3,296(sp)
    90000d52:	7952                	ld	s2,304(sp)
    90000d54:	74f2                	ld	s1,312(sp)
    90000d56:	6416                	ld	s0,320(sp)
    90000d58:	60b6                	ld	ra,328(sp)
    90000d5a:	6171                	addi	sp,sp,336
    90000d5c:	8082                	ret

0000000090000d5e <.LBB0_15>:
    90000d5e:	00008517          	auipc	a0,0x8
    90000d62:	a9a50513          	addi	a0,a0,-1382 # 900087f8 <anon.e5d4c412a24bd94cb16e9a0f1290cfed.3.llvm.13426842007594163884>

0000000090000d66 <.LBB0_16>:
    90000d66:	00008617          	auipc	a2,0x8
    90000d6a:	aba60613          	addi	a2,a2,-1350 # 90008820 <anon.e5d4c412a24bd94cb16e9a0f1290cfed.4.llvm.13426842007594163884>
    90000d6e:	02800593          	li	a1,40
    90000d72:	00001097          	auipc	ra,0x1
    90000d76:	978080e7          	jalr	-1672(ra) # 900016ea <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
	...

0000000090000d7c <.LBB0_17>:
    90000d7c:	00008517          	auipc	a0,0x8
    90000d80:	9ec50513          	addi	a0,a0,-1556 # 90008768 <anon.e5d4c412a24bd94cb16e9a0f1290cfed.0.llvm.13426842007594163884>

0000000090000d84 <.LBB0_18>:
    90000d84:	00008617          	auipc	a2,0x8
    90000d88:	a5c60613          	addi	a2,a2,-1444 # 900087e0 <anon.e5d4c412a24bd94cb16e9a0f1290cfed.2.llvm.13426842007594163884>
    90000d8c:	45c5                	li	a1,17
    90000d8e:	00001097          	auipc	ra,0x1
    90000d92:	95c080e7          	jalr	-1700(ra) # 900016ea <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
	...

0000000090000d98 <.LBB0_19>:
    90000d98:	00008517          	auipc	a0,0x8
    90000d9c:	ab050513          	addi	a0,a0,-1360 # 90008848 <anon.e5d4c412a24bd94cb16e9a0f1290cfed.6.llvm.13426842007594163884>
    90000da0:	00002097          	auipc	ra,0x2
    90000da4:	bd2080e7          	jalr	-1070(ra) # 90002972 <_ZN4core5slice5index29slice_end_index_overflow_fail17h5ff2b53285909b6aE>
	...

0000000090000daa <.LBB0_20>:
    90000daa:	00008617          	auipc	a2,0x8
    90000dae:	a9e60613          	addi	a2,a2,-1378 # 90008848 <anon.e5d4c412a24bd94cb16e9a0f1290cfed.6.llvm.13426842007594163884>
    90000db2:	45c5                	li	a1,17
    90000db4:	00002097          	auipc	ra,0x2
    90000db8:	b3e080e7          	jalr	-1218(ra) # 900028f2 <_ZN4core5slice5index24slice_end_index_len_fail17h397499141087200aE>
	...

0000000090000dbe <_ZN4core3ptr37drop_in_place$LT$core..fmt..Error$GT$17haf4d3058b8cdda68E.llvm.13126102975132998425>:
    90000dbe:	1141                	addi	sp,sp,-16
    90000dc0:	e406                	sd	ra,8(sp)
    90000dc2:	e022                	sd	s0,0(sp)
    90000dc4:	0800                	addi	s0,sp,16
    90000dc6:	6402                	ld	s0,0(sp)
    90000dc8:	60a2                	ld	ra,8(sp)
    90000dca:	0141                	addi	sp,sp,16
    90000dcc:	8082                	ret

0000000090000dce <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6c7162ae88ab7631E.llvm.13126102975132998425>:
    90000dce:	1101                	addi	sp,sp,-32
    90000dd0:	ec06                	sd	ra,24(sp)
    90000dd2:	e822                	sd	s0,16(sp)
    90000dd4:	1000                	addi	s0,sp,32
    90000dd6:	0005851b          	sext.w	a0,a1
    90000dda:	08000613          	li	a2,128
    90000dde:	fe042623          	sw	zero,-20(s0)
    90000de2:	00c57663          	bgeu	a0,a2,90000dee <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6c7162ae88ab7631E.llvm.13126102975132998425+0x20>
    90000de6:	feb40623          	sb	a1,-20(s0)
    90000dea:	4505                	li	a0,1
    90000dec:	a859                	j	90000e82 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6c7162ae88ab7631E.llvm.13126102975132998425+0xb4>
    90000dee:	00b5d51b          	srliw	a0,a1,0xb
    90000df2:	e105                	bnez	a0,90000e12 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6c7162ae88ab7631E.llvm.13126102975132998425+0x44>
    90000df4:	0065d513          	srli	a0,a1,0x6
    90000df8:	03f5f593          	andi	a1,a1,63
    90000dfc:	fc056613          	ori	a2,a0,-64
    90000e00:	fec40623          	sb	a2,-20(s0)
    90000e04:	0805e513          	ori	a0,a1,128
    90000e08:	fea406a3          	sb	a0,-19(s0)
    90000e0c:	4509                	li	a0,2
    90000e0e:	85b2                	mv	a1,a2
    90000e10:	a88d                	j	90000e82 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6c7162ae88ab7631E.llvm.13126102975132998425+0xb4>
    90000e12:	0105d51b          	srliw	a0,a1,0x10
    90000e16:	e905                	bnez	a0,90000e46 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6c7162ae88ab7631E.llvm.13126102975132998425+0x78>
    90000e18:	00c5d51b          	srliw	a0,a1,0xc
    90000e1c:	0065d61b          	srliw	a2,a1,0x6
    90000e20:	03f5f593          	andi	a1,a1,63
    90000e24:	fe056693          	ori	a3,a0,-32
    90000e28:	fed40623          	sb	a3,-20(s0)
    90000e2c:	03f67513          	andi	a0,a2,63
    90000e30:	08056513          	ori	a0,a0,128
    90000e34:	fea406a3          	sb	a0,-19(s0)
    90000e38:	0805e513          	ori	a0,a1,128
    90000e3c:	fea40723          	sb	a0,-18(s0)
    90000e40:	450d                	li	a0,3
    90000e42:	85b6                	mv	a1,a3
    90000e44:	a83d                	j	90000e82 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6c7162ae88ab7631E.llvm.13126102975132998425+0xb4>
    90000e46:	0125d51b          	srliw	a0,a1,0x12
    90000e4a:	00c5d61b          	srliw	a2,a1,0xc
    90000e4e:	0065d69b          	srliw	a3,a1,0x6
    90000e52:	03f5f593          	andi	a1,a1,63
    90000e56:	ff056713          	ori	a4,a0,-16
    90000e5a:	fee40623          	sb	a4,-20(s0)
    90000e5e:	03f67513          	andi	a0,a2,63
    90000e62:	08056513          	ori	a0,a0,128
    90000e66:	fea406a3          	sb	a0,-19(s0)
    90000e6a:	03f6f513          	andi	a0,a3,63
    90000e6e:	08056513          	ori	a0,a0,128
    90000e72:	fea40723          	sb	a0,-18(s0)
    90000e76:	0805e513          	ori	a0,a1,128
    90000e7a:	fea407a3          	sb	a0,-17(s0)
    90000e7e:	4511                	li	a0,4
    90000e80:	85ba                	mv	a1,a4
    90000e82:	fec40613          	addi	a2,s0,-20
    90000e86:	00a607b3          	add	a5,a2,a0
    90000e8a:	0e000393          	li	t2,224
    90000e8e:	0f000313          	li	t1,240
    90000e92:	001c0837          	lui	a6,0x1c0
    90000e96:	001102b7          	lui	t0,0x110
    90000e9a:	4885                	li	a7,1
    90000e9c:	00160693          	addi	a3,a2,1
    90000ea0:	03859513          	slli	a0,a1,0x38
    90000ea4:	43855713          	srai	a4,a0,0x38
    90000ea8:	0ff5f513          	andi	a0,a1,255
    90000eac:	06075d63          	bgez	a4,90000f26 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6c7162ae88ab7631E.llvm.13126102975132998425+0x158>
    90000eb0:	02f68e63          	beq	a3,a5,90000eec <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6c7162ae88ab7631E.llvm.13126102975132998425+0x11e>
    90000eb4:	00164703          	lbu	a4,1(a2)
    90000eb8:	00260693          	addi	a3,a2,2
    90000ebc:	03f77613          	andi	a2,a4,63
    90000ec0:	89fd                	andi	a1,a1,31
    90000ec2:	02756a63          	bltu	a0,t2,90000ef6 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6c7162ae88ab7631E.llvm.13126102975132998425+0x128>
    90000ec6:	02f68c63          	beq	a3,a5,90000efe <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6c7162ae88ab7631E.llvm.13126102975132998425+0x130>
    90000eca:	0006c703          	lbu	a4,0(a3)
    90000ece:	0685                	addi	a3,a3,1
    90000ed0:	03f77713          	andi	a4,a4,63
    90000ed4:	061a                	slli	a2,a2,0x6
    90000ed6:	8e59                	or	a2,a2,a4
    90000ed8:	02656963          	bltu	a0,t1,90000f0a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6c7162ae88ab7631E.llvm.13126102975132998425+0x13c>
    90000edc:	02f68b63          	beq	a3,a5,90000f12 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6c7162ae88ab7631E.llvm.13126102975132998425+0x144>
    90000ee0:	0006c503          	lbu	a0,0(a3)
    90000ee4:	0685                	addi	a3,a3,1
    90000ee6:	03f57513          	andi	a0,a0,63
    90000eea:	a035                	j	90000f16 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6c7162ae88ab7631E.llvm.13126102975132998425+0x148>
    90000eec:	4601                	li	a2,0
    90000eee:	86be                	mv	a3,a5
    90000ef0:	89fd                	andi	a1,a1,31
    90000ef2:	fc757ae3          	bgeu	a0,t2,90000ec6 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6c7162ae88ab7631E.llvm.13126102975132998425+0xf8>
    90000ef6:	00659513          	slli	a0,a1,0x6
    90000efa:	8d51                	or	a0,a0,a2
    90000efc:	a02d                	j	90000f26 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6c7162ae88ab7631E.llvm.13126102975132998425+0x158>
    90000efe:	4701                	li	a4,0
    90000f00:	86be                	mv	a3,a5
    90000f02:	061a                	slli	a2,a2,0x6
    90000f04:	8e59                	or	a2,a2,a4
    90000f06:	fc657be3          	bgeu	a0,t1,90000edc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6c7162ae88ab7631E.llvm.13126102975132998425+0x10e>
    90000f0a:	00c59513          	slli	a0,a1,0xc
    90000f0e:	8d51                	or	a0,a0,a2
    90000f10:	a819                	j	90000f26 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6c7162ae88ab7631E.llvm.13126102975132998425+0x158>
    90000f12:	4501                	li	a0,0
    90000f14:	86be                	mv	a3,a5
    90000f16:	05ca                	slli	a1,a1,0x12
    90000f18:	0105f5b3          	and	a1,a1,a6
    90000f1c:	061a                	slli	a2,a2,0x6
    90000f1e:	8dd1                	or	a1,a1,a2
    90000f20:	8d4d                	or	a0,a0,a1
    90000f22:	00550c63          	beq	a0,t0,90000f3a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6c7162ae88ab7631E.llvm.13126102975132998425+0x16c>
    90000f26:	4581                	li	a1,0
    90000f28:	4601                	li	a2,0
    90000f2a:	00000073          	ecall
    90000f2e:	00f68663          	beq	a3,a5,90000f3a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6c7162ae88ab7631E.llvm.13126102975132998425+0x16c>
    90000f32:	0006c583          	lbu	a1,0(a3)
    90000f36:	8636                	mv	a2,a3
    90000f38:	b795                	j	90000e9c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6c7162ae88ab7631E.llvm.13126102975132998425+0xce>
    90000f3a:	4501                	li	a0,0
    90000f3c:	6442                	ld	s0,16(sp)
    90000f3e:	60e2                	ld	ra,24(sp)
    90000f40:	6105                	addi	sp,sp,32
    90000f42:	8082                	ret

0000000090000f44 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h915150ac323d613aE.llvm.13126102975132998425>:
    90000f44:	715d                	addi	sp,sp,-80
    90000f46:	e486                	sd	ra,72(sp)
    90000f48:	e0a2                	sd	s0,64(sp)
    90000f4a:	0880                	addi	s0,sp,80
    90000f4c:	6108                	ld	a0,0(a0)
    90000f4e:	7590                	ld	a2,40(a1)
    90000f50:	7194                	ld	a3,32(a1)
    90000f52:	faa43c23          	sd	a0,-72(s0)
    90000f56:	fec43423          	sd	a2,-24(s0)
    90000f5a:	fed43023          	sd	a3,-32(s0)
    90000f5e:	6d88                	ld	a0,24(a1)
    90000f60:	6990                	ld	a2,16(a1)
    90000f62:	6594                	ld	a3,8(a1)
    90000f64:	618c                	ld	a1,0(a1)
    90000f66:	fca43c23          	sd	a0,-40(s0)
    90000f6a:	fcc43823          	sd	a2,-48(s0)
    90000f6e:	fcd43423          	sd	a3,-56(s0)
    90000f72:	fcb43023          	sd	a1,-64(s0)

0000000090000f76 <.LBB2_1>:
    90000f76:	00008597          	auipc	a1,0x8
    90000f7a:	8ea58593          	addi	a1,a1,-1814 # 90008860 <anon.9696fc7f3b11bdd2401a2df391a12fb6.0.llvm.13126102975132998425>
    90000f7e:	fb840513          	addi	a0,s0,-72
    90000f82:	fc040613          	addi	a2,s0,-64
    90000f86:	00001097          	auipc	ra,0x1
    90000f8a:	e68080e7          	jalr	-408(ra) # 90001dee <_ZN4core3fmt5write17h338141860f5a80fbE>
    90000f8e:	6406                	ld	s0,64(sp)
    90000f90:	60a6                	ld	ra,72(sp)
    90000f92:	6161                	addi	sp,sp,80
    90000f94:	8082                	ret

0000000090000f96 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h585e7c24c9bb50adE.llvm.13126102975132998425>:
    90000f96:	1141                	addi	sp,sp,-16
    90000f98:	e406                	sd	ra,8(sp)
    90000f9a:	e022                	sd	s0,0(sp)
    90000f9c:	0800                	addi	s0,sp,16
    90000f9e:	ca4d                	beqz	a2,90001050 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h585e7c24c9bb50adE.llvm.13126102975132998425+0xba>
    90000fa0:	00c587b3          	add	a5,a1,a2
    90000fa4:	0e000393          	li	t2,224
    90000fa8:	0f000313          	li	t1,240
    90000fac:	001c0837          	lui	a6,0x1c0
    90000fb0:	001102b7          	lui	t0,0x110
    90000fb4:	4885                	li	a7,1
    90000fb6:	a819                	j	90000fcc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h585e7c24c9bb50adE.llvm.13126102975132998425+0x36>
    90000fb8:	00659513          	slli	a0,a1,0x6
    90000fbc:	8d51                	or	a0,a0,a2
    90000fbe:	4581                	li	a1,0
    90000fc0:	4601                	li	a2,0
    90000fc2:	00000073          	ecall
    90000fc6:	85b6                	mv	a1,a3
    90000fc8:	08f68463          	beq	a3,a5,90001050 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h585e7c24c9bb50adE.llvm.13126102975132998425+0xba>
    90000fcc:	00058603          	lb	a2,0(a1)
    90000fd0:	00158693          	addi	a3,a1,1
    90000fd4:	0ff67513          	andi	a0,a2,255
    90000fd8:	fe0653e3          	bgez	a2,90000fbe <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h585e7c24c9bb50adE.llvm.13126102975132998425+0x28>
    90000fdc:	00f68d63          	beq	a3,a5,90000ff6 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h585e7c24c9bb50adE.llvm.13126102975132998425+0x60>
    90000fe0:	0015c603          	lbu	a2,1(a1)
    90000fe4:	00258693          	addi	a3,a1,2
    90000fe8:	03f67613          	andi	a2,a2,63
    90000fec:	01f57593          	andi	a1,a0,31
    90000ff0:	fc7564e3          	bltu	a0,t2,90000fb8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h585e7c24c9bb50adE.llvm.13126102975132998425+0x22>
    90000ff4:	a039                	j	90001002 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h585e7c24c9bb50adE.llvm.13126102975132998425+0x6c>
    90000ff6:	4601                	li	a2,0
    90000ff8:	86be                	mv	a3,a5
    90000ffa:	01f57593          	andi	a1,a0,31
    90000ffe:	fa756de3          	bltu	a0,t2,90000fb8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h585e7c24c9bb50adE.llvm.13126102975132998425+0x22>
    90001002:	02f68363          	beq	a3,a5,90001028 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h585e7c24c9bb50adE.llvm.13126102975132998425+0x92>
    90001006:	0006c703          	lbu	a4,0(a3)
    9000100a:	0685                	addi	a3,a3,1
    9000100c:	03f77713          	andi	a4,a4,63
    90001010:	061a                	slli	a2,a2,0x6
    90001012:	8e59                	or	a2,a2,a4
    90001014:	02656063          	bltu	a0,t1,90001034 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h585e7c24c9bb50adE.llvm.13126102975132998425+0x9e>
    90001018:	02f68263          	beq	a3,a5,9000103c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h585e7c24c9bb50adE.llvm.13126102975132998425+0xa6>
    9000101c:	0006c503          	lbu	a0,0(a3)
    90001020:	0685                	addi	a3,a3,1
    90001022:	03f57513          	andi	a0,a0,63
    90001026:	a829                	j	90001040 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h585e7c24c9bb50adE.llvm.13126102975132998425+0xaa>
    90001028:	4701                	li	a4,0
    9000102a:	86be                	mv	a3,a5
    9000102c:	061a                	slli	a2,a2,0x6
    9000102e:	8e59                	or	a2,a2,a4
    90001030:	fe6574e3          	bgeu	a0,t1,90001018 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h585e7c24c9bb50adE.llvm.13126102975132998425+0x82>
    90001034:	00c59513          	slli	a0,a1,0xc
    90001038:	8d51                	or	a0,a0,a2
    9000103a:	b751                	j	90000fbe <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h585e7c24c9bb50adE.llvm.13126102975132998425+0x28>
    9000103c:	4501                	li	a0,0
    9000103e:	86be                	mv	a3,a5
    90001040:	05ca                	slli	a1,a1,0x12
    90001042:	0105f5b3          	and	a1,a1,a6
    90001046:	061a                	slli	a2,a2,0x6
    90001048:	8dd1                	or	a1,a1,a2
    9000104a:	8d4d                	or	a0,a0,a1
    9000104c:	f65519e3          	bne	a0,t0,90000fbe <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h585e7c24c9bb50adE.llvm.13126102975132998425+0x28>
    90001050:	4501                	li	a0,0
    90001052:	6402                	ld	s0,0(sp)
    90001054:	60a2                	ld	ra,8(sp)
    90001056:	0141                	addi	sp,sp,16
    90001058:	8082                	ret

000000009000105a <_ZN2os7console5print17h5d32e4d633d8cdddE>:
    9000105a:	715d                	addi	sp,sp,-80
    9000105c:	e486                	sd	ra,72(sp)
    9000105e:	e0a2                	sd	s0,64(sp)
    90001060:	0880                	addi	s0,sp,80
    90001062:	750c                	ld	a1,40(a0)
    90001064:	7110                	ld	a2,32(a0)
    90001066:	fc040693          	addi	a3,s0,-64
    9000106a:	fad43c23          	sd	a3,-72(s0)
    9000106e:	feb43423          	sd	a1,-24(s0)
    90001072:	fec43023          	sd	a2,-32(s0)
    90001076:	6d0c                	ld	a1,24(a0)
    90001078:	6910                	ld	a2,16(a0)
    9000107a:	6514                	ld	a3,8(a0)
    9000107c:	6108                	ld	a0,0(a0)
    9000107e:	fcb43c23          	sd	a1,-40(s0)
    90001082:	fcc43823          	sd	a2,-48(s0)
    90001086:	fcd43423          	sd	a3,-56(s0)
    9000108a:	fca43023          	sd	a0,-64(s0)

000000009000108e <.LBB4_3>:
    9000108e:	00007597          	auipc	a1,0x7
    90001092:	7d258593          	addi	a1,a1,2002 # 90008860 <anon.9696fc7f3b11bdd2401a2df391a12fb6.0.llvm.13126102975132998425>
    90001096:	fb840513          	addi	a0,s0,-72
    9000109a:	fc040613          	addi	a2,s0,-64
    9000109e:	00001097          	auipc	ra,0x1
    900010a2:	d50080e7          	jalr	-688(ra) # 90001dee <_ZN4core3fmt5write17h338141860f5a80fbE>
    900010a6:	e509                	bnez	a0,900010b0 <.LBB4_4>
    900010a8:	6406                	ld	s0,64(sp)
    900010aa:	60a6                	ld	ra,72(sp)
    900010ac:	6161                	addi	sp,sp,80
    900010ae:	8082                	ret

00000000900010b0 <.LBB4_4>:
    900010b0:	00007517          	auipc	a0,0x7
    900010b4:	7e050513          	addi	a0,a0,2016 # 90008890 <anon.9696fc7f3b11bdd2401a2df391a12fb6.1.llvm.13126102975132998425>

00000000900010b8 <.LBB4_5>:
    900010b8:	00008697          	auipc	a3,0x8
    900010bc:	80868693          	addi	a3,a3,-2040 # 900088c0 <anon.9696fc7f3b11bdd2401a2df391a12fb6.2.llvm.13126102975132998425>

00000000900010c0 <.LBB4_6>:
    900010c0:	00008717          	auipc	a4,0x8
    900010c4:	83070713          	addi	a4,a4,-2000 # 900088f0 <anon.9696fc7f3b11bdd2401a2df391a12fb6.4.llvm.13126102975132998425>
    900010c8:	fc040613          	addi	a2,s0,-64
    900010cc:	02b00593          	li	a1,43
    900010d0:	00000097          	auipc	ra,0x0
    900010d4:	5ba080e7          	jalr	1466(ra) # 9000168a <_ZN4core6option18expect_none_failed17hf4b8b266798017eaE>
	...

00000000900010da <rust_main>:
    900010da:	715d                	addi	sp,sp,-80
    900010dc:	e486                	sd	ra,72(sp)
    900010de:	e0a2                	sd	s0,64(sp)
    900010e0:	0880                	addi	s0,sp,80

00000000900010e2 <.LBB0_5>:
    900010e2:	00024517          	auipc	a0,0x24
    900010e6:	f1e50513          	addi	a0,a0,-226 # 90025000 <ebss>

00000000900010ea <.LBB0_6>:
    900010ea:	00023597          	auipc	a1,0x23
    900010ee:	f1658593          	addi	a1,a1,-234 # 90024000 <boot_stack_top>
    900010f2:	00a5f963          	bgeu	a1,a0,90001104 <.LBB0_6+0x1a>
    900010f6:	00158613          	addi	a2,a1,1
    900010fa:	00058023          	sb	zero,0(a1)
    900010fe:	85b2                	mv	a1,a2
    90001100:	fea66be3          	bltu	a2,a0,900010f6 <.LBB0_6+0xc>
    90001104:	fc040513          	addi	a0,s0,-64
    90001108:	faa43c23          	sd	a0,-72(s0)

000000009000110c <.LBB0_7>:
    9000110c:	00008517          	auipc	a0,0x8
    90001110:	82450513          	addi	a0,a0,-2012 # 90008930 <.Lanon.db373ce25dfeaf41079e038efc6d12ac.5>
    90001114:	fca43023          	sd	a0,-64(s0)
    90001118:	4505                	li	a0,1
    9000111a:	fca43423          	sd	a0,-56(s0)
    9000111e:	fc043823          	sd	zero,-48(s0)

0000000090001122 <.LBB0_8>:
    90001122:	00008517          	auipc	a0,0x8
    90001126:	81e50513          	addi	a0,a0,-2018 # 90008940 <anon.b6c12ff4c8d908a8c89a97ca25ce212f.0.llvm.1425950514892736462>
    9000112a:	fea43023          	sd	a0,-32(s0)
    9000112e:	fe043423          	sd	zero,-24(s0)

0000000090001132 <.LBB0_9>:
    90001132:	00007597          	auipc	a1,0x7
    90001136:	72e58593          	addi	a1,a1,1838 # 90008860 <anon.9696fc7f3b11bdd2401a2df391a12fb6.0.llvm.13126102975132998425>
    9000113a:	fb840513          	addi	a0,s0,-72
    9000113e:	fc040613          	addi	a2,s0,-64
    90001142:	00001097          	auipc	ra,0x1
    90001146:	cac080e7          	jalr	-852(ra) # 90001dee <_ZN4core3fmt5write17h338141860f5a80fbE>
    9000114a:	c515                	beqz	a0,90001176 <.LBB0_12+0x1a>

000000009000114c <.LBB0_10>:
    9000114c:	00007517          	auipc	a0,0x7
    90001150:	74450513          	addi	a0,a0,1860 # 90008890 <anon.9696fc7f3b11bdd2401a2df391a12fb6.1.llvm.13126102975132998425>

0000000090001154 <.LBB0_11>:
    90001154:	00007697          	auipc	a3,0x7
    90001158:	76c68693          	addi	a3,a3,1900 # 900088c0 <anon.9696fc7f3b11bdd2401a2df391a12fb6.2.llvm.13126102975132998425>

000000009000115c <.LBB0_12>:
    9000115c:	00007717          	auipc	a4,0x7
    90001160:	79470713          	addi	a4,a4,1940 # 900088f0 <anon.9696fc7f3b11bdd2401a2df391a12fb6.4.llvm.13126102975132998425>
    90001164:	fc040613          	addi	a2,s0,-64
    90001168:	02b00593          	li	a1,43
    9000116c:	00000097          	auipc	ra,0x0
    90001170:	51e080e7          	jalr	1310(ra) # 9000168a <_ZN4core6option18expect_none_failed17hf4b8b266798017eaE>
    90001174:	0000                	unimp
    90001176:	fffff097          	auipc	ra,0xfffff
    9000117a:	70e080e7          	jalr	1806(ra) # 90000884 <_ZN2os4trap4init17hcf0a19c9c6ec6c81E>
    9000117e:	fffff097          	auipc	ra,0xfffff
    90001182:	09c080e7          	jalr	156(ra) # 9000021a <_ZN2os5batch4init17ha1e8acf6e0b011a7E>
    90001186:	fffff097          	auipc	ra,0xfffff
    9000118a:	2ae080e7          	jalr	686(ra) # 90000434 <_ZN2os5batch12run_next_app17h14d6067bcbd531efE>
	...

0000000090001190 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3fcafc7c7a83a0b9E>:
    90001190:	1141                	addi	sp,sp,-16
    90001192:	e406                	sd	ra,8(sp)
    90001194:	e022                	sd	s0,0(sp)
    90001196:	0800                	addi	s0,sp,16
    90001198:	6110                	ld	a2,0(a0)
    9000119a:	6514                	ld	a3,8(a0)
    9000119c:	872e                	mv	a4,a1
    9000119e:	8532                	mv	a0,a2
    900011a0:	85b6                	mv	a1,a3
    900011a2:	863a                	mv	a2,a4
    900011a4:	6402                	ld	s0,0(sp)
    900011a6:	60a2                	ld	ra,8(sp)
    900011a8:	0141                	addi	sp,sp,16
    900011aa:	00001317          	auipc	t1,0x1
    900011ae:	37c30067          	jr	892(t1) # 90002526 <_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h669958e415ffd666E>

00000000900011b2 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h8fce09afd38a4be5E>:
    900011b2:	1141                	addi	sp,sp,-16
    900011b4:	e406                	sd	ra,8(sp)
    900011b6:	e022                	sd	s0,0(sp)
    900011b8:	0800                	addi	s0,sp,16
    900011ba:	6108                	ld	a0,0(a0)
    900011bc:	6402                	ld	s0,0(sp)
    900011be:	60a2                	ld	ra,8(sp)
    900011c0:	0141                	addi	sp,sp,16
    900011c2:	00001317          	auipc	t1,0x1
    900011c6:	bfa30067          	jr	-1030(t1) # 90001dbc <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h6000ae836ac5c51cE>

00000000900011ca <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h305632787b5869c5E>:
    900011ca:	1141                	addi	sp,sp,-16
    900011cc:	e406                	sd	ra,8(sp)
    900011ce:	e022                	sd	s0,0(sp)
    900011d0:	0800                	addi	s0,sp,16
    900011d2:	6108                	ld	a0,0(a0)
    900011d4:	6402                	ld	s0,0(sp)
    900011d6:	60a2                	ld	ra,8(sp)
    900011d8:	0141                	addi	sp,sp,16
    900011da:	00000317          	auipc	t1,0x0
    900011de:	20a30067          	jr	522(t1) # 900013e4 <_ZN71_$LT$riscv..register..scause..Interrupt$u20$as$u20$core..fmt..Debug$GT$3fmt17h08da1ca80b8bb693E>

00000000900011e2 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h71f49a7055db68feE>:
    900011e2:	1141                	addi	sp,sp,-16
    900011e4:	e406                	sd	ra,8(sp)
    900011e6:	e022                	sd	s0,0(sp)
    900011e8:	0800                	addi	s0,sp,16
    900011ea:	6108                	ld	a0,0(a0)
    900011ec:	6402                	ld	s0,0(sp)
    900011ee:	60a2                	ld	ra,8(sp)
    900011f0:	0141                	addi	sp,sp,16
    900011f2:	00000317          	auipc	t1,0x0
    900011f6:	2ac30067          	jr	684(t1) # 9000149e <_ZN71_$LT$riscv..register..scause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h725c1c6b2e929f9eE>

00000000900011fa <_ZN4core3ptr59drop_in_place$LT$$RF$riscv..register..scause..Exception$GT$17h097d0da4ae55288fE>:
    900011fa:	1141                	addi	sp,sp,-16
    900011fc:	e406                	sd	ra,8(sp)
    900011fe:	e022                	sd	s0,0(sp)
    90001200:	0800                	addi	s0,sp,16
    90001202:	6402                	ld	s0,0(sp)
    90001204:	60a2                	ld	ra,8(sp)
    90001206:	0141                	addi	sp,sp,16
    90001208:	8082                	ret

000000009000120a <_ZN5riscv8register6scause9Interrupt4from17h7fcf087f5ab1835bE>:
    9000120a:	1141                	addi	sp,sp,-16
    9000120c:	e406                	sd	ra,8(sp)
    9000120e:	e022                	sd	s0,0(sp)
    90001210:	0800                	addi	s0,sp,16
    90001212:	85aa                	mv	a1,a0
    90001214:	4611                	li	a2,4
    90001216:	4519                	li	a0,6
    90001218:	00b64e63          	blt	a2,a1,90001234 <_ZN5riscv8register6scause9Interrupt4from17h7fcf087f5ab1835bE+0x2a>
    9000121c:	c995                	beqz	a1,90001250 <_ZN5riscv8register6scause9Interrupt4from17h7fcf087f5ab1835bE+0x46>
    9000121e:	4605                	li	a2,1
    90001220:	02c58d63          	beq	a1,a2,9000125a <_ZN5riscv8register6scause9Interrupt4from17h7fcf087f5ab1835bE+0x50>
    90001224:	4611                	li	a2,4
    90001226:	00c59363          	bne	a1,a2,9000122c <_ZN5riscv8register6scause9Interrupt4from17h7fcf087f5ab1835bE+0x22>
    9000122a:	4509                	li	a0,2
    9000122c:	6402                	ld	s0,0(sp)
    9000122e:	60a2                	ld	ra,8(sp)
    90001230:	0141                	addi	sp,sp,16
    90001232:	8082                	ret
    90001234:	4615                	li	a2,5
    90001236:	02c58763          	beq	a1,a2,90001264 <_ZN5riscv8register6scause9Interrupt4from17h7fcf087f5ab1835bE+0x5a>
    9000123a:	4621                	li	a2,8
    9000123c:	02c58963          	beq	a1,a2,9000126e <_ZN5riscv8register6scause9Interrupt4from17h7fcf087f5ab1835bE+0x64>
    90001240:	4625                	li	a2,9
    90001242:	fec595e3          	bne	a1,a2,9000122c <_ZN5riscv8register6scause9Interrupt4from17h7fcf087f5ab1835bE+0x22>
    90001246:	4515                	li	a0,5
    90001248:	6402                	ld	s0,0(sp)
    9000124a:	60a2                	ld	ra,8(sp)
    9000124c:	0141                	addi	sp,sp,16
    9000124e:	8082                	ret
    90001250:	4501                	li	a0,0
    90001252:	6402                	ld	s0,0(sp)
    90001254:	60a2                	ld	ra,8(sp)
    90001256:	0141                	addi	sp,sp,16
    90001258:	8082                	ret
    9000125a:	4505                	li	a0,1
    9000125c:	6402                	ld	s0,0(sp)
    9000125e:	60a2                	ld	ra,8(sp)
    90001260:	0141                	addi	sp,sp,16
    90001262:	8082                	ret
    90001264:	450d                	li	a0,3
    90001266:	6402                	ld	s0,0(sp)
    90001268:	60a2                	ld	ra,8(sp)
    9000126a:	0141                	addi	sp,sp,16
    9000126c:	8082                	ret
    9000126e:	4511                	li	a0,4
    90001270:	6402                	ld	s0,0(sp)
    90001272:	60a2                	ld	ra,8(sp)
    90001274:	0141                	addi	sp,sp,16
    90001276:	8082                	ret

0000000090001278 <_ZN5riscv8register6scause9Exception4from17h4defeaca2f20f156E>:
    90001278:	1141                	addi	sp,sp,-16
    9000127a:	e406                	sd	ra,8(sp)
    9000127c:	e022                	sd	s0,0(sp)
    9000127e:	0800                	addi	s0,sp,16
    90001280:	85aa                	mv	a1,a0
    90001282:	4615                	li	a2,5
    90001284:	452d                	li	a0,11
    90001286:	02b65363          	bge	a2,a1,900012ac <_ZN5riscv8register6scause9Exception4from17h4defeaca2f20f156E+0x34>
    9000128a:	462d                	li	a2,11
    9000128c:	04b64163          	blt	a2,a1,900012ce <_ZN5riscv8register6scause9Exception4from17h4defeaca2f20f156E+0x56>
    90001290:	4619                	li	a2,6
    90001292:	06c58563          	beq	a1,a2,900012fc <_ZN5riscv8register6scause9Exception4from17h4defeaca2f20f156E+0x84>
    90001296:	461d                	li	a2,7
    90001298:	06c58763          	beq	a1,a2,90001306 <_ZN5riscv8register6scause9Exception4from17h4defeaca2f20f156E+0x8e>
    9000129c:	4621                	li	a2,8
    9000129e:	00c59363          	bne	a1,a2,900012a4 <_ZN5riscv8register6scause9Exception4from17h4defeaca2f20f156E+0x2c>
    900012a2:	451d                	li	a0,7
    900012a4:	6402                	ld	s0,0(sp)
    900012a6:	60a2                	ld	ra,8(sp)
    900012a8:	0141                	addi	sp,sp,16
    900012aa:	8082                	ret
    900012ac:	4605                	li	a2,1
    900012ae:	02b65e63          	bge	a2,a1,900012ea <_ZN5riscv8register6scause9Exception4from17h4defeaca2f20f156E+0x72>
    900012b2:	4609                	li	a2,2
    900012b4:	04c58e63          	beq	a1,a2,90001310 <_ZN5riscv8register6scause9Exception4from17h4defeaca2f20f156E+0x98>
    900012b8:	460d                	li	a2,3
    900012ba:	06c58063          	beq	a1,a2,9000131a <_ZN5riscv8register6scause9Exception4from17h4defeaca2f20f156E+0xa2>
    900012be:	4615                	li	a2,5
    900012c0:	fec592e3          	bne	a1,a2,900012a4 <_ZN5riscv8register6scause9Exception4from17h4defeaca2f20f156E+0x2c>
    900012c4:	4511                	li	a0,4
    900012c6:	6402                	ld	s0,0(sp)
    900012c8:	60a2                	ld	ra,8(sp)
    900012ca:	0141                	addi	sp,sp,16
    900012cc:	8082                	ret
    900012ce:	4631                	li	a2,12
    900012d0:	04c58a63          	beq	a1,a2,90001324 <_ZN5riscv8register6scause9Exception4from17h4defeaca2f20f156E+0xac>
    900012d4:	4635                	li	a2,13
    900012d6:	04c58c63          	beq	a1,a2,9000132e <_ZN5riscv8register6scause9Exception4from17h4defeaca2f20f156E+0xb6>
    900012da:	463d                	li	a2,15
    900012dc:	fcc594e3          	bne	a1,a2,900012a4 <_ZN5riscv8register6scause9Exception4from17h4defeaca2f20f156E+0x2c>
    900012e0:	4529                	li	a0,10
    900012e2:	6402                	ld	s0,0(sp)
    900012e4:	60a2                	ld	ra,8(sp)
    900012e6:	0141                	addi	sp,sp,16
    900012e8:	8082                	ret
    900012ea:	c5b9                	beqz	a1,90001338 <_ZN5riscv8register6scause9Exception4from17h4defeaca2f20f156E+0xc0>
    900012ec:	4605                	li	a2,1
    900012ee:	fac59be3          	bne	a1,a2,900012a4 <_ZN5riscv8register6scause9Exception4from17h4defeaca2f20f156E+0x2c>
    900012f2:	4505                	li	a0,1
    900012f4:	6402                	ld	s0,0(sp)
    900012f6:	60a2                	ld	ra,8(sp)
    900012f8:	0141                	addi	sp,sp,16
    900012fa:	8082                	ret
    900012fc:	4515                	li	a0,5
    900012fe:	6402                	ld	s0,0(sp)
    90001300:	60a2                	ld	ra,8(sp)
    90001302:	0141                	addi	sp,sp,16
    90001304:	8082                	ret
    90001306:	4519                	li	a0,6
    90001308:	6402                	ld	s0,0(sp)
    9000130a:	60a2                	ld	ra,8(sp)
    9000130c:	0141                	addi	sp,sp,16
    9000130e:	8082                	ret
    90001310:	4509                	li	a0,2
    90001312:	6402                	ld	s0,0(sp)
    90001314:	60a2                	ld	ra,8(sp)
    90001316:	0141                	addi	sp,sp,16
    90001318:	8082                	ret
    9000131a:	450d                	li	a0,3
    9000131c:	6402                	ld	s0,0(sp)
    9000131e:	60a2                	ld	ra,8(sp)
    90001320:	0141                	addi	sp,sp,16
    90001322:	8082                	ret
    90001324:	4521                	li	a0,8
    90001326:	6402                	ld	s0,0(sp)
    90001328:	60a2                	ld	ra,8(sp)
    9000132a:	0141                	addi	sp,sp,16
    9000132c:	8082                	ret
    9000132e:	4525                	li	a0,9
    90001330:	6402                	ld	s0,0(sp)
    90001332:	60a2                	ld	ra,8(sp)
    90001334:	0141                	addi	sp,sp,16
    90001336:	8082                	ret
    90001338:	4501                	li	a0,0
    9000133a:	6402                	ld	s0,0(sp)
    9000133c:	60a2                	ld	ra,8(sp)
    9000133e:	0141                	addi	sp,sp,16
    90001340:	8082                	ret

0000000090001342 <_ZN5riscv8register6scause6Scause4code17h69b008f0c3e7acbaE>:
    90001342:	1141                	addi	sp,sp,-16
    90001344:	e406                	sd	ra,8(sp)
    90001346:	e022                	sd	s0,0(sp)
    90001348:	0800                	addi	s0,sp,16
    9000134a:	6108                	ld	a0,0(a0)
    9000134c:	55fd                	li	a1,-1
    9000134e:	15fe                	slli	a1,a1,0x3f
    90001350:	15fd                	addi	a1,a1,-1
    90001352:	8d6d                	and	a0,a0,a1
    90001354:	6402                	ld	s0,0(sp)
    90001356:	60a2                	ld	ra,8(sp)
    90001358:	0141                	addi	sp,sp,16
    9000135a:	8082                	ret

000000009000135c <_ZN66_$LT$riscv..register..scause..Trap$u20$as$u20$core..fmt..Debug$GT$3fmt17he698110495db97efE>:
    9000135c:	7139                	addi	sp,sp,-64
    9000135e:	fc06                	sd	ra,56(sp)
    90001360:	f822                	sd	s0,48(sp)
    90001362:	f426                	sd	s1,40(sp)
    90001364:	f04a                	sd	s2,32(sp)
    90001366:	0080                	addi	s0,sp,64
    90001368:	00054603          	lbu	a2,0(a0)
    9000136c:	4685                	li	a3,1
    9000136e:	00150493          	addi	s1,a0,1
    90001372:	02d61563          	bne	a2,a3,9000139c <.LBB6_6>

0000000090001376 <.LBB6_4>:
    90001376:	00007617          	auipc	a2,0x7
    9000137a:	62260613          	addi	a2,a2,1570 # 90008998 <.Lanon.6c14da14959cf3cd6f72fc6e534cf4f7.0>
    9000137e:	fc040913          	addi	s2,s0,-64
    90001382:	46a5                	li	a3,9
    90001384:	854a                	mv	a0,s2
    90001386:	00001097          	auipc	ra,0x1
    9000138a:	164080e7          	jalr	356(ra) # 900024ea <_ZN4core3fmt9Formatter11debug_tuple17h33e702ebb7966d6cE>
    9000138e:	fc943c23          	sd	s1,-40(s0)

0000000090001392 <.LBB6_5>:
    90001392:	00007617          	auipc	a2,0x7
    90001396:	61660613          	addi	a2,a2,1558 # 900089a8 <.Lanon.6c14da14959cf3cd6f72fc6e534cf4f7.1>
    9000139a:	a01d                	j	900013c0 <.LBB6_7+0x8>

000000009000139c <.LBB6_6>:
    9000139c:	00007617          	auipc	a2,0x7
    900013a0:	62c60613          	addi	a2,a2,1580 # 900089c8 <.Lanon.6c14da14959cf3cd6f72fc6e534cf4f7.2>
    900013a4:	fc040913          	addi	s2,s0,-64
    900013a8:	46a5                	li	a3,9
    900013aa:	854a                	mv	a0,s2
    900013ac:	00001097          	auipc	ra,0x1
    900013b0:	13e080e7          	jalr	318(ra) # 900024ea <_ZN4core3fmt9Formatter11debug_tuple17h33e702ebb7966d6cE>
    900013b4:	fc943c23          	sd	s1,-40(s0)

00000000900013b8 <.LBB6_7>:
    900013b8:	00007617          	auipc	a2,0x7
    900013bc:	62060613          	addi	a2,a2,1568 # 900089d8 <.Lanon.6c14da14959cf3cd6f72fc6e534cf4f7.3>
    900013c0:	fd840593          	addi	a1,s0,-40
    900013c4:	854a                	mv	a0,s2
    900013c6:	00000097          	auipc	ra,0x0
    900013ca:	658080e7          	jalr	1624(ra) # 90001a1e <_ZN4core3fmt8builders10DebugTuple5field17h968d9eaf966503caE>
    900013ce:	854a                	mv	a0,s2
    900013d0:	00000097          	auipc	ra,0x0
    900013d4:	742080e7          	jalr	1858(ra) # 90001b12 <_ZN4core3fmt8builders10DebugTuple6finish17h9067963986a9fe09E>
    900013d8:	7902                	ld	s2,32(sp)
    900013da:	74a2                	ld	s1,40(sp)
    900013dc:	7442                	ld	s0,48(sp)
    900013de:	70e2                	ld	ra,56(sp)
    900013e0:	6121                	addi	sp,sp,64
    900013e2:	8082                	ret

00000000900013e4 <_ZN71_$LT$riscv..register..scause..Interrupt$u20$as$u20$core..fmt..Debug$GT$3fmt17h08da1ca80b8bb693E>:
    900013e4:	7179                	addi	sp,sp,-48
    900013e6:	f406                	sd	ra,40(sp)
    900013e8:	f022                	sd	s0,32(sp)
    900013ea:	ec26                	sd	s1,24(sp)
    900013ec:	1800                	addi	s0,sp,48
    900013ee:	00054503          	lbu	a0,0(a0)
    900013f2:	4609                	li	a2,2
    900013f4:	02a65063          	bge	a2,a0,90001414 <.LBB7_14+0x10>
    900013f8:	4611                	li	a2,4
    900013fa:	02a64963          	blt	a2,a0,9000142c <.LBB7_15+0x10>
    900013fe:	460d                	li	a2,3
    90001400:	04c51163          	bne	a0,a2,90001442 <.LBB7_17>

0000000090001404 <.LBB7_14>:
    90001404:	00007617          	auipc	a2,0x7
    90001408:	61960613          	addi	a2,a2,1561 # 90008a1d <.Lanon.6c14da14959cf3cd6f72fc6e534cf4f7.7>
    9000140c:	fd040493          	addi	s1,s0,-48
    90001410:	46bd                	li	a3,15
    90001412:	a0bd                	j	90001480 <.LBB7_20+0xe>
    90001414:	cd1d                	beqz	a0,90001452 <.LBB7_18>
    90001416:	4605                	li	a2,1
    90001418:	04c51563          	bne	a0,a2,90001462 <.LBB7_19>

000000009000141c <.LBB7_15>:
    9000141c:	00007617          	auipc	a2,0x7
    90001420:	61960613          	addi	a2,a2,1561 # 90008a35 <.Lanon.6c14da14959cf3cd6f72fc6e534cf4f7.9>
    90001424:	fd040493          	addi	s1,s0,-48
    90001428:	46b9                	li	a3,14
    9000142a:	a899                	j	90001480 <.LBB7_20+0xe>
    9000142c:	4615                	li	a2,5
    9000142e:	04c51263          	bne	a0,a2,90001472 <.LBB7_20>

0000000090001432 <.LBB7_16>:
    90001432:	00007617          	auipc	a2,0x7
    90001436:	5cd60613          	addi	a2,a2,1485 # 900089ff <.Lanon.6c14da14959cf3cd6f72fc6e534cf4f7.5>
    9000143a:	fd040493          	addi	s1,s0,-48
    9000143e:	46c9                	li	a3,18
    90001440:	a081                	j	90001480 <.LBB7_20+0xe>

0000000090001442 <.LBB7_17>:
    90001442:	00007617          	auipc	a2,0x7
    90001446:	5cf60613          	addi	a2,a2,1487 # 90008a11 <.Lanon.6c14da14959cf3cd6f72fc6e534cf4f7.6>
    9000144a:	fd040493          	addi	s1,s0,-48
    9000144e:	46b1                	li	a3,12
    90001450:	a805                	j	90001480 <.LBB7_20+0xe>

0000000090001452 <.LBB7_18>:
    90001452:	00007617          	auipc	a2,0x7
    90001456:	5f960613          	addi	a2,a2,1529 # 90008a4b <.Lanon.6c14da14959cf3cd6f72fc6e534cf4f7.9+0x16>
    9000145a:	fd040493          	addi	s1,s0,-48
    9000145e:	46a1                	li	a3,8
    90001460:	a005                	j	90001480 <.LBB7_20+0xe>

0000000090001462 <.LBB7_19>:
    90001462:	00007617          	auipc	a2,0x7
    90001466:	5ca60613          	addi	a2,a2,1482 # 90008a2c <.Lanon.6c14da14959cf3cd6f72fc6e534cf4f7.8>
    9000146a:	fd040493          	addi	s1,s0,-48
    9000146e:	46a5                	li	a3,9
    90001470:	a801                	j	90001480 <.LBB7_20+0xe>

0000000090001472 <.LBB7_20>:
    90001472:	00007617          	auipc	a2,0x7
    90001476:	58660613          	addi	a2,a2,1414 # 900089f8 <.Lanon.6c14da14959cf3cd6f72fc6e534cf4f7.4>
    9000147a:	fd040493          	addi	s1,s0,-48
    9000147e:	469d                	li	a3,7
    90001480:	8526                	mv	a0,s1
    90001482:	00001097          	auipc	ra,0x1
    90001486:	068080e7          	jalr	104(ra) # 900024ea <_ZN4core3fmt9Formatter11debug_tuple17h33e702ebb7966d6cE>
    9000148a:	8526                	mv	a0,s1
    9000148c:	00000097          	auipc	ra,0x0
    90001490:	686080e7          	jalr	1670(ra) # 90001b12 <_ZN4core3fmt8builders10DebugTuple6finish17h9067963986a9fe09E>
    90001494:	64e2                	ld	s1,24(sp)
    90001496:	7402                	ld	s0,32(sp)
    90001498:	70a2                	ld	ra,40(sp)
    9000149a:	6145                	addi	sp,sp,48
    9000149c:	8082                	ret

000000009000149e <_ZN71_$LT$riscv..register..scause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h725c1c6b2e929f9eE>:
    9000149e:	7179                	addi	sp,sp,-48
    900014a0:	f406                	sd	ra,40(sp)
    900014a2:	f022                	sd	s0,32(sp)
    900014a4:	ec26                	sd	s1,24(sp)
    900014a6:	1800                	addi	s0,sp,48
    900014a8:	00054503          	lbu	a0,0(a0)
    900014ac:	4615                	li	a2,5
    900014ae:	02a64163          	blt	a2,a0,900014d0 <.LBB8_25+0x10>
    900014b2:	4609                	li	a2,2
    900014b4:	02a64f63          	blt	a2,a0,900014f2 <.LBB8_26+0x10>
    900014b8:	c92d                	beqz	a0,9000152a <.LBB8_29>
    900014ba:	4605                	li	a2,1
    900014bc:	06c51f63          	bne	a0,a2,9000153a <.LBB8_30>

00000000900014c0 <.LBB8_25>:
    900014c0:	00003617          	auipc	a2,0x3
    900014c4:	b7060613          	addi	a2,a2,-1168 # 90004030 <anon.30cfc24f32ed8f4217ea0a754ffb84e0.0.llvm.8904609870628804180+0x20>
    900014c8:	fd040493          	addi	s1,s0,-48
    900014cc:	46c1                	li	a3,16
    900014ce:	a8d1                	j	900015a2 <.LBB8_36+0xe>
    900014d0:	4621                	li	a2,8
    900014d2:	02a64e63          	blt	a2,a0,9000150e <.LBB8_27+0x10>
    900014d6:	4619                	li	a2,6
    900014d8:	06c50963          	beq	a0,a2,9000154a <.LBB8_31>
    900014dc:	461d                	li	a2,7
    900014de:	06c51b63          	bne	a0,a2,90001554 <.LBB8_32>

00000000900014e2 <.LBB8_26>:
    900014e2:	00007617          	auipc	a2,0x7
    900014e6:	5a060613          	addi	a2,a2,1440 # 90008a82 <.Lanon.6c14da14959cf3cd6f72fc6e534cf4f7.14>
    900014ea:	fd040493          	addi	s1,s0,-48
    900014ee:	46ad                	li	a3,11
    900014f0:	a84d                	j	900015a2 <.LBB8_36+0xe>
    900014f2:	460d                	li	a2,3
    900014f4:	06c50863          	beq	a0,a2,90001564 <.LBB8_33>
    900014f8:	4611                	li	a2,4
    900014fa:	06c51d63          	bne	a0,a2,90001574 <.LBB8_34>

00000000900014fe <.LBB8_27>:
    900014fe:	00007617          	auipc	a2,0x7
    90001502:	5a860613          	addi	a2,a2,1448 # 90008aa6 <.Lanon.6c14da14959cf3cd6f72fc6e534cf4f7.17>
    90001506:	fd040493          	addi	s1,s0,-48
    9000150a:	46a5                	li	a3,9
    9000150c:	a859                	j	900015a2 <.LBB8_36+0xe>
    9000150e:	4625                	li	a2,9
    90001510:	06c50a63          	beq	a0,a2,90001584 <.LBB8_35>
    90001514:	4629                	li	a2,10
    90001516:	06c51f63          	bne	a0,a2,90001594 <.LBB8_36>

000000009000151a <.LBB8_28>:
    9000151a:	00007617          	auipc	a2,0x7
    9000151e:	53960613          	addi	a2,a2,1337 # 90008a53 <.Lanon.6c14da14959cf3cd6f72fc6e534cf4f7.11>
    90001522:	fd040493          	addi	s1,s0,-48
    90001526:	46b9                	li	a3,14
    90001528:	a8ad                	j	900015a2 <.LBB8_36+0xe>

000000009000152a <.LBB8_29>:
    9000152a:	00007617          	auipc	a2,0x7
    9000152e:	5a160613          	addi	a2,a2,1441 # 90008acb <.Lanon.6c14da14959cf3cd6f72fc6e534cf4f7.21>
    90001532:	fd040493          	addi	s1,s0,-48
    90001536:	46d5                	li	a3,21
    90001538:	a0ad                	j	900015a2 <.LBB8_36+0xe>

000000009000153a <.LBB8_30>:
    9000153a:	00007617          	auipc	a2,0x7
    9000153e:	57f60613          	addi	a2,a2,1407 # 90008ab9 <.Lanon.6c14da14959cf3cd6f72fc6e534cf4f7.19>
    90001542:	fd040493          	addi	s1,s0,-48
    90001546:	46c9                	li	a3,18
    90001548:	a8a9                	j	900015a2 <.LBB8_36+0xe>

000000009000154a <.LBB8_31>:
    9000154a:	00007617          	auipc	a2,0x7
    9000154e:	54360613          	addi	a2,a2,1347 # 90008a8d <.Lanon.6c14da14959cf3cd6f72fc6e534cf4f7.15>
    90001552:	a829                	j	9000156c <.LBB8_33+0x8>

0000000090001554 <.LBB8_32>:
    90001554:	00007617          	auipc	a2,0x7
    90001558:	51a60613          	addi	a2,a2,1306 # 90008a6e <.Lanon.6c14da14959cf3cd6f72fc6e534cf4f7.13>
    9000155c:	fd040493          	addi	s1,s0,-48
    90001560:	46d1                	li	a3,20
    90001562:	a081                	j	900015a2 <.LBB8_36+0xe>

0000000090001564 <.LBB8_33>:
    90001564:	00007617          	auipc	a2,0x7
    90001568:	54b60613          	addi	a2,a2,1355 # 90008aaf <.Lanon.6c14da14959cf3cd6f72fc6e534cf4f7.18>
    9000156c:	fd040493          	addi	s1,s0,-48
    90001570:	46a9                	li	a3,10
    90001572:	a805                	j	900015a2 <.LBB8_36+0xe>

0000000090001574 <.LBB8_34>:
    90001574:	00007617          	auipc	a2,0x7
    90001578:	52360613          	addi	a2,a2,1315 # 90008a97 <.Lanon.6c14da14959cf3cd6f72fc6e534cf4f7.16>
    9000157c:	fd040493          	addi	s1,s0,-48
    90001580:	46bd                	li	a3,15
    90001582:	a005                	j	900015a2 <.LBB8_36+0xe>

0000000090001584 <.LBB8_35>:
    90001584:	00007617          	auipc	a2,0x7
    90001588:	4dd60613          	addi	a2,a2,1245 # 90008a61 <.Lanon.6c14da14959cf3cd6f72fc6e534cf4f7.12>
    9000158c:	fd040493          	addi	s1,s0,-48
    90001590:	46b5                	li	a3,13
    90001592:	a801                	j	900015a2 <.LBB8_36+0xe>

0000000090001594 <.LBB8_36>:
    90001594:	00007617          	auipc	a2,0x7
    90001598:	46460613          	addi	a2,a2,1124 # 900089f8 <.Lanon.6c14da14959cf3cd6f72fc6e534cf4f7.4>
    9000159c:	fd040493          	addi	s1,s0,-48
    900015a0:	469d                	li	a3,7
    900015a2:	8526                	mv	a0,s1
    900015a4:	00001097          	auipc	ra,0x1
    900015a8:	f46080e7          	jalr	-186(ra) # 900024ea <_ZN4core3fmt9Formatter11debug_tuple17h33e702ebb7966d6cE>
    900015ac:	8526                	mv	a0,s1
    900015ae:	00000097          	auipc	ra,0x0
    900015b2:	564080e7          	jalr	1380(ra) # 90001b12 <_ZN4core3fmt8builders10DebugTuple6finish17h9067963986a9fe09E>
    900015b6:	64e2                	ld	s1,24(sp)
    900015b8:	7402                	ld	s0,32(sp)
    900015ba:	70a2                	ld	ra,40(sp)
    900015bc:	6145                	addi	sp,sp,48
    900015be:	8082                	ret

00000000900015c0 <_ZN60_$LT$spin..once..Finish$u20$as$u20$core..ops..drop..Drop$GT$4drop17h05e01cfad6791585E>:
    900015c0:	1141                	addi	sp,sp,-16
    900015c2:	e406                	sd	ra,8(sp)
    900015c4:	e022                	sd	s0,0(sp)
    900015c6:	0800                	addi	s0,sp,16
    900015c8:	00854583          	lbu	a1,8(a0)
    900015cc:	c591                	beqz	a1,900015d8 <_ZN60_$LT$spin..once..Finish$u20$as$u20$core..ops..drop..Drop$GT$4drop17h05e01cfad6791585E+0x18>
    900015ce:	6108                	ld	a0,0(a0)
    900015d0:	0310000f          	fence	rw,w
    900015d4:	458d                	li	a1,3
    900015d6:	e10c                	sd	a1,0(a0)
    900015d8:	6402                	ld	s0,0(sp)
    900015da:	60a2                	ld	ra,8(sp)
    900015dc:	0141                	addi	sp,sp,16
    900015de:	8082                	ret

00000000900015e0 <_ZN4core3ops8function6FnOnce9call_once17hbe6f1b732a2946a4E>:
    900015e0:	6108                	ld	a0,0(a0)
    900015e2:	a001                	j	900015e2 <_ZN4core3ops8function6FnOnce9call_once17hbe6f1b732a2946a4E+0x2>

00000000900015e4 <_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h2c14ec9a62b1a876E>:
    900015e4:	8082                	ret

00000000900015e6 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h0c19ef341f8f601cE>:
    900015e6:	715d                	addi	sp,sp,-80
    900015e8:	e486                	sd	ra,72(sp)
    900015ea:	e0a2                	sd	s0,64(sp)
    900015ec:	fc26                	sd	s1,56(sp)
    900015ee:	842e                	mv	s0,a1
    900015f0:	84aa                	mv	s1,a0
    900015f2:	00002097          	auipc	ra,0x2
    900015f6:	bf8080e7          	jalr	-1032(ra) # 900031ea <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE>
    900015fa:	e51d                	bnez	a0,90001628 <.LBB76_5+0x18>
    900015fc:	7008                	ld	a0,32(s0)
    900015fe:	740c                	ld	a1,40(s0)

0000000090001600 <.LBB76_4>:
    90001600:	00007617          	auipc	a2,0x7
    90001604:	4e860613          	addi	a2,a2,1256 # 90008ae8 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.141>
    90001608:	e432                	sd	a2,8(sp)
    9000160a:	4605                	li	a2,1
    9000160c:	e832                	sd	a2,16(sp)
    9000160e:	ec02                	sd	zero,24(sp)

0000000090001610 <.LBB76_5>:
    90001610:	00007617          	auipc	a2,0x7
    90001614:	4d060613          	addi	a2,a2,1232 # 90008ae0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.33>
    90001618:	f432                	sd	a2,40(sp)
    9000161a:	f802                	sd	zero,48(sp)
    9000161c:	0030                	addi	a2,sp,8
    9000161e:	00000097          	auipc	ra,0x0
    90001622:	7d0080e7          	jalr	2000(ra) # 90001dee <_ZN4core3fmt5write17h338141860f5a80fbE>
    90001626:	c519                	beqz	a0,90001634 <.LBB76_5+0x24>
    90001628:	4505                	li	a0,1
    9000162a:	74e2                	ld	s1,56(sp)
    9000162c:	6406                	ld	s0,64(sp)
    9000162e:	60a6                	ld	ra,72(sp)
    90001630:	6161                	addi	sp,sp,80
    90001632:	8082                	ret
    90001634:	00848513          	addi	a0,s1,8
    90001638:	85a2                	mv	a1,s0
    9000163a:	74e2                	ld	s1,56(sp)
    9000163c:	6406                	ld	s0,64(sp)
    9000163e:	60a6                	ld	ra,72(sp)
    90001640:	6161                	addi	sp,sp,80
    90001642:	00002317          	auipc	t1,0x2
    90001646:	ba830067          	jr	-1112(t1) # 900031ea <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE>

000000009000164a <_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h7108e12ad9db6507E>:
    9000164a:	0160f537          	lui	a0,0x160f
    9000164e:	6275051b          	addiw	a0,a0,1575
    90001652:	0536                	slli	a0,a0,0xd
    90001654:	3d750513          	addi	a0,a0,983 # 160f3d7 <.Lline_table_start0+0x15f252d>
    90001658:	0532                	slli	a0,a0,0xc
    9000165a:	f8150513          	addi	a0,a0,-127
    9000165e:	0532                	slli	a0,a0,0xc
    90001660:	f4250513          	addi	a0,a0,-190
    90001664:	8082                	ret

0000000090001666 <_ZN60_$LT$core..cell..BorrowError$u20$as$u20$core..fmt..Debug$GT$3fmt17ha8996aa14fce6a9aE>:
    90001666:	7590                	ld	a2,40(a1)
    90001668:	7188                	ld	a0,32(a1)
    9000166a:	6e1c                	ld	a5,24(a2)

000000009000166c <.LBB87_1>:
    9000166c:	00007597          	auipc	a1,0x7
    90001670:	48c58593          	addi	a1,a1,1164 # 90008af8 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.148>
    90001674:	462d                	li	a2,11
    90001676:	8782                	jr	a5

0000000090001678 <_ZN63_$LT$core..cell..BorrowMutError$u20$as$u20$core..fmt..Debug$GT$3fmt17h27d9b69ec3d38322E>:
    90001678:	7590                	ld	a2,40(a1)
    9000167a:	7188                	ld	a0,32(a1)
    9000167c:	6e1c                	ld	a5,24(a2)

000000009000167e <.LBB89_1>:
    9000167e:	00007597          	auipc	a1,0x7
    90001682:	48558593          	addi	a1,a1,1157 # 90008b03 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.150>
    90001686:	4639                	li	a2,14
    90001688:	8782                	jr	a5

000000009000168a <_ZN4core6option18expect_none_failed17hf4b8b266798017eaE>:
    9000168a:	7119                	addi	sp,sp,-128
    9000168c:	fc86                	sd	ra,120(sp)
    9000168e:	e42a                	sd	a0,8(sp)
    90001690:	e82e                	sd	a1,16(sp)
    90001692:	ec32                	sd	a2,24(sp)
    90001694:	f036                	sd	a3,32(sp)
    90001696:	0028                	addi	a0,sp,8
    90001698:	ecaa                	sd	a0,88(sp)

000000009000169a <.LBB118_1>:
    9000169a:	00002517          	auipc	a0,0x2
    9000169e:	3ec50513          	addi	a0,a0,1004 # 90003a86 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0ab56ae6638005b3E>
    900016a2:	f0aa                	sd	a0,96(sp)
    900016a4:	0828                	addi	a0,sp,24
    900016a6:	f4aa                	sd	a0,104(sp)

00000000900016a8 <.LBB118_2>:
    900016a8:	00002517          	auipc	a0,0x2
    900016ac:	3d650513          	addi	a0,a0,982 # 90003a7e <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc803731d5e879d1bE>
    900016b0:	f8aa                	sd	a0,112(sp)

00000000900016b2 <.LBB118_3>:
    900016b2:	00007517          	auipc	a0,0x7
    900016b6:	49e50513          	addi	a0,a0,1182 # 90008b50 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.178>
    900016ba:	f42a                	sd	a0,40(sp)
    900016bc:	4509                	li	a0,2
    900016be:	f82a                	sd	a0,48(sp)
    900016c0:	fc02                	sd	zero,56(sp)
    900016c2:	08ac                	addi	a1,sp,88
    900016c4:	e4ae                	sd	a1,72(sp)
    900016c6:	e8aa                	sd	a0,80(sp)
    900016c8:	1028                	addi	a0,sp,40
    900016ca:	85ba                	mv	a1,a4
    900016cc:	00000097          	auipc	ra,0x0
    900016d0:	08a080e7          	jalr	138(ra) # 90001756 <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>
	...

00000000900016d6 <_ZN4core5panic9PanicInfo7message17ha124ea628bb1593aE>:
    900016d6:	6908                	ld	a0,16(a0)
    900016d8:	8082                	ret

00000000900016da <_ZN4core5panic9PanicInfo8location17h1a36f39edfc37a5bE>:
    900016da:	6d08                	ld	a0,24(a0)
    900016dc:	8082                	ret

00000000900016de <_ZN4core5panic8Location4file17h3a63c909928b6622E>:
    900016de:	6110                	ld	a2,0(a0)
    900016e0:	650c                	ld	a1,8(a0)
    900016e2:	8532                	mv	a0,a2
    900016e4:	8082                	ret

00000000900016e6 <_ZN4core5panic8Location4line17h438064cf29667b6aE>:
    900016e6:	4908                	lw	a0,16(a0)
    900016e8:	8082                	ret

00000000900016ea <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>:
    900016ea:	715d                	addi	sp,sp,-80
    900016ec:	e486                	sd	ra,72(sp)
    900016ee:	fc2a                	sd	a0,56(sp)
    900016f0:	e0ae                	sd	a1,64(sp)
    900016f2:	1828                	addi	a0,sp,56
    900016f4:	e42a                	sd	a0,8(sp)
    900016f6:	4505                	li	a0,1
    900016f8:	e82a                	sd	a0,16(sp)
    900016fa:	ec02                	sd	zero,24(sp)

00000000900016fc <.LBB129_1>:
    900016fc:	00007517          	auipc	a0,0x7
    90001700:	3e450513          	addi	a0,a0,996 # 90008ae0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.33>
    90001704:	f42a                	sd	a0,40(sp)
    90001706:	f802                	sd	zero,48(sp)
    90001708:	0028                	addi	a0,sp,8
    9000170a:	85b2                	mv	a1,a2
    9000170c:	00000097          	auipc	ra,0x0
    90001710:	04a080e7          	jalr	74(ra) # 90001756 <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>
	...

0000000090001716 <_ZN4core9panicking18panic_bounds_check17ha760e6d8204f3836E>:
    90001716:	7159                	addi	sp,sp,-112
    90001718:	f486                	sd	ra,104(sp)
    9000171a:	e42a                	sd	a0,8(sp)
    9000171c:	e82e                	sd	a1,16(sp)
    9000171e:	0808                	addi	a0,sp,16
    90001720:	e4aa                	sd	a0,72(sp)

0000000090001722 <.LBB130_1>:
    90001722:	00002517          	auipc	a0,0x2
    90001726:	f2a50513          	addi	a0,a0,-214 # 9000364c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    9000172a:	e8aa                	sd	a0,80(sp)
    9000172c:	002c                	addi	a1,sp,8
    9000172e:	ecae                	sd	a1,88(sp)
    90001730:	f0aa                	sd	a0,96(sp)

0000000090001732 <.LBB130_2>:
    90001732:	00007517          	auipc	a0,0x7
    90001736:	47650513          	addi	a0,a0,1142 # 90008ba8 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.188>
    9000173a:	ec2a                	sd	a0,24(sp)
    9000173c:	4509                	li	a0,2
    9000173e:	f02a                	sd	a0,32(sp)
    90001740:	f402                	sd	zero,40(sp)
    90001742:	00ac                	addi	a1,sp,72
    90001744:	fc2e                	sd	a1,56(sp)
    90001746:	e0aa                	sd	a0,64(sp)
    90001748:	0828                	addi	a0,sp,24
    9000174a:	85b2                	mv	a1,a2
    9000174c:	00000097          	auipc	ra,0x0
    90001750:	00a080e7          	jalr	10(ra) # 90001756 <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>
	...

0000000090001756 <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>:
    90001756:	7179                	addi	sp,sp,-48
    90001758:	f406                	sd	ra,40(sp)

000000009000175a <.LBB131_1>:
    9000175a:	00007617          	auipc	a2,0x7
    9000175e:	38660613          	addi	a2,a2,902 # 90008ae0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.33>
    90001762:	e432                	sd	a2,8(sp)

0000000090001764 <.LBB131_2>:
    90001764:	00007617          	auipc	a2,0x7
    90001768:	40c60613          	addi	a2,a2,1036 # 90008b70 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.179>
    9000176c:	e832                	sd	a2,16(sp)
    9000176e:	ec2a                	sd	a0,24(sp)
    90001770:	f02e                	sd	a1,32(sp)
    90001772:	0028                	addi	a0,sp,8
    90001774:	fffff097          	auipc	ra,0xfffff
    90001778:	34c080e7          	jalr	844(ra) # 90000ac0 <rust_begin_unwind>
	...

000000009000177e <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>:
    9000177e:	715d                	addi	sp,sp,-80
    90001780:	e486                	sd	ra,72(sp)
    90001782:	e0a2                	sd	s0,64(sp)
    90001784:	fc26                	sd	s1,56(sp)
    90001786:	f84a                	sd	s2,48(sp)
    90001788:	f44e                	sd	s3,40(sp)
    9000178a:	f052                	sd	s4,32(sp)
    9000178c:	ec56                	sd	s5,24(sp)
    9000178e:	e85a                	sd	s6,16(sp)
    90001790:	e45e                	sd	s7,8(sp)
    90001792:	e062                	sd	s8,0(sp)
    90001794:	ca7d                	beqz	a2,9000188a <.LBB133_30+0x1a>
    90001796:	84b2                	mv	s1,a2
    90001798:	89ae                	mv	s3,a1
    9000179a:	892a                	mv	s2,a0
    9000179c:	4a3d                	li	s4,15
    9000179e:	4aa9                	li	s5,10
    900017a0:	fbf00b13          	li	s6,-65
    900017a4:	4b85                	li	s7,1
    900017a6:	a809                	j	900017b8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E+0x3a>
    900017a8:	6d94                	ld	a3,24(a1)
    900017aa:	85ce                	mv	a1,s3
    900017ac:	8622                	mv	a2,s0
    900017ae:	9682                	jalr	a3
    900017b0:	ed79                	bnez	a0,9000188e <.LBB133_30+0x1e>
    900017b2:	8c81                	sub	s1,s1,s0
    900017b4:	89e2                	mv	s3,s8
    900017b6:	c8f1                	beqz	s1,9000188a <.LBB133_30+0x1a>
    900017b8:	01093503          	ld	a0,16(s2)
    900017bc:	00054503          	lbu	a0,0(a0)
    900017c0:	cd09                	beqz	a0,900017da <.LBB133_29+0xe>
    900017c2:	00893583          	ld	a1,8(s2)
    900017c6:	00093503          	ld	a0,0(s2)
    900017ca:	6d94                	ld	a3,24(a1)

00000000900017cc <.LBB133_29>:
    900017cc:	00007597          	auipc	a1,0x7
    900017d0:	34558593          	addi	a1,a1,837 # 90008b11 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.150+0xe>
    900017d4:	4611                	li	a2,4
    900017d6:	9682                	jalr	a3
    900017d8:	e95d                	bnez	a0,9000188e <.LBB133_30+0x1e>
    900017da:	4401                	li	s0,0
    900017dc:	8626                	mv	a2,s1
    900017de:	a029                	j	900017e8 <.LBB133_29+0x1c>
    900017e0:	40848633          	sub	a2,s1,s0
    900017e4:	0484e963          	bltu	s1,s0,90001836 <.LBB133_29+0x6a>
    900017e8:	008985b3          	add	a1,s3,s0
    900017ec:	02ca6063          	bltu	s4,a2,9000180c <.LBB133_29+0x40>
    900017f0:	c239                	beqz	a2,90001836 <.LBB133_29+0x6a>
    900017f2:	4601                	li	a2,0
    900017f4:	40848533          	sub	a0,s1,s0
    900017f8:	00c586b3          	add	a3,a1,a2
    900017fc:	0006c683          	lbu	a3,0(a3)
    90001800:	01568e63          	beq	a3,s5,9000181c <.LBB133_29+0x50>
    90001804:	0605                	addi	a2,a2,1
    90001806:	fec519e3          	bne	a0,a2,900017f8 <.LBB133_29+0x2c>
    9000180a:	a035                	j	90001836 <.LBB133_29+0x6a>
    9000180c:	4529                	li	a0,10
    9000180e:	00001097          	auipc	ra,0x1
    90001812:	f9c080e7          	jalr	-100(ra) # 900027aa <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E>
    90001816:	03751063          	bne	a0,s7,90001836 <.LBB133_29+0x6a>
    9000181a:	862e                	mv	a2,a1
    9000181c:	00860533          	add	a0,a2,s0
    90001820:	00150413          	addi	s0,a0,1
    90001824:	fa957ee3          	bgeu	a0,s1,900017e0 <.LBB133_29+0x14>
    90001828:	954e                	add	a0,a0,s3
    9000182a:	00054503          	lbu	a0,0(a0)
    9000182e:	fb5519e3          	bne	a0,s5,900017e0 <.LBB133_29+0x14>
    90001832:	4505                	li	a0,1
    90001834:	a019                	j	9000183a <.LBB133_29+0x6e>
    90001836:	4501                	li	a0,0
    90001838:	8426                	mv	s0,s1
    9000183a:	01093583          	ld	a1,16(s2)
    9000183e:	00a58023          	sb	a0,0(a1)
    90001842:	00093503          	ld	a0,0(s2)
    90001846:	00893583          	ld	a1,8(s2)
    9000184a:	00898c33          	add	s8,s3,s0
    9000184e:	f4848de3          	beq	s1,s0,900017a8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E+0x2a>
    90001852:	04947b63          	bgeu	s0,s1,900018a8 <.LBB133_31>
    90001856:	000c0603          	lb	a2,0(s8)
    9000185a:	04cb5763          	bge	s6,a2,900018a8 <.LBB133_31>
    9000185e:	6d94                	ld	a3,24(a1)
    90001860:	85ce                	mv	a1,s3
    90001862:	8622                	mv	a2,s0
    90001864:	9682                	jalr	a3
    90001866:	e505                	bnez	a0,9000188e <.LBB133_30+0x1e>
    90001868:	000c0503          	lb	a0,0(s8)
    9000186c:	f4ab43e3          	blt	s6,a0,900017b2 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E+0x34>

0000000090001870 <.LBB133_30>:
    90001870:	00007717          	auipc	a4,0x7
    90001874:	3a070713          	addi	a4,a4,928 # 90008c10 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.193>
    90001878:	854e                	mv	a0,s3
    9000187a:	85a6                	mv	a1,s1
    9000187c:	8622                	mv	a2,s0
    9000187e:	86a6                	mv	a3,s1
    90001880:	00001097          	auipc	ra,0x1
    90001884:	37c080e7          	jalr	892(ra) # 90002bfc <_ZN4core3str16slice_error_fail17he9562343589499f6E>
    90001888:	0000                	unimp
    9000188a:	4501                	li	a0,0
    9000188c:	a011                	j	90001890 <.LBB133_30+0x20>
    9000188e:	4505                	li	a0,1
    90001890:	6c02                	ld	s8,0(sp)
    90001892:	6ba2                	ld	s7,8(sp)
    90001894:	6b42                	ld	s6,16(sp)
    90001896:	6ae2                	ld	s5,24(sp)
    90001898:	7a02                	ld	s4,32(sp)
    9000189a:	79a2                	ld	s3,40(sp)
    9000189c:	7942                	ld	s2,48(sp)
    9000189e:	74e2                	ld	s1,56(sp)
    900018a0:	6406                	ld	s0,64(sp)
    900018a2:	60a6                	ld	ra,72(sp)
    900018a4:	6161                	addi	sp,sp,80
    900018a6:	8082                	ret

00000000900018a8 <.LBB133_31>:
    900018a8:	00007717          	auipc	a4,0x7
    900018ac:	35070713          	addi	a4,a4,848 # 90008bf8 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.192>
    900018b0:	854e                	mv	a0,s3
    900018b2:	85a6                	mv	a1,s1
    900018b4:	4601                	li	a2,0
    900018b6:	86a2                	mv	a3,s0
    900018b8:	00001097          	auipc	ra,0x1
    900018bc:	344080e7          	jalr	836(ra) # 90002bfc <_ZN4core3str16slice_error_fail17he9562343589499f6E>
	...

00000000900018c2 <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>:
    900018c2:	7135                	addi	sp,sp,-160
    900018c4:	ed06                	sd	ra,152(sp)
    900018c6:	e922                	sd	s0,144(sp)
    900018c8:	e526                	sd	s1,136(sp)
    900018ca:	e14a                	sd	s2,128(sp)
    900018cc:	fcce                	sd	s3,120(sp)
    900018ce:	f8d2                	sd	s4,112(sp)
    900018d0:	f4d6                	sd	s5,104(sp)
    900018d2:	f0da                	sd	s6,96(sp)
    900018d4:	842a                	mv	s0,a0
    900018d6:	00854503          	lbu	a0,8(a0)
    900018da:	4b05                	li	s6,1
    900018dc:	4485                	li	s1,1
    900018de:	c105                	beqz	a0,900018fe <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE+0x3c>
    900018e0:	00940423          	sb	s1,8(s0)
    900018e4:	016404a3          	sb	s6,9(s0)
    900018e8:	8522                	mv	a0,s0
    900018ea:	7b06                	ld	s6,96(sp)
    900018ec:	7aa6                	ld	s5,104(sp)
    900018ee:	7a46                	ld	s4,112(sp)
    900018f0:	79e6                	ld	s3,120(sp)
    900018f2:	690a                	ld	s2,128(sp)
    900018f4:	64aa                	ld	s1,136(sp)
    900018f6:	644a                	ld	s0,144(sp)
    900018f8:	60ea                	ld	ra,152(sp)
    900018fa:	610d                	addi	sp,sp,160
    900018fc:	8082                	ret
    900018fe:	89ba                	mv	s3,a4
    90001900:	8936                	mv	s2,a3
    90001902:	8a32                	mv	s4,a2
    90001904:	8aae                	mv	s5,a1
    90001906:	6008                	ld	a0,0(s0)
    90001908:	03056583          	lwu	a1,48(a0)
    9000190c:	00944603          	lbu	a2,9(s0)
    90001910:	0045f693          	andi	a3,a1,4
    90001914:	00163613          	seqz	a2,a2
    90001918:	e699                	bnez	a3,90001926 <.LBB134_18+0xa>
    9000191a:	ea45                	bnez	a2,900019ca <.LBB134_23>

000000009000191c <.LBB134_18>:
    9000191c:	00007597          	auipc	a1,0x7
    90001920:	31158593          	addi	a1,a1,785 # 90008c2d <.Lanon.9d4bfc86079e95d674f3cded52b1db19.196>
    90001924:	a07d                	j	900019d2 <.LBB134_23+0x8>
    90001926:	ce19                	beqz	a2,90001944 <.LBB134_19+0x16>
    90001928:	750c                	ld	a1,40(a0)
    9000192a:	7108                	ld	a0,32(a0)
    9000192c:	6d94                	ld	a3,24(a1)

000000009000192e <.LBB134_19>:
    9000192e:	00007597          	auipc	a1,0x7
    90001932:	2fa58593          	addi	a1,a1,762 # 90008c28 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.194>
    90001936:	460d                	li	a2,3
    90001938:	9682                	jalr	a3
    9000193a:	4485                	li	s1,1
    9000193c:	f155                	bnez	a0,900018e0 <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE+0x1e>
    9000193e:	6008                	ld	a0,0(s0)
    90001940:	03056583          	lwu	a1,48(a0)
    90001944:	4485                	li	s1,1
    90001946:	00910fa3          	sb	s1,31(sp) # 9002401f <boot_stack_top+0x1f>
    9000194a:	7110                	ld	a2,32(a0)
    9000194c:	7514                	ld	a3,40(a0)
    9000194e:	e032                	sd	a2,0(sp)
    90001950:	e436                	sd	a3,8(sp)
    90001952:	01f10613          	addi	a2,sp,31
    90001956:	e832                	sd	a2,16(sp)
    90001958:	5950                	lw	a2,52(a0)
    9000195a:	03850683          	lb	a3,56(a0)
    9000195e:	6118                	ld	a4,0(a0)
    90001960:	651c                	ld	a5,8(a0)
    90001962:	01053803          	ld	a6,16(a0)
    90001966:	6d08                	ld	a0,24(a0)
    90001968:	c8ae                	sw	a1,80(sp)
    9000196a:	cab2                	sw	a2,84(sp)
    9000196c:	04d10c23          	sb	a3,88(sp)
    90001970:	f03a                	sd	a4,32(sp)
    90001972:	f43e                	sd	a5,40(sp)
    90001974:	f842                	sd	a6,48(sp)
    90001976:	fc2a                	sd	a0,56(sp)
    90001978:	850a                	mv	a0,sp
    9000197a:	e0aa                	sd	a0,64(sp)

000000009000197c <.LBB134_20>:
    9000197c:	00007597          	auipc	a1,0x7
    90001980:	24c58593          	addi	a1,a1,588 # 90008bc8 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.190>
    90001984:	e4ae                	sd	a1,72(sp)
    90001986:	85d6                	mv	a1,s5
    90001988:	8652                	mv	a2,s4
    9000198a:	00000097          	auipc	ra,0x0
    9000198e:	df4080e7          	jalr	-524(ra) # 9000177e <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>
    90001992:	f539                	bnez	a0,900018e0 <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE+0x1e>

0000000090001994 <.LBB134_21>:
    90001994:	00007597          	auipc	a1,0x7
    90001998:	1b858593          	addi	a1,a1,440 # 90008b4c <.Lanon.9d4bfc86079e95d674f3cded52b1db19.177>
    9000199c:	850a                	mv	a0,sp
    9000199e:	4609                	li	a2,2
    900019a0:	00000097          	auipc	ra,0x0
    900019a4:	dde080e7          	jalr	-546(ra) # 9000177e <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>
    900019a8:	fd05                	bnez	a0,900018e0 <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE+0x1e>
    900019aa:	0189b603          	ld	a2,24(s3)
    900019ae:	100c                	addi	a1,sp,32
    900019b0:	854a                	mv	a0,s2
    900019b2:	9602                	jalr	a2
    900019b4:	f515                	bnez	a0,900018e0 <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE+0x1e>
    900019b6:	65a6                	ld	a1,72(sp)
    900019b8:	6506                	ld	a0,64(sp)
    900019ba:	6d94                	ld	a3,24(a1)

00000000900019bc <.LBB134_22>:
    900019bc:	00007597          	auipc	a1,0x7
    900019c0:	26f58593          	addi	a1,a1,623 # 90008c2b <.Lanon.9d4bfc86079e95d674f3cded52b1db19.195>
    900019c4:	4609                	li	a2,2
    900019c6:	9682                	jalr	a3
    900019c8:	a889                	j	90001a1a <.LBB134_24+0x1c>

00000000900019ca <.LBB134_23>:
    900019ca:	00007597          	auipc	a1,0x7
    900019ce:	26558593          	addi	a1,a1,613 # 90008c2f <.Lanon.9d4bfc86079e95d674f3cded52b1db19.197>
    900019d2:	7514                	ld	a3,40(a0)
    900019d4:	7108                	ld	a0,32(a0)
    900019d6:	6e94                	ld	a3,24(a3)
    900019d8:	00266613          	ori	a2,a2,2
    900019dc:	9682                	jalr	a3
    900019de:	4485                	li	s1,1
    900019e0:	f101                	bnez	a0,900018e0 <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE+0x1e>
    900019e2:	6008                	ld	a0,0(s0)
    900019e4:	750c                	ld	a1,40(a0)
    900019e6:	7108                	ld	a0,32(a0)
    900019e8:	6d94                	ld	a3,24(a1)
    900019ea:	85d6                	mv	a1,s5
    900019ec:	8652                	mv	a2,s4
    900019ee:	9682                	jalr	a3
    900019f0:	4485                	li	s1,1
    900019f2:	ee0517e3          	bnez	a0,900018e0 <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE+0x1e>
    900019f6:	6008                	ld	a0,0(s0)
    900019f8:	750c                	ld	a1,40(a0)
    900019fa:	7108                	ld	a0,32(a0)
    900019fc:	6d94                	ld	a3,24(a1)

00000000900019fe <.LBB134_24>:
    900019fe:	00007597          	auipc	a1,0x7
    90001a02:	14e58593          	addi	a1,a1,334 # 90008b4c <.Lanon.9d4bfc86079e95d674f3cded52b1db19.177>
    90001a06:	4609                	li	a2,2
    90001a08:	9682                	jalr	a3
    90001a0a:	4485                	li	s1,1
    90001a0c:	ec051ae3          	bnez	a0,900018e0 <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE+0x1e>
    90001a10:	600c                	ld	a1,0(s0)
    90001a12:	0189b603          	ld	a2,24(s3)
    90001a16:	854a                	mv	a0,s2
    90001a18:	9602                	jalr	a2
    90001a1a:	84aa                	mv	s1,a0
    90001a1c:	b5d1                	j	900018e0 <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE+0x1e>

0000000090001a1e <_ZN4core3fmt8builders10DebugTuple5field17h968d9eaf966503caE>:
    90001a1e:	7175                	addi	sp,sp,-144
    90001a20:	e506                	sd	ra,136(sp)
    90001a22:	e122                	sd	s0,128(sp)
    90001a24:	fca6                	sd	s1,120(sp)
    90001a26:	f8ca                	sd	s2,112(sp)
    90001a28:	f4ce                	sd	s3,104(sp)
    90001a2a:	842a                	mv	s0,a0
    90001a2c:	01054503          	lbu	a0,16(a0)
    90001a30:	4485                	li	s1,1
    90001a32:	e179                	bnez	a0,90001af8 <.LBB137_18+0x24>
    90001a34:	89b2                	mv	s3,a2
    90001a36:	892e                	mv	s2,a1
    90001a38:	6008                	ld	a0,0(s0)
    90001a3a:	03056583          	lwu	a1,48(a0)
    90001a3e:	6410                	ld	a2,8(s0)
    90001a40:	0045f693          	andi	a3,a1,4
    90001a44:	00163613          	seqz	a2,a2
    90001a48:	e699                	bnez	a3,90001a56 <.LBB137_14+0xa>
    90001a4a:	e649                	bnez	a2,90001ad4 <.LBB137_18>

0000000090001a4c <.LBB137_14>:
    90001a4c:	00007597          	auipc	a1,0x7
    90001a50:	1e158593          	addi	a1,a1,481 # 90008c2d <.Lanon.9d4bfc86079e95d674f3cded52b1db19.196>
    90001a54:	a061                	j	90001adc <.LBB137_18+0x8>
    90001a56:	ce11                	beqz	a2,90001a72 <.LBB137_15+0x14>
    90001a58:	750c                	ld	a1,40(a0)
    90001a5a:	7108                	ld	a0,32(a0)
    90001a5c:	6d94                	ld	a3,24(a1)

0000000090001a5e <.LBB137_15>:
    90001a5e:	00007597          	auipc	a1,0x7
    90001a62:	1d758593          	addi	a1,a1,471 # 90008c35 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.203>
    90001a66:	4609                	li	a2,2
    90001a68:	9682                	jalr	a3
    90001a6a:	e559                	bnez	a0,90001af8 <.LBB137_18+0x24>
    90001a6c:	6008                	ld	a0,0(s0)
    90001a6e:	03056583          	lwu	a1,48(a0)
    90001a72:	4485                	li	s1,1
    90001a74:	029103a3          	sb	s1,39(sp)
    90001a78:	7110                	ld	a2,32(a0)
    90001a7a:	7514                	ld	a3,40(a0)
    90001a7c:	e432                	sd	a2,8(sp)
    90001a7e:	e836                	sd	a3,16(sp)
    90001a80:	02710613          	addi	a2,sp,39
    90001a84:	ec32                	sd	a2,24(sp)
    90001a86:	5950                	lw	a2,52(a0)
    90001a88:	03850683          	lb	a3,56(a0)
    90001a8c:	6118                	ld	a4,0(a0)
    90001a8e:	651c                	ld	a5,8(a0)
    90001a90:	01053803          	ld	a6,16(a0)
    90001a94:	6d08                	ld	a0,24(a0)
    90001a96:	ccae                	sw	a1,88(sp)
    90001a98:	ceb2                	sw	a2,92(sp)
    90001a9a:	06d10023          	sb	a3,96(sp)
    90001a9e:	f43a                	sd	a4,40(sp)
    90001aa0:	f83e                	sd	a5,48(sp)
    90001aa2:	fc42                	sd	a6,56(sp)
    90001aa4:	e0aa                	sd	a0,64(sp)
    90001aa6:	0028                	addi	a0,sp,8
    90001aa8:	0189b603          	ld	a2,24(s3)
    90001aac:	e4aa                	sd	a0,72(sp)

0000000090001aae <.LBB137_16>:
    90001aae:	00007517          	auipc	a0,0x7
    90001ab2:	11a50513          	addi	a0,a0,282 # 90008bc8 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.190>
    90001ab6:	e8aa                	sd	a0,80(sp)
    90001ab8:	102c                	addi	a1,sp,40
    90001aba:	854a                	mv	a0,s2
    90001abc:	9602                	jalr	a2
    90001abe:	ed0d                	bnez	a0,90001af8 <.LBB137_18+0x24>
    90001ac0:	65c6                	ld	a1,80(sp)
    90001ac2:	6526                	ld	a0,72(sp)
    90001ac4:	6d94                	ld	a3,24(a1)

0000000090001ac6 <.LBB137_17>:
    90001ac6:	00007597          	auipc	a1,0x7
    90001aca:	16558593          	addi	a1,a1,357 # 90008c2b <.Lanon.9d4bfc86079e95d674f3cded52b1db19.195>
    90001ace:	4609                	li	a2,2
    90001ad0:	9682                	jalr	a3
    90001ad2:	a015                	j	90001af6 <.LBB137_18+0x22>

0000000090001ad4 <.LBB137_18>:
    90001ad4:	00007597          	auipc	a1,0x7
    90001ad8:	16358593          	addi	a1,a1,355 # 90008c37 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.204>
    90001adc:	7514                	ld	a3,40(a0)
    90001ade:	7108                	ld	a0,32(a0)
    90001ae0:	6e94                	ld	a3,24(a3)
    90001ae2:	4709                	li	a4,2
    90001ae4:	40c70633          	sub	a2,a4,a2
    90001ae8:	9682                	jalr	a3
    90001aea:	e519                	bnez	a0,90001af8 <.LBB137_18+0x24>
    90001aec:	600c                	ld	a1,0(s0)
    90001aee:	0189b603          	ld	a2,24(s3)
    90001af2:	854a                	mv	a0,s2
    90001af4:	9602                	jalr	a2
    90001af6:	84aa                	mv	s1,a0
    90001af8:	6408                	ld	a0,8(s0)
    90001afa:	00940823          	sb	s1,16(s0)
    90001afe:	0505                	addi	a0,a0,1
    90001b00:	e408                	sd	a0,8(s0)
    90001b02:	8522                	mv	a0,s0
    90001b04:	79a6                	ld	s3,104(sp)
    90001b06:	7946                	ld	s2,112(sp)
    90001b08:	74e6                	ld	s1,120(sp)
    90001b0a:	640a                	ld	s0,128(sp)
    90001b0c:	60aa                	ld	ra,136(sp)
    90001b0e:	6149                	addi	sp,sp,144
    90001b10:	8082                	ret

0000000090001b12 <_ZN4core3fmt8builders10DebugTuple6finish17h9067963986a9fe09E>:
    90001b12:	1101                	addi	sp,sp,-32
    90001b14:	ec06                	sd	ra,24(sp)
    90001b16:	e822                	sd	s0,16(sp)
    90001b18:	e426                	sd	s1,8(sp)
    90001b1a:	842a                	mv	s0,a0
    90001b1c:	650c                	ld	a1,8(a0)
    90001b1e:	01054503          	lbu	a0,16(a0)
    90001b22:	c5b9                	beqz	a1,90001b70 <.LBB138_10+0x14>
    90001b24:	4485                	li	s1,1
    90001b26:	e131                	bnez	a0,90001b6a <.LBB138_10+0xe>
    90001b28:	4505                	li	a0,1
    90001b2a:	02a59563          	bne	a1,a0,90001b54 <.LBB138_9+0x10>
    90001b2e:	01144503          	lbu	a0,17(s0)
    90001b32:	c10d                	beqz	a0,90001b54 <.LBB138_9+0x10>
    90001b34:	6008                	ld	a0,0(s0)
    90001b36:	03054583          	lbu	a1,48(a0)
    90001b3a:	8991                	andi	a1,a1,4
    90001b3c:	ed81                	bnez	a1,90001b54 <.LBB138_9+0x10>
    90001b3e:	750c                	ld	a1,40(a0)
    90001b40:	7108                	ld	a0,32(a0)
    90001b42:	6d94                	ld	a3,24(a1)

0000000090001b44 <.LBB138_9>:
    90001b44:	00007597          	auipc	a1,0x7
    90001b48:	0f458593          	addi	a1,a1,244 # 90008c38 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.205>
    90001b4c:	4605                	li	a2,1
    90001b4e:	4485                	li	s1,1
    90001b50:	9682                	jalr	a3
    90001b52:	ed01                	bnez	a0,90001b6a <.LBB138_10+0xe>
    90001b54:	6008                	ld	a0,0(s0)
    90001b56:	750c                	ld	a1,40(a0)
    90001b58:	7108                	ld	a0,32(a0)
    90001b5a:	6d94                	ld	a3,24(a1)

0000000090001b5c <.LBB138_10>:
    90001b5c:	00007597          	auipc	a1,0x7
    90001b60:	0dd58593          	addi	a1,a1,221 # 90008c39 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.206>
    90001b64:	4605                	li	a2,1
    90001b66:	9682                	jalr	a3
    90001b68:	84aa                	mv	s1,a0
    90001b6a:	00940823          	sb	s1,16(s0)
    90001b6e:	8526                	mv	a0,s1
    90001b70:	00a03533          	snez	a0,a0
    90001b74:	64a2                	ld	s1,8(sp)
    90001b76:	6442                	ld	s0,16(sp)
    90001b78:	60e2                	ld	ra,24(sp)
    90001b7a:	6105                	addi	sp,sp,32
    90001b7c:	8082                	ret

0000000090001b7e <_ZN4core3fmt5Write10write_char17h8aeb772118eba9e2E>:
    90001b7e:	1141                	addi	sp,sp,-16
    90001b80:	e406                	sd	ra,8(sp)
    90001b82:	862e                	mv	a2,a1
    90001b84:	2581                	sext.w	a1,a1
    90001b86:	08000693          	li	a3,128
    90001b8a:	c202                	sw	zero,4(sp)
    90001b8c:	00d5fd63          	bgeu	a1,a3,90001ba6 <_ZN4core3fmt5Write10write_char17h8aeb772118eba9e2E+0x28>
    90001b90:	004c                	addi	a1,sp,4
    90001b92:	00c10223          	sb	a2,4(sp)
    90001b96:	4605                	li	a2,1
    90001b98:	00000097          	auipc	ra,0x0
    90001b9c:	be6080e7          	jalr	-1050(ra) # 9000177e <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>
    90001ba0:	60a2                	ld	ra,8(sp)
    90001ba2:	0141                	addi	sp,sp,16
    90001ba4:	8082                	ret
    90001ba6:	00b6559b          	srliw	a1,a2,0xb
    90001baa:	e595                	bnez	a1,90001bd6 <_ZN4core3fmt5Write10write_char17h8aeb772118eba9e2E+0x58>
    90001bac:	004c                	addi	a1,sp,4
    90001bae:	00665693          	srli	a3,a2,0x6
    90001bb2:	0c06e693          	ori	a3,a3,192
    90001bb6:	00d10223          	sb	a3,4(sp)
    90001bba:	03f67613          	andi	a2,a2,63
    90001bbe:	08066613          	ori	a2,a2,128
    90001bc2:	00c102a3          	sb	a2,5(sp)
    90001bc6:	4609                	li	a2,2
    90001bc8:	00000097          	auipc	ra,0x0
    90001bcc:	bb6080e7          	jalr	-1098(ra) # 9000177e <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>
    90001bd0:	60a2                	ld	ra,8(sp)
    90001bd2:	0141                	addi	sp,sp,16
    90001bd4:	8082                	ret
    90001bd6:	0106569b          	srliw	a3,a2,0x10
    90001bda:	004c                	addi	a1,sp,4
    90001bdc:	ee8d                	bnez	a3,90001c16 <_ZN4core3fmt5Write10write_char17h8aeb772118eba9e2E+0x98>
    90001bde:	00c6569b          	srliw	a3,a2,0xc
    90001be2:	0e06e693          	ori	a3,a3,224
    90001be6:	00d10223          	sb	a3,4(sp)
    90001bea:	0066569b          	srliw	a3,a2,0x6
    90001bee:	03f6f693          	andi	a3,a3,63
    90001bf2:	0806e693          	ori	a3,a3,128
    90001bf6:	00d102a3          	sb	a3,5(sp)
    90001bfa:	03f67613          	andi	a2,a2,63
    90001bfe:	08066613          	ori	a2,a2,128
    90001c02:	00c10323          	sb	a2,6(sp)
    90001c06:	460d                	li	a2,3
    90001c08:	00000097          	auipc	ra,0x0
    90001c0c:	b76080e7          	jalr	-1162(ra) # 9000177e <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>
    90001c10:	60a2                	ld	ra,8(sp)
    90001c12:	0141                	addi	sp,sp,16
    90001c14:	8082                	ret
    90001c16:	0126569b          	srliw	a3,a2,0x12
    90001c1a:	0f06e693          	ori	a3,a3,240
    90001c1e:	00d10223          	sb	a3,4(sp)
    90001c22:	00c6569b          	srliw	a3,a2,0xc
    90001c26:	03f6f693          	andi	a3,a3,63
    90001c2a:	0806e693          	ori	a3,a3,128
    90001c2e:	00d102a3          	sb	a3,5(sp)
    90001c32:	0066569b          	srliw	a3,a2,0x6
    90001c36:	03f6f693          	andi	a3,a3,63
    90001c3a:	0806e693          	ori	a3,a3,128
    90001c3e:	00d10323          	sb	a3,6(sp)
    90001c42:	03f67613          	andi	a2,a2,63
    90001c46:	08066613          	ori	a2,a2,128
    90001c4a:	00c103a3          	sb	a2,7(sp)
    90001c4e:	4611                	li	a2,4
    90001c50:	00000097          	auipc	ra,0x0
    90001c54:	b2e080e7          	jalr	-1234(ra) # 9000177e <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>
    90001c58:	60a2                	ld	ra,8(sp)
    90001c5a:	0141                	addi	sp,sp,16
    90001c5c:	8082                	ret

0000000090001c5e <_ZN4core3fmt5Write9write_fmt17hddb7215d3127a3d2E>:
    90001c5e:	7139                	addi	sp,sp,-64
    90001c60:	fc06                	sd	ra,56(sp)
    90001c62:	7590                	ld	a2,40(a1)
    90001c64:	7194                	ld	a3,32(a1)
    90001c66:	e02a                	sd	a0,0(sp)
    90001c68:	f832                	sd	a2,48(sp)
    90001c6a:	f436                	sd	a3,40(sp)
    90001c6c:	6d88                	ld	a0,24(a1)
    90001c6e:	6990                	ld	a2,16(a1)
    90001c70:	6594                	ld	a3,8(a1)
    90001c72:	618c                	ld	a1,0(a1)
    90001c74:	f02a                	sd	a0,32(sp)
    90001c76:	ec32                	sd	a2,24(sp)
    90001c78:	e836                	sd	a3,16(sp)
    90001c7a:	e42e                	sd	a1,8(sp)

0000000090001c7c <.LBB160_1>:
    90001c7c:	00007597          	auipc	a1,0x7
    90001c80:	0ec58593          	addi	a1,a1,236 # 90008d68 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.228>
    90001c84:	850a                	mv	a0,sp
    90001c86:	0030                	addi	a2,sp,8
    90001c88:	00000097          	auipc	ra,0x0
    90001c8c:	166080e7          	jalr	358(ra) # 90001dee <_ZN4core3fmt5write17h338141860f5a80fbE>
    90001c90:	70e2                	ld	ra,56(sp)
    90001c92:	6121                	addi	sp,sp,64
    90001c94:	8082                	ret

0000000090001c96 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hfa57a7fc9f8589d2E>:
    90001c96:	6108                	ld	a0,0(a0)
    90001c98:	00000317          	auipc	t1,0x0
    90001c9c:	ae630067          	jr	-1306(t1) # 9000177e <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>

0000000090001ca0 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h58b6ff904fa9294fE>:
    90001ca0:	1141                	addi	sp,sp,-16
    90001ca2:	e406                	sd	ra,8(sp)
    90001ca4:	862e                	mv	a2,a1
    90001ca6:	6108                	ld	a0,0(a0)
    90001ca8:	2581                	sext.w	a1,a1
    90001caa:	08000693          	li	a3,128
    90001cae:	c202                	sw	zero,4(sp)
    90001cb0:	00d5fd63          	bgeu	a1,a3,90001cca <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h58b6ff904fa9294fE+0x2a>
    90001cb4:	004c                	addi	a1,sp,4
    90001cb6:	00c10223          	sb	a2,4(sp)
    90001cba:	4605                	li	a2,1
    90001cbc:	00000097          	auipc	ra,0x0
    90001cc0:	ac2080e7          	jalr	-1342(ra) # 9000177e <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>
    90001cc4:	60a2                	ld	ra,8(sp)
    90001cc6:	0141                	addi	sp,sp,16
    90001cc8:	8082                	ret
    90001cca:	00b6559b          	srliw	a1,a2,0xb
    90001cce:	e595                	bnez	a1,90001cfa <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h58b6ff904fa9294fE+0x5a>
    90001cd0:	004c                	addi	a1,sp,4
    90001cd2:	00665693          	srli	a3,a2,0x6
    90001cd6:	0c06e693          	ori	a3,a3,192
    90001cda:	00d10223          	sb	a3,4(sp)
    90001cde:	03f67613          	andi	a2,a2,63
    90001ce2:	08066613          	ori	a2,a2,128
    90001ce6:	00c102a3          	sb	a2,5(sp)
    90001cea:	4609                	li	a2,2
    90001cec:	00000097          	auipc	ra,0x0
    90001cf0:	a92080e7          	jalr	-1390(ra) # 9000177e <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>
    90001cf4:	60a2                	ld	ra,8(sp)
    90001cf6:	0141                	addi	sp,sp,16
    90001cf8:	8082                	ret
    90001cfa:	0106569b          	srliw	a3,a2,0x10
    90001cfe:	004c                	addi	a1,sp,4
    90001d00:	ee8d                	bnez	a3,90001d3a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h58b6ff904fa9294fE+0x9a>
    90001d02:	00c6569b          	srliw	a3,a2,0xc
    90001d06:	0e06e693          	ori	a3,a3,224
    90001d0a:	00d10223          	sb	a3,4(sp)
    90001d0e:	0066569b          	srliw	a3,a2,0x6
    90001d12:	03f6f693          	andi	a3,a3,63
    90001d16:	0806e693          	ori	a3,a3,128
    90001d1a:	00d102a3          	sb	a3,5(sp)
    90001d1e:	03f67613          	andi	a2,a2,63
    90001d22:	08066613          	ori	a2,a2,128
    90001d26:	00c10323          	sb	a2,6(sp)
    90001d2a:	460d                	li	a2,3
    90001d2c:	00000097          	auipc	ra,0x0
    90001d30:	a52080e7          	jalr	-1454(ra) # 9000177e <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>
    90001d34:	60a2                	ld	ra,8(sp)
    90001d36:	0141                	addi	sp,sp,16
    90001d38:	8082                	ret
    90001d3a:	0126569b          	srliw	a3,a2,0x12
    90001d3e:	0f06e693          	ori	a3,a3,240
    90001d42:	00d10223          	sb	a3,4(sp)
    90001d46:	00c6569b          	srliw	a3,a2,0xc
    90001d4a:	03f6f693          	andi	a3,a3,63
    90001d4e:	0806e693          	ori	a3,a3,128
    90001d52:	00d102a3          	sb	a3,5(sp)
    90001d56:	0066569b          	srliw	a3,a2,0x6
    90001d5a:	03f6f693          	andi	a3,a3,63
    90001d5e:	0806e693          	ori	a3,a3,128
    90001d62:	00d10323          	sb	a3,6(sp)
    90001d66:	03f67613          	andi	a2,a2,63
    90001d6a:	08066613          	ori	a2,a2,128
    90001d6e:	00c103a3          	sb	a2,7(sp)
    90001d72:	4611                	li	a2,4
    90001d74:	00000097          	auipc	ra,0x0
    90001d78:	a0a080e7          	jalr	-1526(ra) # 9000177e <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>
    90001d7c:	60a2                	ld	ra,8(sp)
    90001d7e:	0141                	addi	sp,sp,16
    90001d80:	8082                	ret

0000000090001d82 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h242554f80beddc1fE>:
    90001d82:	7139                	addi	sp,sp,-64
    90001d84:	fc06                	sd	ra,56(sp)
    90001d86:	6108                	ld	a0,0(a0)
    90001d88:	7590                	ld	a2,40(a1)
    90001d8a:	7194                	ld	a3,32(a1)
    90001d8c:	e02a                	sd	a0,0(sp)
    90001d8e:	f832                	sd	a2,48(sp)
    90001d90:	f436                	sd	a3,40(sp)
    90001d92:	6d88                	ld	a0,24(a1)
    90001d94:	6990                	ld	a2,16(a1)
    90001d96:	6594                	ld	a3,8(a1)
    90001d98:	618c                	ld	a1,0(a1)
    90001d9a:	f02a                	sd	a0,32(sp)
    90001d9c:	ec32                	sd	a2,24(sp)
    90001d9e:	e836                	sd	a3,16(sp)
    90001da0:	e42e                	sd	a1,8(sp)

0000000090001da2 <.LBB163_1>:
    90001da2:	00007597          	auipc	a1,0x7
    90001da6:	fc658593          	addi	a1,a1,-58 # 90008d68 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.228>
    90001daa:	850a                	mv	a0,sp
    90001dac:	0030                	addi	a2,sp,8
    90001dae:	00000097          	auipc	ra,0x0
    90001db2:	040080e7          	jalr	64(ra) # 90001dee <_ZN4core3fmt5write17h338141860f5a80fbE>
    90001db6:	70e2                	ld	ra,56(sp)
    90001db8:	6121                	addi	sp,sp,64
    90001dba:	8082                	ret

0000000090001dbc <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h6000ae836ac5c51cE>:
    90001dbc:	7139                	addi	sp,sp,-64
    90001dbe:	fc06                	sd	ra,56(sp)
    90001dc0:	7510                	ld	a2,40(a0)
    90001dc2:	7118                	ld	a4,32(a0)
    90001dc4:	7194                	ld	a3,32(a1)
    90001dc6:	758c                	ld	a1,40(a1)
    90001dc8:	f832                	sd	a2,48(sp)
    90001dca:	f43a                	sd	a4,40(sp)
    90001dcc:	6d10                	ld	a2,24(a0)
    90001dce:	6918                	ld	a4,16(a0)
    90001dd0:	651c                	ld	a5,8(a0)
    90001dd2:	6108                	ld	a0,0(a0)
    90001dd4:	f032                	sd	a2,32(sp)
    90001dd6:	ec3a                	sd	a4,24(sp)
    90001dd8:	e83e                	sd	a5,16(sp)
    90001dda:	e42a                	sd	a0,8(sp)
    90001ddc:	0030                	addi	a2,sp,8
    90001dde:	8536                	mv	a0,a3
    90001de0:	00000097          	auipc	ra,0x0
    90001de4:	00e080e7          	jalr	14(ra) # 90001dee <_ZN4core3fmt5write17h338141860f5a80fbE>
    90001de8:	70e2                	ld	ra,56(sp)
    90001dea:	6121                	addi	sp,sp,64
    90001dec:	8082                	ret

0000000090001dee <_ZN4core3fmt5write17h338141860f5a80fbE>:
    90001dee:	7135                	addi	sp,sp,-160
    90001df0:	ed06                	sd	ra,152(sp)
    90001df2:	e922                	sd	s0,144(sp)
    90001df4:	e526                	sd	s1,136(sp)
    90001df6:	e14a                	sd	s2,128(sp)
    90001df8:	fcce                	sd	s3,120(sp)
    90001dfa:	f8d2                	sd	s4,112(sp)
    90001dfc:	f4d6                	sd	s5,104(sp)
    90001dfe:	f0da                	sd	s6,96(sp)
    90001e00:	ecde                	sd	s7,88(sp)
    90001e02:	e8e2                	sd	s8,80(sp)
    90001e04:	e4e6                	sd	s9,72(sp)
    90001e06:	8432                	mv	s0,a2
    90001e08:	4605                	li	a2,1
    90001e0a:	1616                	slli	a2,a2,0x25
    90001e0c:	fc32                	sd	a2,56(sp)
    90001e0e:	460d                	li	a2,3
    90001e10:	04c10023          	sb	a2,64(sp)
    90001e14:	6804                	ld	s1,16(s0)
    90001e16:	e402                	sd	zero,8(sp)
    90001e18:	ec02                	sd	zero,24(sp)
    90001e1a:	f42a                	sd	a0,40(sp)
    90001e1c:	f82e                	sd	a1,48(sp)
    90001e1e:	cce9                	beqz	s1,90001ef8 <.LBB167_35+0x9e>
    90001e20:	6c10                	ld	a2,24(s0)
    90001e22:	00843983          	ld	s3,8(s0)
    90001e26:	00043903          	ld	s2,0(s0)
    90001e2a:	8ace                	mv	s5,s3
    90001e2c:	00c9e363          	bltu	s3,a2,90001e32 <_ZN4core3fmt5write17h338141860f5a80fbE+0x44>
    90001e30:	8ab2                	mv	s5,a2
    90001e32:	120a8163          	beqz	s5,90001f54 <.LBB167_35+0xfa>
    90001e36:	00093683          	ld	a3,0(s2)
    90001e3a:	00893603          	ld	a2,8(s2)
    90001e3e:	6d98                	ld	a4,24(a1)
    90001e40:	85b6                	mv	a1,a3
    90001e42:	9702                	jalr	a4
    90001e44:	12051663          	bnez	a0,90001f70 <.LBB167_35+0x116>
    90001e48:	02043c03          	ld	s8,32(s0)
    90001e4c:	03048493          	addi	s1,s1,48
    90001e50:	01890c93          	addi	s9,s2,24
    90001e54:	00810a13          	addi	s4,sp,8
    90001e58:	4b09                	li	s6,2

0000000090001e5a <.LBB167_35>:
    90001e5a:	fffffb97          	auipc	s7,0xfffff
    90001e5e:	786b8b93          	addi	s7,s7,1926 # 900015e0 <_ZN4core3ops8function6FnOnce9call_once17hbe6f1b732a2946a4E>
    90001e62:	8456                	mv	s0,s5
    90001e64:	ff84a503          	lw	a0,-8(s1)
    90001e68:	de2a                	sw	a0,60(sp)
    90001e6a:	00048503          	lb	a0,0(s1)
    90001e6e:	04a10023          	sb	a0,64(sp)
    90001e72:	ffc4a503          	lw	a0,-4(s1)
    90001e76:	dc2a                	sw	a0,56(sp)
    90001e78:	fe84b603          	ld	a2,-24(s1)
    90001e7c:	ff04b503          	ld	a0,-16(s1)
    90001e80:	ca19                	beqz	a2,90001e96 <.LBB167_35+0x3c>
    90001e82:	4581                	li	a1,0
    90001e84:	01660c63          	beq	a2,s6,90001e9c <.LBB167_35+0x42>
    90001e88:	0512                	slli	a0,a0,0x4
    90001e8a:	9562                	add	a0,a0,s8
    90001e8c:	650c                	ld	a1,8(a0)
    90001e8e:	01759663          	bne	a1,s7,90001e9a <.LBB167_35+0x40>
    90001e92:	6108                	ld	a0,0(a0)
    90001e94:	6108                	ld	a0,0(a0)
    90001e96:	4585                	li	a1,1
    90001e98:	a011                	j	90001e9c <.LBB167_35+0x42>
    90001e9a:	4581                	li	a1,0
    90001e9c:	e42e                	sd	a1,8(sp)
    90001e9e:	e82a                	sd	a0,16(sp)
    90001ea0:	fd84b603          	ld	a2,-40(s1)
    90001ea4:	fe04b503          	ld	a0,-32(s1)
    90001ea8:	ca19                	beqz	a2,90001ebe <.LBB167_35+0x64>
    90001eaa:	4581                	li	a1,0
    90001eac:	01660c63          	beq	a2,s6,90001ec4 <.LBB167_35+0x6a>
    90001eb0:	0512                	slli	a0,a0,0x4
    90001eb2:	9562                	add	a0,a0,s8
    90001eb4:	650c                	ld	a1,8(a0)
    90001eb6:	01759663          	bne	a1,s7,90001ec2 <.LBB167_35+0x68>
    90001eba:	6108                	ld	a0,0(a0)
    90001ebc:	6108                	ld	a0,0(a0)
    90001ebe:	4585                	li	a1,1
    90001ec0:	a011                	j	90001ec4 <.LBB167_35+0x6a>
    90001ec2:	4581                	li	a1,0
    90001ec4:	ec2e                	sd	a1,24(sp)
    90001ec6:	f02a                	sd	a0,32(sp)
    90001ec8:	fd04b503          	ld	a0,-48(s1)
    90001ecc:	0512                	slli	a0,a0,0x4
    90001ece:	9562                	add	a0,a0,s8
    90001ed0:	6510                	ld	a2,8(a0)
    90001ed2:	6108                	ld	a0,0(a0)
    90001ed4:	85d2                	mv	a1,s4
    90001ed6:	9602                	jalr	a2
    90001ed8:	ed41                	bnez	a0,90001f70 <.LBB167_35+0x116>
    90001eda:	147d                	addi	s0,s0,-1
    90001edc:	cc2d                	beqz	s0,90001f56 <.LBB167_35+0xfc>
    90001ede:	76c2                	ld	a3,48(sp)
    90001ee0:	7522                	ld	a0,40(sp)
    90001ee2:	ff8cb583          	ld	a1,-8(s9)
    90001ee6:	000cb603          	ld	a2,0(s9)
    90001eea:	6e94                	ld	a3,24(a3)
    90001eec:	03848493          	addi	s1,s1,56
    90001ef0:	0cc1                	addi	s9,s9,16
    90001ef2:	9682                	jalr	a3
    90001ef4:	d925                	beqz	a0,90001e64 <.LBB167_35+0xa>
    90001ef6:	a8ad                	j	90001f70 <.LBB167_35+0x116>
    90001ef8:	7004                	ld	s1,32(s0)
    90001efa:	7410                	ld	a2,40(s0)
    90001efc:	00843983          	ld	s3,8(s0)
    90001f00:	00043903          	ld	s2,0(s0)
    90001f04:	8ace                	mv	s5,s3
    90001f06:	00c9e363          	bltu	s3,a2,90001f0c <.LBB167_35+0xb2>
    90001f0a:	8ab2                	mv	s5,a2
    90001f0c:	040a8463          	beqz	s5,90001f54 <.LBB167_35+0xfa>
    90001f10:	00093683          	ld	a3,0(s2)
    90001f14:	00893603          	ld	a2,8(s2)
    90001f18:	6d98                	ld	a4,24(a1)
    90001f1a:	85b6                	mv	a1,a3
    90001f1c:	9702                	jalr	a4
    90001f1e:	e929                	bnez	a0,90001f70 <.LBB167_35+0x116>
    90001f20:	04a1                	addi	s1,s1,8
    90001f22:	01890b13          	addi	s6,s2,24
    90001f26:	00810a13          	addi	s4,sp,8
    90001f2a:	8456                	mv	s0,s5
    90001f2c:	6090                	ld	a2,0(s1)
    90001f2e:	ff84b503          	ld	a0,-8(s1)
    90001f32:	85d2                	mv	a1,s4
    90001f34:	9602                	jalr	a2
    90001f36:	ed0d                	bnez	a0,90001f70 <.LBB167_35+0x116>
    90001f38:	147d                	addi	s0,s0,-1
    90001f3a:	cc11                	beqz	s0,90001f56 <.LBB167_35+0xfc>
    90001f3c:	76c2                	ld	a3,48(sp)
    90001f3e:	7522                	ld	a0,40(sp)
    90001f40:	ff8b3583          	ld	a1,-8(s6)
    90001f44:	000b3603          	ld	a2,0(s6)
    90001f48:	6e94                	ld	a3,24(a3)
    90001f4a:	04c1                	addi	s1,s1,16
    90001f4c:	0b41                	addi	s6,s6,16
    90001f4e:	9682                	jalr	a3
    90001f50:	dd71                	beqz	a0,90001f2c <.LBB167_35+0xd2>
    90001f52:	a839                	j	90001f70 <.LBB167_35+0x116>
    90001f54:	4a81                	li	s5,0
    90001f56:	013aff63          	bgeu	s5,s3,90001f74 <.LBB167_35+0x11a>
    90001f5a:	7522                	ld	a0,40(sp)
    90001f5c:	76c2                	ld	a3,48(sp)
    90001f5e:	004a9593          	slli	a1,s5,0x4
    90001f62:	00b90633          	add	a2,s2,a1
    90001f66:	620c                	ld	a1,0(a2)
    90001f68:	6610                	ld	a2,8(a2)
    90001f6a:	6e94                	ld	a3,24(a3)
    90001f6c:	9682                	jalr	a3
    90001f6e:	c119                	beqz	a0,90001f74 <.LBB167_35+0x11a>
    90001f70:	4505                	li	a0,1
    90001f72:	a011                	j	90001f76 <.LBB167_35+0x11c>
    90001f74:	4501                	li	a0,0
    90001f76:	6ca6                	ld	s9,72(sp)
    90001f78:	6c46                	ld	s8,80(sp)
    90001f7a:	6be6                	ld	s7,88(sp)
    90001f7c:	7b06                	ld	s6,96(sp)
    90001f7e:	7aa6                	ld	s5,104(sp)
    90001f80:	7a46                	ld	s4,112(sp)
    90001f82:	79e6                	ld	s3,120(sp)
    90001f84:	690a                	ld	s2,128(sp)
    90001f86:	64aa                	ld	s1,136(sp)
    90001f88:	644a                	ld	s0,144(sp)
    90001f8a:	60ea                	ld	ra,152(sp)
    90001f8c:	610d                	addi	sp,sp,160
    90001f8e:	8082                	ret

0000000090001f90 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E>:
    90001f90:	7159                	addi	sp,sp,-112
    90001f92:	f486                	sd	ra,104(sp)
    90001f94:	f0a2                	sd	s0,96(sp)
    90001f96:	eca6                	sd	s1,88(sp)
    90001f98:	e8ca                	sd	s2,80(sp)
    90001f9a:	e4ce                	sd	s3,72(sp)
    90001f9c:	e0d2                	sd	s4,64(sp)
    90001f9e:	fc56                	sd	s5,56(sp)
    90001fa0:	f85a                	sd	s6,48(sp)
    90001fa2:	f45e                	sd	s7,40(sp)
    90001fa4:	f062                	sd	s8,32(sp)
    90001fa6:	ec66                	sd	s9,24(sp)
    90001fa8:	e86a                	sd	s10,16(sp)
    90001faa:	e46e                	sd	s11,8(sp)
    90001fac:	89be                	mv	s3,a5
    90001fae:	893a                	mv	s2,a4
    90001fb0:	8ab6                	mv	s5,a3
    90001fb2:	842a                	mv	s0,a0
    90001fb4:	c9b1                	beqz	a1,90002008 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x78>
    90001fb6:	03046503          	lwu	a0,48(s0)
    90001fba:	00157593          	andi	a1,a0,1
    90001fbe:	00110a37          	lui	s4,0x110
    90001fc2:	c199                	beqz	a1,90001fc8 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x38>
    90001fc4:	02b00a13          	li	s4,43
    90001fc8:	01358cb3          	add	s9,a1,s3
    90001fcc:	00457593          	andi	a1,a0,4
    90001fd0:	c5a9                	beqz	a1,9000201a <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x8a>
    90001fd2:	4581                	li	a1,0
    90001fd4:	020a8063          	beqz	s5,90001ff4 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x64>
    90001fd8:	86d6                	mv	a3,s5
    90001fda:	8732                	mv	a4,a2
    90001fdc:	00074783          	lbu	a5,0(a4)
    90001fe0:	0705                	addi	a4,a4,1
    90001fe2:	0c07f793          	andi	a5,a5,192
    90001fe6:	f8078793          	addi	a5,a5,-128
    90001fea:	0017b793          	seqz	a5,a5
    90001fee:	16fd                	addi	a3,a3,-1
    90001ff0:	95be                	add	a1,a1,a5
    90001ff2:	f6ed                	bnez	a3,90001fdc <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x4c>
    90001ff4:	015c86b3          	add	a3,s9,s5
    90001ff8:	40b68cb3          	sub	s9,a3,a1
    90001ffc:	8b32                	mv	s6,a2
    90001ffe:	600c                	ld	a1,0(s0)
    90002000:	4d85                	li	s11,1
    90002002:	03b58163          	beq	a1,s11,90002024 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x94>
    90002006:	a0b1                	j	90002052 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xc2>
    90002008:	03046503          	lwu	a0,48(s0)
    9000200c:	00198c93          	addi	s9,s3,1
    90002010:	02d00a13          	li	s4,45
    90002014:	00457593          	andi	a1,a0,4
    90002018:	fdcd                	bnez	a1,90001fd2 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x42>
    9000201a:	4b01                	li	s6,0
    9000201c:	600c                	ld	a1,0(s0)
    9000201e:	4d85                	li	s11,1
    90002020:	03b59963          	bne	a1,s11,90002052 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xc2>
    90002024:	00843d03          	ld	s10,8(s0)
    90002028:	03acf563          	bgeu	s9,s10,90002052 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xc2>
    9000202c:	8921                	andi	a0,a0,8
    9000202e:	ed3d                	bnez	a0,900020ac <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x11c>
    90002030:	03844503          	lbu	a0,56(s0)
    90002034:	4585                	li	a1,1
    90002036:	468d                	li	a3,3
    90002038:	4605                	li	a2,1
    9000203a:	00d50363          	beq	a0,a3,90002040 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xb0>
    9000203e:	862a                	mv	a2,a0
    90002040:	8a0d                	andi	a2,a2,3
    90002042:	419d0533          	sub	a0,s10,s9
    90002046:	0ac5c763          	blt	a1,a2,900020f4 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x164>
    9000204a:	ea45                	bnez	a2,900020fa <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x16a>
    9000204c:	8c2a                	mv	s8,a0
    9000204e:	4501                	li	a0,0
    90002050:	a0c9                	j	90002112 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x182>
    90002052:	8522                	mv	a0,s0
    90002054:	85d2                	mv	a1,s4
    90002056:	865a                	mv	a2,s6
    90002058:	86d6                	mv	a3,s5
    9000205a:	00000097          	auipc	ra,0x0
    9000205e:	174080e7          	jalr	372(ra) # 900021ce <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h348f9b16d5d85b52E>
    90002062:	c10d                	beqz	a0,90002084 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xf4>
    90002064:	856e                	mv	a0,s11
    90002066:	6da2                	ld	s11,8(sp)
    90002068:	6d42                	ld	s10,16(sp)
    9000206a:	6ce2                	ld	s9,24(sp)
    9000206c:	7c02                	ld	s8,32(sp)
    9000206e:	7ba2                	ld	s7,40(sp)
    90002070:	7b42                	ld	s6,48(sp)
    90002072:	7ae2                	ld	s5,56(sp)
    90002074:	6a06                	ld	s4,64(sp)
    90002076:	69a6                	ld	s3,72(sp)
    90002078:	6946                	ld	s2,80(sp)
    9000207a:	64e6                	ld	s1,88(sp)
    9000207c:	7406                	ld	s0,96(sp)
    9000207e:	70a6                	ld	ra,104(sp)
    90002080:	6165                	addi	sp,sp,112
    90002082:	8082                	ret
    90002084:	740c                	ld	a1,40(s0)
    90002086:	7008                	ld	a0,32(s0)
    90002088:	6d9c                	ld	a5,24(a1)
    9000208a:	85ca                	mv	a1,s2
    9000208c:	864e                	mv	a2,s3
    9000208e:	6da2                	ld	s11,8(sp)
    90002090:	6d42                	ld	s10,16(sp)
    90002092:	6ce2                	ld	s9,24(sp)
    90002094:	7c02                	ld	s8,32(sp)
    90002096:	7ba2                	ld	s7,40(sp)
    90002098:	7b42                	ld	s6,48(sp)
    9000209a:	7ae2                	ld	s5,56(sp)
    9000209c:	6a06                	ld	s4,64(sp)
    9000209e:	69a6                	ld	s3,72(sp)
    900020a0:	6946                	ld	s2,80(sp)
    900020a2:	64e6                	ld	s1,88(sp)
    900020a4:	7406                	ld	s0,96(sp)
    900020a6:	70a6                	ld	ra,104(sp)
    900020a8:	6165                	addi	sp,sp,112
    900020aa:	8782                	jr	a5
    900020ac:	03446b83          	lwu	s7,52(s0)
    900020b0:	03000513          	li	a0,48
    900020b4:	03844c03          	lbu	s8,56(s0)
    900020b8:	d848                	sw	a0,52(s0)
    900020ba:	4d85                	li	s11,1
    900020bc:	03b40c23          	sb	s11,56(s0)
    900020c0:	8522                	mv	a0,s0
    900020c2:	85d2                	mv	a1,s4
    900020c4:	865a                	mv	a2,s6
    900020c6:	86d6                	mv	a3,s5
    900020c8:	00000097          	auipc	ra,0x0
    900020cc:	106080e7          	jalr	262(ra) # 900021ce <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h348f9b16d5d85b52E>
    900020d0:	f951                	bnez	a0,90002064 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
    900020d2:	03844503          	lbu	a0,56(s0)
    900020d6:	4585                	li	a1,1
    900020d8:	468d                	li	a3,3
    900020da:	4605                	li	a2,1
    900020dc:	00d50363          	beq	a0,a3,900020e2 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x152>
    900020e0:	862a                	mv	a2,a0
    900020e2:	8a0d                	andi	a2,a2,3
    900020e4:	419d0533          	sub	a0,s10,s9
    900020e8:	00c5cb63          	blt	a1,a2,900020fe <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x16e>
    900020ec:	ee01                	bnez	a2,90002104 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x174>
    900020ee:	8aaa                	mv	s5,a0
    900020f0:	4501                	li	a0,0
    900020f2:	a041                	j	90002172 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x1e2>
    900020f4:	458d                	li	a1,3
    900020f6:	00b61963          	bne	a2,a1,90002108 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x178>
    900020fa:	4c01                	li	s8,0
    900020fc:	a819                	j	90002112 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x182>
    900020fe:	458d                	li	a1,3
    90002100:	06b61463          	bne	a2,a1,90002168 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x1d8>
    90002104:	4a81                	li	s5,0
    90002106:	a0b5                	j	90002172 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x1e2>
    90002108:	00150593          	addi	a1,a0,1
    9000210c:	8105                	srli	a0,a0,0x1
    9000210e:	0015dc13          	srli	s8,a1,0x1
    90002112:	00150493          	addi	s1,a0,1
    90002116:	14fd                	addi	s1,s1,-1
    90002118:	c881                	beqz	s1,90002128 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x198>
    9000211a:	740c                	ld	a1,40(s0)
    9000211c:	7008                	ld	a0,32(s0)
    9000211e:	7190                	ld	a2,32(a1)
    90002120:	584c                	lw	a1,52(s0)
    90002122:	9602                	jalr	a2
    90002124:	d96d                	beqz	a0,90002116 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x186>
    90002126:	a085                	j	90002186 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x1f6>
    90002128:	03446b83          	lwu	s7,52(s0)
    9000212c:	8522                	mv	a0,s0
    9000212e:	85d2                	mv	a1,s4
    90002130:	865a                	mv	a2,s6
    90002132:	86d6                	mv	a3,s5
    90002134:	00000097          	auipc	ra,0x0
    90002138:	09a080e7          	jalr	154(ra) # 900021ce <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h348f9b16d5d85b52E>
    9000213c:	4d85                	li	s11,1
    9000213e:	f11d                	bnez	a0,90002064 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
    90002140:	740c                	ld	a1,40(s0)
    90002142:	7008                	ld	a0,32(s0)
    90002144:	6d94                	ld	a3,24(a1)
    90002146:	85ca                	mv	a1,s2
    90002148:	864e                	mv	a2,s3
    9000214a:	9682                	jalr	a3
    9000214c:	fd01                	bnez	a0,90002064 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
    9000214e:	02043903          	ld	s2,32(s0)
    90002152:	7400                	ld	s0,40(s0)
    90002154:	001c0493          	addi	s1,s8,1
    90002158:	14fd                	addi	s1,s1,-1
    9000215a:	c0b5                	beqz	s1,900021be <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x22e>
    9000215c:	7010                	ld	a2,32(s0)
    9000215e:	854a                	mv	a0,s2
    90002160:	85de                	mv	a1,s7
    90002162:	9602                	jalr	a2
    90002164:	d975                	beqz	a0,90002158 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x1c8>
    90002166:	bdfd                	j	90002064 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
    90002168:	00150593          	addi	a1,a0,1
    9000216c:	8105                	srli	a0,a0,0x1
    9000216e:	0015da93          	srli	s5,a1,0x1
    90002172:	00150493          	addi	s1,a0,1
    90002176:	14fd                	addi	s1,s1,-1
    90002178:	c889                	beqz	s1,9000218a <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x1fa>
    9000217a:	740c                	ld	a1,40(s0)
    9000217c:	7008                	ld	a0,32(s0)
    9000217e:	7190                	ld	a2,32(a1)
    90002180:	584c                	lw	a1,52(s0)
    90002182:	9602                	jalr	a2
    90002184:	d96d                	beqz	a0,90002176 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x1e6>
    90002186:	4d85                	li	s11,1
    90002188:	bdf1                	j	90002064 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
    9000218a:	740c                	ld	a1,40(s0)
    9000218c:	03446a03          	lwu	s4,52(s0)
    90002190:	7008                	ld	a0,32(s0)
    90002192:	6d94                	ld	a3,24(a1)
    90002194:	85ca                	mv	a1,s2
    90002196:	864e                	mv	a2,s3
    90002198:	9682                	jalr	a3
    9000219a:	4d85                	li	s11,1
    9000219c:	ec0514e3          	bnez	a0,90002064 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
    900021a0:	02043903          	ld	s2,32(s0)
    900021a4:	02843983          	ld	s3,40(s0)
    900021a8:	001a8493          	addi	s1,s5,1
    900021ac:	14fd                	addi	s1,s1,-1
    900021ae:	c891                	beqz	s1,900021c2 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x232>
    900021b0:	0209b603          	ld	a2,32(s3)
    900021b4:	854a                	mv	a0,s2
    900021b6:	85d2                	mv	a1,s4
    900021b8:	9602                	jalr	a2
    900021ba:	d96d                	beqz	a0,900021ac <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x21c>
    900021bc:	b565                	j	90002064 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
    900021be:	4d81                	li	s11,0
    900021c0:	b555                	j	90002064 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
    900021c2:	4d81                	li	s11,0
    900021c4:	03742a23          	sw	s7,52(s0)
    900021c8:	03840c23          	sb	s8,56(s0)
    900021cc:	bd61                	j	90002064 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>

00000000900021ce <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h348f9b16d5d85b52E>:
    900021ce:	1101                	addi	sp,sp,-32
    900021d0:	ec06                	sd	ra,24(sp)
    900021d2:	e822                	sd	s0,16(sp)
    900021d4:	e426                	sd	s1,8(sp)
    900021d6:	e04a                	sd	s2,0(sp)
    900021d8:	02059713          	slli	a4,a1,0x20
    900021dc:	9301                	srli	a4,a4,0x20
    900021de:	001107b7          	lui	a5,0x110
    900021e2:	8936                	mv	s2,a3
    900021e4:	84b2                	mv	s1,a2
    900021e6:	842a                	mv	s0,a0
    900021e8:	00f70963          	beq	a4,a5,900021fa <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h348f9b16d5d85b52E+0x2c>
    900021ec:	7410                	ld	a2,40(s0)
    900021ee:	7008                	ld	a0,32(s0)
    900021f0:	7210                	ld	a2,32(a2)
    900021f2:	9602                	jalr	a2
    900021f4:	85aa                	mv	a1,a0
    900021f6:	4505                	li	a0,1
    900021f8:	ed91                	bnez	a1,90002214 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h348f9b16d5d85b52E+0x46>
    900021fa:	cc81                	beqz	s1,90002212 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h348f9b16d5d85b52E+0x44>
    900021fc:	740c                	ld	a1,40(s0)
    900021fe:	7008                	ld	a0,32(s0)
    90002200:	6d9c                	ld	a5,24(a1)
    90002202:	85a6                	mv	a1,s1
    90002204:	864a                	mv	a2,s2
    90002206:	6902                	ld	s2,0(sp)
    90002208:	64a2                	ld	s1,8(sp)
    9000220a:	6442                	ld	s0,16(sp)
    9000220c:	60e2                	ld	ra,24(sp)
    9000220e:	6105                	addi	sp,sp,32
    90002210:	8782                	jr	a5
    90002212:	4501                	li	a0,0
    90002214:	6902                	ld	s2,0(sp)
    90002216:	64a2                	ld	s1,8(sp)
    90002218:	6442                	ld	s0,16(sp)
    9000221a:	60e2                	ld	ra,24(sp)
    9000221c:	6105                	addi	sp,sp,32
    9000221e:	8082                	ret

0000000090002220 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E>:
    90002220:	7139                	addi	sp,sp,-64
    90002222:	fc06                	sd	ra,56(sp)
    90002224:	f822                	sd	s0,48(sp)
    90002226:	f426                	sd	s1,40(sp)
    90002228:	f04a                	sd	s2,32(sp)
    9000222a:	ec4e                	sd	s3,24(sp)
    9000222c:	e852                	sd	s4,16(sp)
    9000222e:	e456                	sd	s5,8(sp)
    90002230:	e05a                	sd	s6,0(sp)
    90002232:	8b2a                	mv	s6,a0
    90002234:	6914                	ld	a3,16(a0)
    90002236:	6108                	ld	a0,0(a0)
    90002238:	89b2                	mv	s3,a2
    9000223a:	892e                	mv	s2,a1
    9000223c:	fff68593          	addi	a1,a3,-1
    90002240:	4605                	li	a2,1
    90002242:	0015b593          	seqz	a1,a1
    90002246:	00c51463          	bne	a0,a2,9000224e <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x2e>
    9000224a:	e581                	bnez	a1,90002252 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x32>
    9000224c:	a215                	j	90002370 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x150>
    9000224e:	18058f63          	beqz	a1,900023ec <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1cc>
    90002252:	018b3683          	ld	a3,24(s6)
    90002256:	157d                	addi	a0,a0,-1
    90002258:	00153813          	seqz	a6,a0
    9000225c:	01390733          	add	a4,s2,s3
    90002260:	4581                	li	a1,0
    90002262:	c2dd                	beqz	a3,90002308 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xe8>
    90002264:	5e7d                	li	t3,-1
    90002266:	0e000393          	li	t2,224
    9000226a:	0f000313          	li	t1,240
    9000226e:	001c08b7          	lui	a7,0x1c0
    90002272:	001102b7          	lui	t0,0x110
    90002276:	854a                	mv	a0,s2
    90002278:	a815                	j	900022ac <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x8c>
    9000227a:	00064403          	lbu	s0,0(a2)
    9000227e:	00160493          	addi	s1,a2,1
    90002282:	03f47f93          	andi	t6,s0,63
    90002286:	07ca                	slli	a5,a5,0x12
    90002288:	0117f7b3          	and	a5,a5,a7
    9000228c:	00cf1413          	slli	s0,t5,0xc
    90002290:	006e9613          	slli	a2,t4,0x6
    90002294:	8fc1                	or	a5,a5,s0
    90002296:	8e5d                	or	a2,a2,a5
    90002298:	01f66633          	or	a2,a2,t6
    9000229c:	0c560863          	beq	a2,t0,9000236c <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x14c>
    900022a0:	40a48533          	sub	a0,s1,a0
    900022a4:	16fd                	addi	a3,a3,-1
    900022a6:	95aa                	add	a1,a1,a0
    900022a8:	8526                	mv	a0,s1
    900022aa:	c2a5                	beqz	a3,9000230a <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xea>
    900022ac:	0ca70063          	beq	a4,a0,9000236c <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x14c>
    900022b0:	00050603          	lb	a2,0(a0)
    900022b4:	00150493          	addi	s1,a0,1
    900022b8:	fece44e3          	blt	t3,a2,900022a0 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x80>
    900022bc:	0ff67793          	andi	a5,a2,255
    900022c0:	00e48c63          	beq	s1,a4,900022d8 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xb8>
    900022c4:	00154603          	lbu	a2,1(a0)
    900022c8:	00250493          	addi	s1,a0,2
    900022cc:	03f67f13          	andi	t5,a2,63
    900022d0:	8626                	mv	a2,s1
    900022d2:	fc77e7e3          	bltu	a5,t2,900022a0 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x80>
    900022d6:	a029                	j	900022e0 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xc0>
    900022d8:	4f01                	li	t5,0
    900022da:	863a                	mv	a2,a4
    900022dc:	fc77e2e3          	bltu	a5,t2,900022a0 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x80>
    900022e0:	00e60c63          	beq	a2,a4,900022f8 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xd8>
    900022e4:	00064403          	lbu	s0,0(a2)
    900022e8:	00160493          	addi	s1,a2,1
    900022ec:	03f47e93          	andi	t4,s0,63
    900022f0:	8626                	mv	a2,s1
    900022f2:	fa67e7e3          	bltu	a5,t1,900022a0 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x80>
    900022f6:	a029                	j	90002300 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xe0>
    900022f8:	4e81                	li	t4,0
    900022fa:	863a                	mv	a2,a4
    900022fc:	fa67e2e3          	bltu	a5,t1,900022a0 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x80>
    90002300:	f6e61de3          	bne	a2,a4,9000227a <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x5a>
    90002304:	4f81                	li	t6,0
    90002306:	b741                	j	90002286 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x66>
    90002308:	84ca                	mv	s1,s2
    9000230a:	06970163          	beq	a4,s1,9000236c <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x14c>
    9000230e:	00048503          	lb	a0,0(s1)
    90002312:	567d                	li	a2,-1
    90002314:	02a65763          	bge	a2,a0,90002342 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x122>
    90002318:	0015b513          	seqz	a0,a1
    9000231c:	0135c633          	xor	a2,a1,s3
    90002320:	00163613          	seqz	a2,a2
    90002324:	8d51                	or	a0,a0,a2
    90002326:	e919                	bnez	a0,9000233c <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x11c>
    90002328:	0335fe63          	bgeu	a1,s3,90002364 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x144>
    9000232c:	00b90533          	add	a0,s2,a1
    90002330:	00050503          	lb	a0,0(a0)
    90002334:	fc000613          	li	a2,-64
    90002338:	02c54663          	blt	a0,a2,90002364 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x144>
    9000233c:	854a                	mv	a0,s2
    9000233e:	e50d                	bnez	a0,90002368 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x148>
    90002340:	a035                	j	9000236c <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x14c>
    90002342:	00148613          	addi	a2,s1,1
    90002346:	0ff57513          	andi	a0,a0,255
    9000234a:	14e60163          	beq	a2,a4,9000248c <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x26c>
    9000234e:	0014c683          	lbu	a3,1(s1)
    90002352:	00248613          	addi	a2,s1,2
    90002356:	03f6f693          	andi	a3,a3,63
    9000235a:	0e000793          	li	a5,224
    9000235e:	12f57d63          	bgeu	a0,a5,90002498 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x278>
    90002362:	bf5d                	j	90002318 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xf8>
    90002364:	4501                	li	a0,0
    90002366:	c119                	beqz	a0,9000236c <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x14c>
    90002368:	892a                	mv	s2,a0
    9000236a:	89ae                	mv	s3,a1
    9000236c:	08080063          	beqz	a6,900023ec <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1cc>
    90002370:	04098763          	beqz	s3,900023be <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x19e>
    90002374:	4581                	li	a1,0
    90002376:	854e                	mv	a0,s3
    90002378:	864a                	mv	a2,s2
    9000237a:	00064683          	lbu	a3,0(a2)
    9000237e:	0605                	addi	a2,a2,1
    90002380:	0c06f693          	andi	a3,a3,192
    90002384:	f8068693          	addi	a3,a3,-128
    90002388:	0016b693          	seqz	a3,a3
    9000238c:	157d                	addi	a0,a0,-1
    9000238e:	95b6                	add	a1,a1,a3
    90002390:	f56d                	bnez	a0,9000237a <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x15a>
    90002392:	008b3503          	ld	a0,8(s6)
    90002396:	40b985b3          	sub	a1,s3,a1
    9000239a:	04a5f963          	bgeu	a1,a0,900023ec <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1cc>
    9000239e:	4581                	li	a1,0
    900023a0:	864e                	mv	a2,s3
    900023a2:	86ca                	mv	a3,s2
    900023a4:	0006c703          	lbu	a4,0(a3)
    900023a8:	0685                	addi	a3,a3,1
    900023aa:	0c077713          	andi	a4,a4,192
    900023ae:	f8070713          	addi	a4,a4,-128
    900023b2:	00173713          	seqz	a4,a4
    900023b6:	167d                	addi	a2,a2,-1
    900023b8:	95ba                	add	a1,a1,a4
    900023ba:	f66d                	bnez	a2,900023a4 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x184>
    900023bc:	a029                	j	900023c6 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1a6>
    900023be:	008b3503          	ld	a0,8(s6)
    900023c2:	4581                	li	a1,0
    900023c4:	c505                	beqz	a0,900023ec <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1cc>
    900023c6:	038b4683          	lbu	a3,56(s6)
    900023ca:	4701                	li	a4,0
    900023cc:	478d                	li	a5,3
    900023ce:	41358633          	sub	a2,a1,s3
    900023d2:	00f68363          	beq	a3,a5,900023d8 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1b8>
    900023d6:	8736                	mv	a4,a3
    900023d8:	00377593          	andi	a1,a4,3
    900023dc:	4685                	li	a3,1
    900023de:	9532                	add	a0,a0,a2
    900023e0:	02b6c763          	blt	a3,a1,9000240e <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1ee>
    900023e4:	e985                	bnez	a1,90002414 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1f4>
    900023e6:	8aaa                	mv	s5,a0
    900023e8:	4501                	li	a0,0
    900023ea:	a825                	j	90002422 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x202>
    900023ec:	028b3583          	ld	a1,40(s6)
    900023f0:	020b3503          	ld	a0,32(s6)
    900023f4:	6d9c                	ld	a5,24(a1)
    900023f6:	85ca                	mv	a1,s2
    900023f8:	864e                	mv	a2,s3
    900023fa:	6b02                	ld	s6,0(sp)
    900023fc:	6aa2                	ld	s5,8(sp)
    900023fe:	6a42                	ld	s4,16(sp)
    90002400:	69e2                	ld	s3,24(sp)
    90002402:	7902                	ld	s2,32(sp)
    90002404:	74a2                	ld	s1,40(sp)
    90002406:	7442                	ld	s0,48(sp)
    90002408:	70e2                	ld	ra,56(sp)
    9000240a:	6121                	addi	sp,sp,64
    9000240c:	8782                	jr	a5
    9000240e:	460d                	li	a2,3
    90002410:	00c59463          	bne	a1,a2,90002418 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1f8>
    90002414:	4a81                	li	s5,0
    90002416:	a031                	j	90002422 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x202>
    90002418:	00150593          	addi	a1,a0,1
    9000241c:	8105                	srli	a0,a0,0x1
    9000241e:	0015da93          	srli	s5,a1,0x1
    90002422:	00150493          	addi	s1,a0,1
    90002426:	14fd                	addi	s1,s1,-1
    90002428:	cc81                	beqz	s1,90002440 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x220>
    9000242a:	028b3583          	ld	a1,40(s6)
    9000242e:	020b3503          	ld	a0,32(s6)
    90002432:	7190                	ld	a2,32(a1)
    90002434:	034b2583          	lw	a1,52(s6)
    90002438:	9602                	jalr	a2
    9000243a:	d575                	beqz	a0,90002426 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x206>
    9000243c:	4905                	li	s2,1
    9000243e:	a825                	j	90002476 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x256>
    90002440:	028b3583          	ld	a1,40(s6)
    90002444:	034b6a03          	lwu	s4,52(s6)
    90002448:	020b3503          	ld	a0,32(s6)
    9000244c:	6d94                	ld	a3,24(a1)
    9000244e:	85ca                	mv	a1,s2
    90002450:	864e                	mv	a2,s3
    90002452:	9682                	jalr	a3
    90002454:	4905                	li	s2,1
    90002456:	e105                	bnez	a0,90002476 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x256>
    90002458:	020b3983          	ld	s3,32(s6)
    9000245c:	028b3403          	ld	s0,40(s6)
    90002460:	001a8493          	addi	s1,s5,1
    90002464:	14fd                	addi	s1,s1,-1
    90002466:	c499                	beqz	s1,90002474 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x254>
    90002468:	7010                	ld	a2,32(s0)
    9000246a:	854e                	mv	a0,s3
    9000246c:	85d2                	mv	a1,s4
    9000246e:	9602                	jalr	a2
    90002470:	d975                	beqz	a0,90002464 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x244>
    90002472:	a011                	j	90002476 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x256>
    90002474:	4901                	li	s2,0
    90002476:	854a                	mv	a0,s2
    90002478:	6b02                	ld	s6,0(sp)
    9000247a:	6aa2                	ld	s5,8(sp)
    9000247c:	6a42                	ld	s4,16(sp)
    9000247e:	69e2                	ld	s3,24(sp)
    90002480:	7902                	ld	s2,32(sp)
    90002482:	74a2                	ld	s1,40(sp)
    90002484:	7442                	ld	s0,48(sp)
    90002486:	70e2                	ld	ra,56(sp)
    90002488:	6121                	addi	sp,sp,64
    9000248a:	8082                	ret
    9000248c:	4681                	li	a3,0
    9000248e:	863a                	mv	a2,a4
    90002490:	0e000793          	li	a5,224
    90002494:	e8f562e3          	bltu	a0,a5,90002318 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xf8>
    90002498:	00e60d63          	beq	a2,a4,900024b2 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x292>
    9000249c:	00064483          	lbu	s1,0(a2)
    900024a0:	00160793          	addi	a5,a2,1
    900024a4:	03f4f613          	andi	a2,s1,63
    900024a8:	0f000493          	li	s1,240
    900024ac:	00957963          	bgeu	a0,s1,900024be <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x29e>
    900024b0:	b5a5                	j	90002318 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xf8>
    900024b2:	4601                	li	a2,0
    900024b4:	87ba                	mv	a5,a4
    900024b6:	0f000493          	li	s1,240
    900024ba:	e4956fe3          	bltu	a0,s1,90002318 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xf8>
    900024be:	00e78763          	beq	a5,a4,900024cc <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x2ac>
    900024c2:	0007c703          	lbu	a4,0(a5) # 110000 <.Lline_table_start0+0xf3156>
    900024c6:	03f77713          	andi	a4,a4,63
    900024ca:	a011                	j	900024ce <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x2ae>
    900024cc:	4701                	li	a4,0
    900024ce:	054a                	slli	a0,a0,0x12
    900024d0:	001c07b7          	lui	a5,0x1c0
    900024d4:	8d7d                	and	a0,a0,a5
    900024d6:	06b2                	slli	a3,a3,0xc
    900024d8:	061a                	slli	a2,a2,0x6
    900024da:	8d55                	or	a0,a0,a3
    900024dc:	8d51                	or	a0,a0,a2
    900024de:	8d59                	or	a0,a0,a4
    900024e0:	00110637          	lui	a2,0x110
    900024e4:	e8c504e3          	beq	a0,a2,9000236c <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x14c>
    900024e8:	bd05                	j	90002318 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xf8>

00000000900024ea <_ZN4core3fmt9Formatter11debug_tuple17h33e702ebb7966d6cE>:
    900024ea:	1101                	addi	sp,sp,-32
    900024ec:	ec06                	sd	ra,24(sp)
    900024ee:	e822                	sd	s0,16(sp)
    900024f0:	e426                	sd	s1,8(sp)
    900024f2:	e04a                	sd	s2,0(sp)
    900024f4:	842e                	mv	s0,a1
    900024f6:	7598                	ld	a4,40(a1)
    900024f8:	718c                	ld	a1,32(a1)
    900024fa:	6f18                	ld	a4,24(a4)
    900024fc:	8936                	mv	s2,a3
    900024fe:	84aa                	mv	s1,a0
    90002500:	852e                	mv	a0,a1
    90002502:	85b2                	mv	a1,a2
    90002504:	8636                	mv	a2,a3
    90002506:	9702                	jalr	a4
    90002508:	00193593          	seqz	a1,s2
    9000250c:	e080                	sd	s0,0(s1)
    9000250e:	00a48823          	sb	a0,16(s1)
    90002512:	0004b423          	sd	zero,8(s1)
    90002516:	00b488a3          	sb	a1,17(s1)
    9000251a:	6902                	ld	s2,0(sp)
    9000251c:	64a2                	ld	s1,8(sp)
    9000251e:	6442                	ld	s0,16(sp)
    90002520:	60e2                	ld	ra,24(sp)
    90002522:	6105                	addi	sp,sp,32
    90002524:	8082                	ret

0000000090002526 <_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h669958e415ffd666E>:
    90002526:	86ae                	mv	a3,a1
    90002528:	85aa                	mv	a1,a0
    9000252a:	8532                	mv	a0,a2
    9000252c:	8636                	mv	a2,a3
    9000252e:	00000317          	auipc	t1,0x0
    90002532:	cf230067          	jr	-782(t1) # 90002220 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E>

0000000090002536 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E>:
    90002536:	7159                	addi	sp,sp,-112
    90002538:	f486                	sd	ra,104(sp)
    9000253a:	f0a2                	sd	s0,96(sp)
    9000253c:	eca6                	sd	s1,88(sp)
    9000253e:	e8ca                	sd	s2,80(sp)
    90002540:	e4ce                	sd	s3,72(sp)
    90002542:	e0d2                	sd	s4,64(sp)
    90002544:	fc56                	sd	s5,56(sp)
    90002546:	f85a                	sd	s6,48(sp)
    90002548:	f45e                	sd	s7,40(sp)
    9000254a:	f062                	sd	s8,32(sp)
    9000254c:	ec66                	sd	s9,24(sp)
    9000254e:	e86a                	sd	s10,16(sp)
    90002550:	e46e                	sd	s11,8(sp)
    90002552:	842e                	mv	s0,a1
    90002554:	758c                	ld	a1,40(a1)
    90002556:	7010                	ld	a2,32(s0)
    90002558:	7194                	ld	a3,32(a1)
    9000255a:	84aa                	mv	s1,a0
    9000255c:	02700593          	li	a1,39
    90002560:	8532                	mv	a0,a2
    90002562:	9682                	jalr	a3
    90002564:	c10d                	beqz	a0,90002586 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x50>
    90002566:	4505                	li	a0,1
    90002568:	6da2                	ld	s11,8(sp)
    9000256a:	6d42                	ld	s10,16(sp)
    9000256c:	6ce2                	ld	s9,24(sp)
    9000256e:	7c02                	ld	s8,32(sp)
    90002570:	7ba2                	ld	s7,40(sp)
    90002572:	7b42                	ld	s6,48(sp)
    90002574:	7ae2                	ld	s5,56(sp)
    90002576:	6a06                	ld	s4,64(sp)
    90002578:	69a6                	ld	s3,72(sp)
    9000257a:	6946                	ld	s2,80(sp)
    9000257c:	64e6                	ld	s1,88(sp)
    9000257e:	7406                	ld	s0,96(sp)
    90002580:	70a6                	ld	ra,104(sp)
    90002582:	6165                	addi	sp,sp,112
    90002584:	8082                	ret
    90002586:	0004ea83          	lwu	s5,0(s1)
    9000258a:	02100513          	li	a0,33
    9000258e:	4489                	li	s1,2
    90002590:	01554e63          	blt	a0,s5,900025ac <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x76>
    90002594:	4525                	li	a0,9
    90002596:	04aa8763          	beq	s5,a0,900025e4 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xae>
    9000259a:	4529                	li	a0,10
    9000259c:	04aa8763          	beq	s5,a0,900025ea <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xb4>
    900025a0:	4535                	li	a0,13
    900025a2:	02aa9163          	bne	s5,a0,900025c4 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x8e>
    900025a6:	07200a93          	li	s5,114
    900025aa:	a091                	j	900025ee <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xb8>
    900025ac:	02200513          	li	a0,34
    900025b0:	02aa8f63          	beq	s5,a0,900025ee <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xb8>
    900025b4:	02700513          	li	a0,39
    900025b8:	02aa8b63          	beq	s5,a0,900025ee <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xb8>
    900025bc:	05c00513          	li	a0,92
    900025c0:	02aa8763          	beq	s5,a0,900025ee <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xb8>
    900025c4:	8556                	mv	a0,s5
    900025c6:	00001097          	auipc	ra,0x1
    900025ca:	58a080e7          	jalr	1418(ra) # 90003b50 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17hc6378705226a5029E>
    900025ce:	10051b63          	bnez	a0,900026e4 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x1ae>
    900025d2:	8556                	mv	a0,s5
    900025d4:	00001097          	auipc	ra,0x1
    900025d8:	902080e7          	jalr	-1790(ra) # 90002ed6 <_ZN4core7unicode9printable12is_printable17hd298c127375d0caaE>
    900025dc:	10050463          	beqz	a0,900026e4 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x1ae>
    900025e0:	4485                	li	s1,1
    900025e2:	a031                	j	900025ee <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xb8>
    900025e4:	07400a93          	li	s5,116
    900025e8:	a019                	j	900025ee <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xb8>
    900025ea:	06e00a93          	li	s5,110
    900025ee:	4a09                	li	s4,2
    900025f0:	4b05                	li	s6,1
    900025f2:	f0100513          	li	a0,-255
    900025f6:	1502                	slli	a0,a0,0x20
    900025f8:	fff50b93          	addi	s7,a0,-1
    900025fc:	4c29                	li	s8,10
    900025fe:	020b1c93          	slli	s9,s6,0x20
    90002602:	4d0d                	li	s10,3
    90002604:	021b1d93          	slli	s11,s6,0x21
    90002608:	4911                	li	s2,4
    9000260a:	a039                	j	90002618 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xe2>
    9000260c:	4485                	li	s1,1
    9000260e:	7410                	ld	a2,40(s0)
    90002610:	7008                	ld	a0,32(s0)
    90002612:	7210                	ld	a2,32(a2)
    90002614:	9602                	jalr	a2
    90002616:	f921                	bnez	a0,90002566 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x30>
    90002618:	02049513          	slli	a0,s1,0x20
    9000261c:	9101                	srli	a0,a0,0x20
    9000261e:	00ab4663          	blt	s6,a0,9000262a <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xf4>
    90002622:	cd49                	beqz	a0,900026bc <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x186>
    90002624:	4481                	li	s1,0
    90002626:	85d6                	mv	a1,s5
    90002628:	b7dd                	j	9000260e <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xd8>
    9000262a:	05c00593          	li	a1,92
    9000262e:	fd450fe3          	beq	a0,s4,9000260c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xd6>
    90002632:	0209d513          	srli	a0,s3,0x20
    90002636:	0ff57513          	andi	a0,a0,255
    9000263a:	00aa4b63          	blt	s4,a0,90002650 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x11a>
    9000263e:	cd3d                	beqz	a0,900026bc <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x186>
    90002640:	03651663          	bne	a0,s6,9000266c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x136>
    90002644:	0179f9b3          	and	s3,s3,s7
    90002648:	448d                	li	s1,3
    9000264a:	07d00593          	li	a1,125
    9000264e:	b7c1                	j	9000260e <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xd8>
    90002650:	05a50063          	beq	a0,s10,90002690 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x15a>
    90002654:	05251663          	bne	a0,s2,900026a0 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x16a>
    90002658:	0179f533          	and	a0,s3,s7
    9000265c:	448d                	li	s1,3
    9000265e:	02049593          	slli	a1,s1,0x20
    90002662:	00b569b3          	or	s3,a0,a1
    90002666:	07500593          	li	a1,117
    9000266a:	b755                	j	9000260e <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xd8>
    9000266c:	6602                	ld	a2,0(sp)
    9000266e:	00261513          	slli	a0,a2,0x2
    90002672:	00a9d53b          	srlw	a0,s3,a0
    90002676:	893d                	andi	a0,a0,15
    90002678:	03000593          	li	a1,48
    9000267c:	01856463          	bltu	a0,s8,90002684 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x14e>
    90002680:	05700593          	li	a1,87
    90002684:	95aa                	add	a1,a1,a0
    90002686:	c60d                	beqz	a2,900026b0 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x17a>
    90002688:	167d                	addi	a2,a2,-1
    9000268a:	e032                	sd	a2,0(sp)
    9000268c:	448d                	li	s1,3
    9000268e:	b741                	j	9000260e <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xd8>
    90002690:	0179f533          	and	a0,s3,s7
    90002694:	01b569b3          	or	s3,a0,s11
    90002698:	448d                	li	s1,3
    9000269a:	07b00593          	li	a1,123
    9000269e:	bf85                	j	9000260e <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xd8>
    900026a0:	0179f533          	and	a0,s3,s7
    900026a4:	022b1613          	slli	a2,s6,0x22
    900026a8:	00c569b3          	or	s3,a0,a2
    900026ac:	448d                	li	s1,3
    900026ae:	b785                	j	9000260e <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xd8>
    900026b0:	0179f533          	and	a0,s3,s7
    900026b4:	019569b3          	or	s3,a0,s9
    900026b8:	448d                	li	s1,3
    900026ba:	bf91                	j	9000260e <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xd8>
    900026bc:	740c                	ld	a1,40(s0)
    900026be:	7008                	ld	a0,32(s0)
    900026c0:	719c                	ld	a5,32(a1)
    900026c2:	02700593          	li	a1,39
    900026c6:	6da2                	ld	s11,8(sp)
    900026c8:	6d42                	ld	s10,16(sp)
    900026ca:	6ce2                	ld	s9,24(sp)
    900026cc:	7c02                	ld	s8,32(sp)
    900026ce:	7ba2                	ld	s7,40(sp)
    900026d0:	7b42                	ld	s6,48(sp)
    900026d2:	7ae2                	ld	s5,56(sp)
    900026d4:	6a06                	ld	s4,64(sp)
    900026d6:	69a6                	ld	s3,72(sp)
    900026d8:	6946                	ld	s2,80(sp)
    900026da:	64e6                	ld	s1,88(sp)
    900026dc:	7406                	ld	s0,96(sp)
    900026de:	70a6                	ld	ra,104(sp)
    900026e0:	6165                	addi	sp,sp,112
    900026e2:	8782                	jr	a5
    900026e4:	001ae513          	ori	a0,s5,1
    900026e8:	00155593          	srli	a1,a0,0x1
    900026ec:	8d4d                	or	a0,a0,a1
    900026ee:	00255593          	srli	a1,a0,0x2
    900026f2:	8d4d                	or	a0,a0,a1
    900026f4:	00455593          	srli	a1,a0,0x4
    900026f8:	8d4d                	or	a0,a0,a1
    900026fa:	00855593          	srli	a1,a0,0x8
    900026fe:	8d4d                	or	a0,a0,a1
    90002700:	01055593          	srli	a1,a0,0x10
    90002704:	8d4d                	or	a0,a0,a1
    90002706:	02055593          	srli	a1,a0,0x20
    9000270a:	8d4d                	or	a0,a0,a1
    9000270c:	fff54513          	not	a0,a0
    90002710:	00155593          	srli	a1,a0,0x1
    90002714:	05555637          	lui	a2,0x5555
    90002718:	5556061b          	addiw	a2,a2,1365
    9000271c:	0632                	slli	a2,a2,0xc
    9000271e:	55560613          	addi	a2,a2,1365 # 5555555 <.Lline_table_start0+0x55386ab>
    90002722:	0632                	slli	a2,a2,0xc
    90002724:	55560613          	addi	a2,a2,1365
    90002728:	0632                	slli	a2,a2,0xc
    9000272a:	55560613          	addi	a2,a2,1365
    9000272e:	8df1                	and	a1,a1,a2
    90002730:	8d0d                	sub	a0,a0,a1
    90002732:	033335b7          	lui	a1,0x3333
    90002736:	3335859b          	addiw	a1,a1,819
    9000273a:	05b2                	slli	a1,a1,0xc
    9000273c:	33358593          	addi	a1,a1,819 # 3333333 <.Lline_table_start0+0x3316489>
    90002740:	05b2                	slli	a1,a1,0xc
    90002742:	33358593          	addi	a1,a1,819
    90002746:	05b2                	slli	a1,a1,0xc
    90002748:	33358593          	addi	a1,a1,819
    9000274c:	00b57633          	and	a2,a0,a1
    90002750:	8109                	srli	a0,a0,0x2
    90002752:	8d6d                	and	a0,a0,a1
    90002754:	9532                	add	a0,a0,a2
    90002756:	00455593          	srli	a1,a0,0x4
    9000275a:	952e                	add	a0,a0,a1
    9000275c:	00f0f5b7          	lui	a1,0xf0f
    90002760:	0f15859b          	addiw	a1,a1,241
    90002764:	05b2                	slli	a1,a1,0xc
    90002766:	f0f58593          	addi	a1,a1,-241 # f0ef0f <.Lline_table_start0+0xef2065>
    9000276a:	05b2                	slli	a1,a1,0xc
    9000276c:	0f158593          	addi	a1,a1,241
    90002770:	05b2                	slli	a1,a1,0xc
    90002772:	f0f58593          	addi	a1,a1,-241
    90002776:	8d6d                	and	a0,a0,a1
    90002778:	010105b7          	lui	a1,0x1010
    9000277c:	1015859b          	addiw	a1,a1,257
    90002780:	05c2                	slli	a1,a1,0x10
    90002782:	10158593          	addi	a1,a1,257 # 1010101 <.Lline_table_start0+0xff3257>
    90002786:	05c2                	slli	a1,a1,0x10
    90002788:	10158593          	addi	a1,a1,257
    9000278c:	02b50533          	mul	a0,a0,a1
    90002790:	9161                	srli	a0,a0,0x38
    90002792:	1501                	addi	a0,a0,-32
    90002794:	0025551b          	srliw	a0,a0,0x2
    90002798:	00754513          	xori	a0,a0,7
    9000279c:	e02a                	sd	a0,0(sp)
    9000279e:	4515                	li	a0,5
    900027a0:	1502                	slli	a0,a0,0x20
    900027a2:	00aae9b3          	or	s3,s5,a0
    900027a6:	448d                	li	s1,3
    900027a8:	b599                	j	900025ee <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xb8>

00000000900027aa <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E>:
    900027aa:	1141                	addi	sp,sp,-16
    900027ac:	e406                	sd	ra,8(sp)
    900027ae:	00758693          	addi	a3,a1,7
    900027b2:	9ae1                	andi	a3,a3,-8
    900027b4:	8e8d                	sub	a3,a3,a1
    900027b6:	0ff57813          	andi	a6,a0,255
    900027ba:	c68d                	beqz	a3,900027e4 <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0x3a>
    900027bc:	8532                	mv	a0,a2
    900027be:	00d66363          	bltu	a2,a3,900027c4 <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0x1a>
    900027c2:	8536                	mv	a0,a3
    900027c4:	c105                	beqz	a0,900027e4 <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0x3a>
    900027c6:	4681                	li	a3,0
    900027c8:	00d58733          	add	a4,a1,a3
    900027cc:	00074703          	lbu	a4,0(a4)
    900027d0:	0d070463          	beq	a4,a6,90002898 <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0xee>
    900027d4:	0685                	addi	a3,a3,1
    900027d6:	fed519e3          	bne	a0,a3,900027c8 <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0x1e>
    900027da:	ff060893          	addi	a7,a2,-16
    900027de:	00a8f663          	bgeu	a7,a0,900027ea <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0x40>
    900027e2:	a049                	j	90002864 <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0xba>
    900027e4:	4501                	li	a0,0
    900027e6:	ff060893          	addi	a7,a2,-16
    900027ea:	feff06b7          	lui	a3,0xfeff0
    900027ee:	eff6869b          	addiw	a3,a3,-257
    900027f2:	06c2                	slli	a3,a3,0x10
    900027f4:	eff68693          	addi	a3,a3,-257 # fffffffffefefeff <ebss+0xffffffff6efcaeff>
    900027f8:	06c2                	slli	a3,a3,0x10
    900027fa:	eff68293          	addi	t0,a3,-257
    900027fe:	76c1                	lui	a3,0xffff0
    90002800:	1016869b          	addiw	a3,a3,257
    90002804:	06c2                	slli	a3,a3,0x10
    90002806:	10168693          	addi	a3,a3,257 # ffffffffffff0101 <ebss+0xffffffff6ffcb101>
    9000280a:	06c2                	slli	a3,a3,0x10
    9000280c:	10168693          	addi	a3,a3,257
    90002810:	06be                	slli	a3,a3,0xf
    90002812:	08068313          	addi	t1,a3,128
    90002816:	010106b7          	lui	a3,0x1010
    9000281a:	1016869b          	addiw	a3,a3,257
    9000281e:	06c2                	slli	a3,a3,0x10
    90002820:	10168693          	addi	a3,a3,257 # 1010101 <.Lline_table_start0+0xff3257>
    90002824:	06c2                	slli	a3,a3,0x10
    90002826:	10168693          	addi	a3,a3,257
    9000282a:	02d803b3          	mul	t2,a6,a3
    9000282e:	00a587b3          	add	a5,a1,a0
    90002832:	6398                	ld	a4,0(a5)
    90002834:	679c                	ld	a5,8(a5)
    90002836:	00774733          	xor	a4,a4,t2
    9000283a:	fff74693          	not	a3,a4
    9000283e:	9716                	add	a4,a4,t0
    90002840:	0066f6b3          	and	a3,a3,t1
    90002844:	8ef9                	and	a3,a3,a4
    90002846:	0077c733          	xor	a4,a5,t2
    9000284a:	fff74793          	not	a5,a4
    9000284e:	9716                	add	a4,a4,t0
    90002850:	0067f7b3          	and	a5,a5,t1
    90002854:	8f7d                	and	a4,a4,a5
    90002856:	8ed9                	or	a3,a3,a4
    90002858:	e681                	bnez	a3,90002860 <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0xb6>
    9000285a:	0541                	addi	a0,a0,16
    9000285c:	fca8f9e3          	bgeu	a7,a0,9000282e <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0x84>
    90002860:	02a66e63          	bltu	a2,a0,9000289c <.LBB203_24>
    90002864:	4681                	li	a3,0
    90002866:	00c51463          	bne	a0,a2,9000286e <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0xc4>
    9000286a:	4581                	li	a1,0
    9000286c:	a005                	j	9000288c <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0xe2>
    9000286e:	8e09                	sub	a2,a2,a0
    90002870:	95aa                	add	a1,a1,a0
    90002872:	00d58733          	add	a4,a1,a3
    90002876:	00074703          	lbu	a4,0(a4)
    9000287a:	01070863          	beq	a4,a6,9000288a <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0xe0>
    9000287e:	0685                	addi	a3,a3,1
    90002880:	fed619e3          	bne	a2,a3,90002872 <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0xc8>
    90002884:	4581                	li	a1,0
    90002886:	86b2                	mv	a3,a2
    90002888:	a011                	j	9000288c <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0xe2>
    9000288a:	4585                	li	a1,1
    9000288c:	96aa                	add	a3,a3,a0
    9000288e:	852e                	mv	a0,a1
    90002890:	85b6                	mv	a1,a3
    90002892:	60a2                	ld	ra,8(sp)
    90002894:	0141                	addi	sp,sp,16
    90002896:	8082                	ret
    90002898:	4585                	li	a1,1
    9000289a:	bfd5                	j	9000288e <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0xe4>

000000009000289c <.LBB203_24>:
    9000289c:	00006697          	auipc	a3,0x6
    900028a0:	4fc68693          	addi	a3,a3,1276 # 90008d98 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.242>
    900028a4:	85b2                	mv	a1,a2
    900028a6:	8636                	mv	a2,a3
    900028a8:	00000097          	auipc	ra,0x0
    900028ac:	00a080e7          	jalr	10(ra) # 900028b2 <_ZN4core5slice5index26slice_start_index_len_fail17h43348ae2a84bde06E>
	...

00000000900028b2 <_ZN4core5slice5index26slice_start_index_len_fail17h43348ae2a84bde06E>:
    900028b2:	7159                	addi	sp,sp,-112
    900028b4:	f486                	sd	ra,104(sp)
    900028b6:	e42a                	sd	a0,8(sp)
    900028b8:	e82e                	sd	a1,16(sp)
    900028ba:	0028                	addi	a0,sp,8
    900028bc:	e4aa                	sd	a0,72(sp)

00000000900028be <.LBB205_1>:
    900028be:	00001517          	auipc	a0,0x1
    900028c2:	d8e50513          	addi	a0,a0,-626 # 9000364c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    900028c6:	e8aa                	sd	a0,80(sp)
    900028c8:	080c                	addi	a1,sp,16
    900028ca:	ecae                	sd	a1,88(sp)
    900028cc:	f0aa                	sd	a0,96(sp)

00000000900028ce <.LBB205_2>:
    900028ce:	00006517          	auipc	a0,0x6
    900028d2:	51a50513          	addi	a0,a0,1306 # 90008de8 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.247>
    900028d6:	ec2a                	sd	a0,24(sp)
    900028d8:	4509                	li	a0,2
    900028da:	f02a                	sd	a0,32(sp)
    900028dc:	f402                	sd	zero,40(sp)
    900028de:	00ac                	addi	a1,sp,72
    900028e0:	fc2e                	sd	a1,56(sp)
    900028e2:	e0aa                	sd	a0,64(sp)
    900028e4:	0828                	addi	a0,sp,24
    900028e6:	85b2                	mv	a1,a2
    900028e8:	fffff097          	auipc	ra,0xfffff
    900028ec:	e6e080e7          	jalr	-402(ra) # 90001756 <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>
	...

00000000900028f2 <_ZN4core5slice5index24slice_end_index_len_fail17h397499141087200aE>:
    900028f2:	7159                	addi	sp,sp,-112
    900028f4:	f486                	sd	ra,104(sp)
    900028f6:	e42a                	sd	a0,8(sp)
    900028f8:	e82e                	sd	a1,16(sp)
    900028fa:	0028                	addi	a0,sp,8
    900028fc:	e4aa                	sd	a0,72(sp)

00000000900028fe <.LBB206_1>:
    900028fe:	00001517          	auipc	a0,0x1
    90002902:	d4e50513          	addi	a0,a0,-690 # 9000364c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    90002906:	e8aa                	sd	a0,80(sp)
    90002908:	080c                	addi	a1,sp,16
    9000290a:	ecae                	sd	a1,88(sp)
    9000290c:	f0aa                	sd	a0,96(sp)

000000009000290e <.LBB206_2>:
    9000290e:	00006517          	auipc	a0,0x6
    90002912:	4fa50513          	addi	a0,a0,1274 # 90008e08 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.249>
    90002916:	ec2a                	sd	a0,24(sp)
    90002918:	4509                	li	a0,2
    9000291a:	f02a                	sd	a0,32(sp)
    9000291c:	f402                	sd	zero,40(sp)
    9000291e:	00ac                	addi	a1,sp,72
    90002920:	fc2e                	sd	a1,56(sp)
    90002922:	e0aa                	sd	a0,64(sp)
    90002924:	0828                	addi	a0,sp,24
    90002926:	85b2                	mv	a1,a2
    90002928:	fffff097          	auipc	ra,0xfffff
    9000292c:	e2e080e7          	jalr	-466(ra) # 90001756 <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>
	...

0000000090002932 <_ZN4core5slice5index22slice_index_order_fail17h17f07731262cfc7fE>:
    90002932:	7159                	addi	sp,sp,-112
    90002934:	f486                	sd	ra,104(sp)
    90002936:	e42a                	sd	a0,8(sp)
    90002938:	e82e                	sd	a1,16(sp)
    9000293a:	0028                	addi	a0,sp,8
    9000293c:	e4aa                	sd	a0,72(sp)

000000009000293e <.LBB207_1>:
    9000293e:	00001517          	auipc	a0,0x1
    90002942:	d0e50513          	addi	a0,a0,-754 # 9000364c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    90002946:	e8aa                	sd	a0,80(sp)
    90002948:	080c                	addi	a1,sp,16
    9000294a:	ecae                	sd	a1,88(sp)
    9000294c:	f0aa                	sd	a0,96(sp)

000000009000294e <.LBB207_2>:
    9000294e:	00006517          	auipc	a0,0x6
    90002952:	50250513          	addi	a0,a0,1282 # 90008e50 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.252>
    90002956:	ec2a                	sd	a0,24(sp)
    90002958:	4509                	li	a0,2
    9000295a:	f02a                	sd	a0,32(sp)
    9000295c:	f402                	sd	zero,40(sp)
    9000295e:	00ac                	addi	a1,sp,72
    90002960:	fc2e                	sd	a1,56(sp)
    90002962:	e0aa                	sd	a0,64(sp)
    90002964:	0828                	addi	a0,sp,24
    90002966:	85b2                	mv	a1,a2
    90002968:	fffff097          	auipc	ra,0xfffff
    9000296c:	dee080e7          	jalr	-530(ra) # 90001756 <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>
	...

0000000090002972 <_ZN4core5slice5index29slice_end_index_overflow_fail17h5ff2b53285909b6aE>:
    90002972:	1141                	addi	sp,sp,-16
    90002974:	e406                	sd	ra,8(sp)
    90002976:	862a                	mv	a2,a0

0000000090002978 <.LBB209_1>:
    90002978:	00006517          	auipc	a0,0x6
    9000297c:	4f850513          	addi	a0,a0,1272 # 90008e70 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.254>
    90002980:	02c00593          	li	a1,44
    90002984:	fffff097          	auipc	ra,0xfffff
    90002988:	d66080e7          	jalr	-666(ra) # 900016ea <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
	...

000000009000298e <_ZN4core3str8converts9from_utf817h36a155da9055aca2E>:
    9000298e:	711d                	addi	sp,sp,-96
    90002990:	eca2                	sd	s0,88(sp)
    90002992:	e8a6                	sd	s1,80(sp)
    90002994:	e4ca                	sd	s2,72(sp)
    90002996:	e0ce                	sd	s3,64(sp)
    90002998:	fc52                	sd	s4,56(sp)
    9000299a:	f856                	sd	s5,48(sp)
    9000299c:	f45a                	sd	s6,40(sp)
    9000299e:	f05e                	sd	s7,32(sp)
    900029a0:	ec62                	sd	s8,24(sp)
    900029a2:	e866                	sd	s9,16(sp)
    900029a4:	e46a                	sd	s10,8(sp)
    900029a6:	ff160693          	addi	a3,a2,-15
    900029aa:	00d63733          	sltu	a4,a2,a3
    900029ae:	4d01                	li	s10,0
    900029b0:	e311                	bnez	a4,900029b4 <_ZN4core3str8converts9from_utf817h36a155da9055aca2E+0x26>
    900029b2:	8d36                	mv	s10,a3
    900029b4:	20060463          	beqz	a2,90002bbc <.LBB212_49+0x1f0>
    900029b8:	4681                	li	a3,0
    900029ba:	00758713          	addi	a4,a1,7
    900029be:	9b61                	andi	a4,a4,-8
    900029c0:	40b70833          	sub	a6,a4,a1
    900029c4:	00180713          	addi	a4,a6,1 # 1c0001 <.Lline_table_start0+0x1a3157>
    900029c8:	00173c13          	seqz	s8,a4

00000000900029cc <.LBB212_49>:
    900029cc:	00006897          	auipc	a7,0x6
    900029d0:	4d088893          	addi	a7,a7,1232 # 90008e9c <_ZN4core3str11validations15UTF8_CHAR_WIDTH17h8bfa167165964ee9E>
    900029d4:	4291                	li	t0,4
    900029d6:	0f400313          	li	t1,244
    900029da:	08000393          	li	t2,128
    900029de:	0f000e13          	li	t3,240
    900029e2:	03000e93          	li	t4,48
    900029e6:	4f09                	li	t5,2
    900029e8:	5ffd                	li	t6,-1
    900029ea:	0bf00913          	li	s2,191
    900029ee:	4b8d                	li	s7,3
    900029f0:	0ed00b13          	li	s6,237
    900029f4:	0e000993          	li	s3,224
    900029f8:	0a000a13          	li	s4,160
    900029fc:	4aad                	li	s5,11
    900029fe:	7741                	lui	a4,0xffff0
    90002a00:	1017071b          	addiw	a4,a4,257
    90002a04:	0742                	slli	a4,a4,0x10
    90002a06:	10170713          	addi	a4,a4,257 # ffffffffffff0101 <ebss+0xffffffff6ffcb101>
    90002a0a:	0742                	slli	a4,a4,0x10
    90002a0c:	10170713          	addi	a4,a4,257
    90002a10:	073e                	slli	a4,a4,0xf
    90002a12:	08070413          	addi	s0,a4,128
    90002a16:	a029                	j	90002a20 <.LBB212_49+0x54>
    90002a18:	00178693          	addi	a3,a5,1 # 1c0001 <.Lline_table_start0+0x1a3157>
    90002a1c:	1ac6f063          	bgeu	a3,a2,90002bbc <.LBB212_49+0x1f0>
    90002a20:	00d58733          	add	a4,a1,a3
    90002a24:	00074783          	lbu	a5,0(a4)
    90002a28:	03879713          	slli	a4,a5,0x38
    90002a2c:	43875493          	srai	s1,a4,0x38
    90002a30:	0004cc63          	bltz	s1,90002a48 <.LBB212_49+0x7c>
    90002a34:	000c1663          	bnez	s8,90002a40 <.LBB212_49+0x74>
    90002a38:	40d80733          	sub	a4,a6,a3
    90002a3c:	8b1d                	andi	a4,a4,7
    90002a3e:	cf05                	beqz	a4,90002a76 <.LBB212_49+0xaa>
    90002a40:	0685                	addi	a3,a3,1
    90002a42:	fcc6efe3          	bltu	a3,a2,90002a20 <.LBB212_49+0x54>
    90002a46:	aa9d                	j	90002bbc <.LBB212_49+0x1f0>
    90002a48:	01178733          	add	a4,a5,a7
    90002a4c:	00074703          	lbu	a4,0(a4)
    90002a50:	04570b63          	beq	a4,t0,90002aa6 <.LBB212_49+0xda>
    90002a54:	07770b63          	beq	a4,s7,90002aca <.LBB212_49+0xfe>
    90002a58:	17e71663          	bne	a4,t5,90002bc4 <.LBB212_49+0x1f8>
    90002a5c:	00168793          	addi	a5,a3,1
    90002a60:	16c7f563          	bgeu	a5,a2,90002bca <.LBB212_49+0x1fe>
    90002a64:	00f58733          	add	a4,a1,a5
    90002a68:	00074703          	lbu	a4,0(a4)
    90002a6c:	0c077713          	andi	a4,a4,192
    90002a70:	fa7704e3          	beq	a4,t2,90002a18 <.LBB212_49+0x4c>
    90002a74:	aa81                	j	90002bc4 <.LBB212_49+0x1f8>
    90002a76:	01a6fc63          	bgeu	a3,s10,90002a8e <.LBB212_49+0xc2>
    90002a7a:	00d58733          	add	a4,a1,a3
    90002a7e:	631c                	ld	a5,0(a4)
    90002a80:	6718                	ld	a4,8(a4)
    90002a82:	8f5d                	or	a4,a4,a5
    90002a84:	8f61                	and	a4,a4,s0
    90002a86:	e701                	bnez	a4,90002a8e <.LBB212_49+0xc2>
    90002a88:	06c1                	addi	a3,a3,16
    90002a8a:	ffa6e8e3          	bltu	a3,s10,90002a7a <.LBB212_49+0xae>
    90002a8e:	fac6fae3          	bgeu	a3,a2,90002a42 <.LBB212_49+0x76>
    90002a92:	00d58733          	add	a4,a1,a3
    90002a96:	00070703          	lb	a4,0(a4)
    90002a9a:	fa0744e3          	bltz	a4,90002a42 <.LBB212_49+0x76>
    90002a9e:	0685                	addi	a3,a3,1
    90002aa0:	fed619e3          	bne	a2,a3,90002a92 <.LBB212_49+0xc6>
    90002aa4:	aa21                	j	90002bbc <.LBB212_49+0x1f0>
    90002aa6:	00168713          	addi	a4,a3,1
    90002aaa:	12c77063          	bgeu	a4,a2,90002bca <.LBB212_49+0x1fe>
    90002aae:	972e                	add	a4,a4,a1
    90002ab0:	00074703          	lbu	a4,0(a4)
    90002ab4:	02678b63          	beq	a5,t1,90002aea <.LBB212_49+0x11e>
    90002ab8:	05c79363          	bne	a5,t3,90002afe <.LBB212_49+0x132>
    90002abc:	07070713          	addi	a4,a4,112
    90002ac0:	0ff77713          	andi	a4,a4,255
    90002ac4:	05d76d63          	bltu	a4,t4,90002b1e <.LBB212_49+0x152>
    90002ac8:	a8f5                	j	90002bc4 <.LBB212_49+0x1f8>
    90002aca:	00168713          	addi	a4,a3,1
    90002ace:	0ec77e63          	bgeu	a4,a2,90002bca <.LBB212_49+0x1fe>
    90002ad2:	972e                	add	a4,a4,a1
    90002ad4:	00074c83          	lbu	s9,0(a4)
    90002ad8:	07678c63          	beq	a5,s6,90002b50 <.LBB212_49+0x184>
    90002adc:	09379463          	bne	a5,s3,90002b64 <.LBB212_49+0x198>
    90002ae0:	0e0cf713          	andi	a4,s9,224
    90002ae4:	0b470d63          	beq	a4,s4,90002b9e <.LBB212_49+0x1d2>
    90002ae8:	a8f1                	j	90002bc4 <.LBB212_49+0x1f8>
    90002aea:	03871793          	slli	a5,a4,0x38
    90002aee:	97e1                	srai	a5,a5,0x38
    90002af0:	0007a793          	slti	a5,a5,0
    90002af4:	09073713          	sltiu	a4,a4,144
    90002af8:	8f7d                	and	a4,a4,a5
    90002afa:	e315                	bnez	a4,90002b1e <.LBB212_49+0x152>
    90002afc:	a0e1                	j	90002bc4 <.LBB212_49+0x1f8>
    90002afe:	00f48793          	addi	a5,s1,15
    90002b02:	0ff7f793          	andi	a5,a5,255
    90002b06:	00ff37b3          	sltu	a5,t5,a5
    90002b0a:	03871493          	slli	s1,a4,0x38
    90002b0e:	94e1                	srai	s1,s1,0x38
    90002b10:	009fa4b3          	slt	s1,t6,s1
    90002b14:	8fc5                	or	a5,a5,s1
    90002b16:	00e93733          	sltu	a4,s2,a4
    90002b1a:	8f5d                	or	a4,a4,a5
    90002b1c:	e745                	bnez	a4,90002bc4 <.LBB212_49+0x1f8>
    90002b1e:	00268713          	addi	a4,a3,2
    90002b22:	0ac77463          	bgeu	a4,a2,90002bca <.LBB212_49+0x1fe>
    90002b26:	972e                	add	a4,a4,a1
    90002b28:	00074703          	lbu	a4,0(a4)
    90002b2c:	0c077713          	andi	a4,a4,192
    90002b30:	4485                	li	s1,1
    90002b32:	0c771163          	bne	a4,t2,90002bf4 <.LBB212_49+0x228>
    90002b36:	00368793          	addi	a5,a3,3
    90002b3a:	08c7f863          	bgeu	a5,a2,90002bca <.LBB212_49+0x1fe>
    90002b3e:	00f58733          	add	a4,a1,a5
    90002b42:	00074703          	lbu	a4,0(a4)
    90002b46:	0c077713          	andi	a4,a4,192
    90002b4a:	ec7707e3          	beq	a4,t2,90002a18 <.LBB212_49+0x4c>
    90002b4e:	a06d                	j	90002bf8 <.LBB212_49+0x22c>
    90002b50:	038c9713          	slli	a4,s9,0x38
    90002b54:	9761                	srai	a4,a4,0x38
    90002b56:	00072713          	slti	a4,a4,0
    90002b5a:	0a0cb793          	sltiu	a5,s9,160
    90002b5e:	8f7d                	and	a4,a4,a5
    90002b60:	ef1d                	bnez	a4,90002b9e <.LBB212_49+0x1d2>
    90002b62:	a08d                	j	90002bc4 <.LBB212_49+0x1f8>
    90002b64:	01f48713          	addi	a4,s1,31
    90002b68:	0ff77793          	andi	a5,a4,255
    90002b6c:	038c9713          	slli	a4,s9,0x38
    90002b70:	00faea63          	bltu	s5,a5,90002b84 <.LBB212_49+0x1b8>
    90002b74:	9761                	srai	a4,a4,0x38
    90002b76:	00072713          	slti	a4,a4,0
    90002b7a:	0c0cb793          	sltiu	a5,s9,192
    90002b7e:	8f7d                	and	a4,a4,a5
    90002b80:	ef19                	bnez	a4,90002b9e <.LBB212_49+0x1d2>
    90002b82:	a089                	j	90002bc4 <.LBB212_49+0x1f8>
    90002b84:	ffe4f793          	andi	a5,s1,-2
    90002b88:	07c9                	addi	a5,a5,18
    90002b8a:	00f037b3          	snez	a5,a5
    90002b8e:	9761                	srai	a4,a4,0x38
    90002b90:	00efa733          	slt	a4,t6,a4
    90002b94:	8f5d                	or	a4,a4,a5
    90002b96:	019937b3          	sltu	a5,s2,s9
    90002b9a:	8f5d                	or	a4,a4,a5
    90002b9c:	e705                	bnez	a4,90002bc4 <.LBB212_49+0x1f8>
    90002b9e:	00268793          	addi	a5,a3,2
    90002ba2:	02c7f463          	bgeu	a5,a2,90002bca <.LBB212_49+0x1fe>
    90002ba6:	00f58733          	add	a4,a1,a5
    90002baa:	00074703          	lbu	a4,0(a4)
    90002bae:	0c077713          	andi	a4,a4,192
    90002bb2:	e67703e3          	beq	a4,t2,90002a18 <.LBB212_49+0x4c>
    90002bb6:	4485                	li	s1,1
    90002bb8:	4589                	li	a1,2
    90002bba:	a811                	j	90002bce <.LBB212_49+0x202>
    90002bbc:	4681                	li	a3,0
    90002bbe:	e50c                	sd	a1,8(a0)
    90002bc0:	e910                	sd	a2,16(a0)
    90002bc2:	a819                	j	90002bd8 <.LBB212_49+0x20c>
    90002bc4:	4585                	li	a1,1
    90002bc6:	4485                	li	s1,1
    90002bc8:	a019                	j	90002bce <.LBB212_49+0x202>
    90002bca:	4581                	li	a1,0
    90002bcc:	4481                	li	s1,0
    90002bce:	05a2                	slli	a1,a1,0x8
    90002bd0:	8dc5                	or	a1,a1,s1
    90002bd2:	e514                	sd	a3,8(a0)
    90002bd4:	e90c                	sd	a1,16(a0)
    90002bd6:	4685                	li	a3,1
    90002bd8:	e114                	sd	a3,0(a0)
    90002bda:	6d22                	ld	s10,8(sp)
    90002bdc:	6cc2                	ld	s9,16(sp)
    90002bde:	6c62                	ld	s8,24(sp)
    90002be0:	7b82                	ld	s7,32(sp)
    90002be2:	7b22                	ld	s6,40(sp)
    90002be4:	7ac2                	ld	s5,48(sp)
    90002be6:	7a62                	ld	s4,56(sp)
    90002be8:	6986                	ld	s3,64(sp)
    90002bea:	6926                	ld	s2,72(sp)
    90002bec:	64c6                	ld	s1,80(sp)
    90002bee:	6466                	ld	s0,88(sp)
    90002bf0:	6125                	addi	sp,sp,96
    90002bf2:	8082                	ret
    90002bf4:	4589                	li	a1,2
    90002bf6:	bfe1                	j	90002bce <.LBB212_49+0x202>
    90002bf8:	458d                	li	a1,3
    90002bfa:	bfd1                	j	90002bce <.LBB212_49+0x202>

0000000090002bfc <_ZN4core3str16slice_error_fail17he9562343589499f6E>:
    90002bfc:	7115                	addi	sp,sp,-224
    90002bfe:	ed86                	sd	ra,216(sp)
    90002c00:	e432                	sd	a2,8(sp)
    90002c02:	e836                	sd	a3,16(sp)
    90002c04:	10100793          	li	a5,257
    90002c08:	4885                	li	a7,1
    90002c0a:	882e                	mv	a6,a1
    90002c0c:	04f5e263          	bltu	a1,a5,90002c50 <_ZN4core3str16slice_error_fail17he9562343589499f6E+0x54>
    90002c10:	4381                	li	t2,0
    90002c12:	f0158893          	addi	a7,a1,-255
    90002c16:	10050293          	addi	t0,a0,256
    90002c1a:	fbf00313          	li	t1,-65
    90002c1e:	10038813          	addi	a6,t2,256
    90002c22:	00b87863          	bgeu	a6,a1,90002c32 <_ZN4core3str16slice_error_fail17he9562343589499f6E+0x36>
    90002c26:	007287b3          	add	a5,t0,t2
    90002c2a:	00078783          	lb	a5,0(a5)
    90002c2e:	02f34b63          	blt	t1,a5,90002c64 <.LBB228_49+0xc>
    90002c32:	0ff38793          	addi	a5,t2,255
    90002c36:	00f03833          	snez	a6,a5
    90002c3a:	0078c7b3          	xor	a5,a7,t2
    90002c3e:	00f037b3          	snez	a5,a5
    90002c42:	00f877b3          	and	a5,a6,a5
    90002c46:	13fd                	addi	t2,t2,-1
    90002c48:	fbf9                	bnez	a5,90002c1e <_ZN4core3str16slice_error_fail17he9562343589499f6E+0x22>
    90002c4a:	4881                	li	a7,0
    90002c4c:	10038813          	addi	a6,t2,256
    90002c50:	ec2a                	sd	a0,24(sp)
    90002c52:	f042                	sd	a6,32(sp)
    90002c54:	00089d63          	bnez	a7,90002c6e <.LBB228_49+0x16>

0000000090002c58 <.LBB228_49>:
    90002c58:	00006797          	auipc	a5,0x6
    90002c5c:	34478793          	addi	a5,a5,836 # 90008f9c <.Lanon.9d4bfc86079e95d674f3cded52b1db19.310>
    90002c60:	4815                	li	a6,5
    90002c62:	a819                	j	90002c78 <.LBB228_50+0x8>
    90002c64:	4881                	li	a7,0
    90002c66:	ec2a                	sd	a0,24(sp)
    90002c68:	f042                	sd	a6,32(sp)
    90002c6a:	fe0887e3          	beqz	a7,90002c58 <.LBB228_49>
    90002c6e:	4801                	li	a6,0

0000000090002c70 <.LBB228_50>:
    90002c70:	00006797          	auipc	a5,0x6
    90002c74:	e7078793          	addi	a5,a5,-400 # 90008ae0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.33>
    90002c78:	f43e                	sd	a5,40(sp)
    90002c7a:	00c5b8b3          	sltu	a7,a1,a2
    90002c7e:	0018c293          	xori	t0,a7,1
    90002c82:	00d5b7b3          	sltu	a5,a1,a3
    90002c86:	0017c793          	xori	a5,a5,1
    90002c8a:	00f2f7b3          	and	a5,t0,a5
    90002c8e:	f842                	sd	a6,48(sp)
    90002c90:	ef8d                	bnez	a5,90002cca <.LBB228_53+0xe>
    90002c92:	00089363          	bnez	a7,90002c98 <.LBB228_50+0x28>
    90002c96:	8636                	mv	a2,a3
    90002c98:	e4b2                	sd	a2,72(sp)
    90002c9a:	00a8                	addi	a0,sp,72
    90002c9c:	e52a                	sd	a0,136(sp)

0000000090002c9e <.LBB228_51>:
    90002c9e:	00001517          	auipc	a0,0x1
    90002ca2:	9ae50513          	addi	a0,a0,-1618 # 9000364c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    90002ca6:	e92a                	sd	a0,144(sp)
    90002ca8:	0828                	addi	a0,sp,24
    90002caa:	ed2a                	sd	a0,152(sp)

0000000090002cac <.LBB228_52>:
    90002cac:	00001517          	auipc	a0,0x1
    90002cb0:	dda50513          	addi	a0,a0,-550 # 90003a86 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0ab56ae6638005b3E>
    90002cb4:	f12a                	sd	a0,160(sp)
    90002cb6:	102c                	addi	a1,sp,40
    90002cb8:	f52e                	sd	a1,168(sp)
    90002cba:	f92a                	sd	a0,176(sp)

0000000090002cbc <.LBB228_53>:
    90002cbc:	00006517          	auipc	a0,0x6
    90002cc0:	30c50513          	addi	a0,a0,780 # 90008fc8 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.313>
    90002cc4:	ecaa                	sd	a0,88(sp)
    90002cc6:	450d                	li	a0,3
    90002cc8:	aadd                	j	90002ebe <.LBB228_62+0xc>
    90002cca:	02c6fd63          	bgeu	a3,a2,90002d04 <.LBB228_56+0xe>
    90002cce:	0028                	addi	a0,sp,8
    90002cd0:	e52a                	sd	a0,136(sp)

0000000090002cd2 <.LBB228_54>:
    90002cd2:	00001517          	auipc	a0,0x1
    90002cd6:	97a50513          	addi	a0,a0,-1670 # 9000364c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    90002cda:	e92a                	sd	a0,144(sp)
    90002cdc:	080c                	addi	a1,sp,16
    90002cde:	ed2e                	sd	a1,152(sp)
    90002ce0:	f12a                	sd	a0,160(sp)
    90002ce2:	0828                	addi	a0,sp,24
    90002ce4:	f52a                	sd	a0,168(sp)

0000000090002ce6 <.LBB228_55>:
    90002ce6:	00001517          	auipc	a0,0x1
    90002cea:	da050513          	addi	a0,a0,-608 # 90003a86 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0ab56ae6638005b3E>
    90002cee:	f92a                	sd	a0,176(sp)
    90002cf0:	102c                	addi	a1,sp,40
    90002cf2:	fd2e                	sd	a1,184(sp)
    90002cf4:	e1aa                	sd	a0,192(sp)

0000000090002cf6 <.LBB228_56>:
    90002cf6:	00006517          	auipc	a0,0x6
    90002cfa:	31250513          	addi	a0,a0,786 # 90009008 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.317>
    90002cfe:	ecaa                	sd	a0,88(sp)
    90002d00:	4511                	li	a0,4
    90002d02:	aa75                	j	90002ebe <.LBB228_62+0xc>
    90002d04:	00163813          	seqz	a6,a2
    90002d08:	00c5c7b3          	xor	a5,a1,a2
    90002d0c:	0017b793          	seqz	a5,a5
    90002d10:	00f867b3          	or	a5,a6,a5
    90002d14:	c399                	beqz	a5,90002d1a <.LBB228_56+0x24>
    90002d16:	8636                	mv	a2,a3
    90002d18:	a819                	j	90002d2e <.LBB228_56+0x38>
    90002d1a:	00b67a63          	bgeu	a2,a1,90002d2e <.LBB228_56+0x38>
    90002d1e:	00c507b3          	add	a5,a0,a2
    90002d22:	00078803          	lb	a6,0(a5)
    90002d26:	fc000793          	li	a5,-64
    90002d2a:	fef856e3          	bge	a6,a5,90002d16 <.LBB228_56+0x20>
    90002d2e:	00163693          	seqz	a3,a2
    90002d32:	00b647b3          	xor	a5,a2,a1
    90002d36:	0017b793          	seqz	a5,a5
    90002d3a:	8edd                	or	a3,a3,a5
    90002d3c:	fc32                	sd	a2,56(sp)
    90002d3e:	ca81                	beqz	a3,90002d4e <.LBB228_56+0x58>
    90002d40:	87b2                	mv	a5,a2
    90002d42:	04410313          	addi	t1,sp,68
    90002d46:	863e                	mv	a2,a5
    90002d48:	02b60f63          	beq	a2,a1,90002d86 <.LBB228_57>
    90002d4c:	a8a9                	j	90002da6 <.LBB228_57+0x20>
    90002d4e:	00158893          	addi	a7,a1,1
    90002d52:	fc000813          	li	a6,-64
    90002d56:	00b67863          	bgeu	a2,a1,90002d66 <.LBB228_56+0x70>
    90002d5a:	00c507b3          	add	a5,a0,a2
    90002d5e:	00078783          	lb	a5,0(a5)
    90002d62:	0307de63          	bge	a5,a6,90002d9e <.LBB228_57+0x18>
    90002d66:	fff60793          	addi	a5,a2,-1
    90002d6a:	0017b693          	seqz	a3,a5
    90002d6e:	00c8c633          	xor	a2,a7,a2
    90002d72:	00163613          	seqz	a2,a2
    90002d76:	8ed1                	or	a3,a3,a2
    90002d78:	863e                	mv	a2,a5
    90002d7a:	def1                	beqz	a3,90002d56 <.LBB228_56+0x60>
    90002d7c:	04410313          	addi	t1,sp,68
    90002d80:	863e                	mv	a2,a5
    90002d82:	02b61263          	bne	a2,a1,90002da6 <.LBB228_57+0x20>

0000000090002d86 <.LBB228_57>:
    90002d86:	00006517          	auipc	a0,0x6
    90002d8a:	d9b50513          	addi	a0,a0,-613 # 90008b21 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.175>
    90002d8e:	02b00593          	li	a1,43
    90002d92:	863a                	mv	a2,a4
    90002d94:	fffff097          	auipc	ra,0xfffff
    90002d98:	956080e7          	jalr	-1706(ra) # 900016ea <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
    90002d9c:	0000                	unimp
    90002d9e:	04410313          	addi	t1,sp,68
    90002da2:	feb602e3          	beq	a2,a1,90002d86 <.LBB228_57>
    90002da6:	00c506b3          	add	a3,a0,a2
    90002daa:	00068783          	lb	a5,0(a3)
    90002dae:	0ff7f393          	andi	t2,a5,255
    90002db2:	0007c663          	bltz	a5,90002dbe <.LBB228_57+0x38>
    90002db6:	c29e                	sw	t2,68(sp)
    90002db8:	00a8                	addi	a0,sp,72
    90002dba:	4785                	li	a5,1
    90002dbc:	a855                	j	90002e70 <.LBB228_57+0xea>
    90002dbe:	952e                	add	a0,a0,a1
    90002dc0:	00168593          	addi	a1,a3,1
    90002dc4:	00a59f63          	bne	a1,a0,90002de2 <.LBB228_57+0x5c>
    90002dc8:	4881                	li	a7,0
    90002dca:	85aa                	mv	a1,a0
    90002dcc:	0e000693          	li	a3,224
    90002dd0:	01f3f813          	andi	a6,t2,31
    90002dd4:	02d3f363          	bgeu	t2,a3,90002dfa <.LBB228_57+0x74>
    90002dd8:	00681513          	slli	a0,a6,0x6
    90002ddc:	011565b3          	or	a1,a0,a7
    90002de0:	a0bd                	j	90002e4e <.LBB228_57+0xc8>
    90002de2:	0016c783          	lbu	a5,1(a3)
    90002de6:	00268593          	addi	a1,a3,2
    90002dea:	03f7f893          	andi	a7,a5,63
    90002dee:	0e000693          	li	a3,224
    90002df2:	01f3f813          	andi	a6,t2,31
    90002df6:	fed3e1e3          	bltu	t2,a3,90002dd8 <.LBB228_57+0x52>
    90002dfa:	00a59563          	bne	a1,a0,90002e04 <.LBB228_57+0x7e>
    90002dfe:	4581                	li	a1,0
    90002e00:	82aa                	mv	t0,a0
    90002e02:	a039                	j	90002e10 <.LBB228_57+0x8a>
    90002e04:	0005c683          	lbu	a3,0(a1)
    90002e08:	00158293          	addi	t0,a1,1
    90002e0c:	03f6f593          	andi	a1,a3,63
    90002e10:	00689693          	slli	a3,a7,0x6
    90002e14:	0f000793          	li	a5,240
    90002e18:	8dd5                	or	a1,a1,a3
    90002e1a:	00f3e663          	bltu	t2,a5,90002e26 <.LBB228_57+0xa0>
    90002e1e:	00a29863          	bne	t0,a0,90002e2e <.LBB228_57+0xa8>
    90002e22:	4501                	li	a0,0
    90002e24:	a809                	j	90002e36 <.LBB228_57+0xb0>
    90002e26:	00c81513          	slli	a0,a6,0xc
    90002e2a:	8dc9                	or	a1,a1,a0
    90002e2c:	a00d                	j	90002e4e <.LBB228_57+0xc8>
    90002e2e:	0002c503          	lbu	a0,0(t0) # 110000 <.Lline_table_start0+0xf3156>
    90002e32:	03f57513          	andi	a0,a0,63
    90002e36:	01281693          	slli	a3,a6,0x12
    90002e3a:	001c07b7          	lui	a5,0x1c0
    90002e3e:	8efd                	and	a3,a3,a5
    90002e40:	059a                	slli	a1,a1,0x6
    90002e42:	8dd5                	or	a1,a1,a3
    90002e44:	8dc9                	or	a1,a1,a0
    90002e46:	00110537          	lui	a0,0x110
    90002e4a:	f2a58ee3          	beq	a1,a0,90002d86 <.LBB228_57>
    90002e4e:	c2ae                	sw	a1,68(sp)
    90002e50:	00a8                	addi	a0,sp,72
    90002e52:	08000693          	li	a3,128
    90002e56:	4785                	li	a5,1
    90002e58:	00d5ec63          	bltu	a1,a3,90002e70 <.LBB228_57+0xea>
    90002e5c:	00b5d693          	srli	a3,a1,0xb
    90002e60:	4789                	li	a5,2
    90002e62:	c699                	beqz	a3,90002e70 <.LBB228_57+0xea>
    90002e64:	81c1                	srli	a1,a1,0x10
    90002e66:	0015b593          	seqz	a1,a1
    90002e6a:	4691                	li	a3,4
    90002e6c:	40b687b3          	sub	a5,a3,a1
    90002e70:	00c785b3          	add	a1,a5,a2
    90002e74:	e4b2                	sd	a2,72(sp)
    90002e76:	e8ae                	sd	a1,80(sp)
    90002e78:	182c                	addi	a1,sp,56
    90002e7a:	e52e                	sd	a1,136(sp)

0000000090002e7c <.LBB228_58>:
    90002e7c:	00000597          	auipc	a1,0x0
    90002e80:	7d058593          	addi	a1,a1,2000 # 9000364c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    90002e84:	e92e                	sd	a1,144(sp)
    90002e86:	ed1a                	sd	t1,152(sp)

0000000090002e88 <.LBB228_59>:
    90002e88:	fffff597          	auipc	a1,0xfffff
    90002e8c:	6ae58593          	addi	a1,a1,1710 # 90002536 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E>
    90002e90:	f12e                	sd	a1,160(sp)
    90002e92:	f52a                	sd	a0,168(sp)

0000000090002e94 <.LBB228_60>:
    90002e94:	ffffe517          	auipc	a0,0xffffe
    90002e98:	75250513          	addi	a0,a0,1874 # 900015e6 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h0c19ef341f8f601cE>
    90002e9c:	f92a                	sd	a0,176(sp)
    90002e9e:	0828                	addi	a0,sp,24
    90002ea0:	fd2a                	sd	a0,184(sp)

0000000090002ea2 <.LBB228_61>:
    90002ea2:	00001517          	auipc	a0,0x1
    90002ea6:	be450513          	addi	a0,a0,-1052 # 90003a86 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0ab56ae6638005b3E>
    90002eaa:	e1aa                	sd	a0,192(sp)
    90002eac:	102c                	addi	a1,sp,40
    90002eae:	e5ae                	sd	a1,200(sp)
    90002eb0:	e9aa                	sd	a0,208(sp)

0000000090002eb2 <.LBB228_62>:
    90002eb2:	00006517          	auipc	a0,0x6
    90002eb6:	1c650513          	addi	a0,a0,454 # 90009078 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.321>
    90002eba:	ecaa                	sd	a0,88(sp)
    90002ebc:	4515                	li	a0,5
    90002ebe:	f0aa                	sd	a0,96(sp)
    90002ec0:	f482                	sd	zero,104(sp)
    90002ec2:	012c                	addi	a1,sp,136
    90002ec4:	fcae                	sd	a1,120(sp)
    90002ec6:	e12a                	sd	a0,128(sp)
    90002ec8:	08a8                	addi	a0,sp,88
    90002eca:	85ba                	mv	a1,a4
    90002ecc:	fffff097          	auipc	ra,0xfffff
    90002ed0:	88a080e7          	jalr	-1910(ra) # 90001756 <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>
	...

0000000090002ed6 <_ZN4core7unicode9printable12is_printable17hd298c127375d0caaE>:
    90002ed6:	1141                	addi	sp,sp,-16
    90002ed8:	e406                	sd	ra,8(sp)
    90002eda:	0105559b          	srliw	a1,a0,0x10
    90002ede:	e1f1                	bnez	a1,90002fa2 <.LBB244_43+0x4c>
    90002ee0:	4581                	li	a1,0
    90002ee2:	6641                	lui	a2,0x10
    90002ee4:	f006061b          	addiw	a2,a2,-256
    90002ee8:	8e69                	and	a2,a2,a0
    90002eea:	00865313          	srli	t1,a2,0x8

0000000090002eee <.LBB244_41>:
    90002eee:	00006717          	auipc	a4,0x6
    90002ef2:	23270713          	addi	a4,a4,562 # 90009120 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.344>
    90002ef6:	12300813          	li	a6,291

0000000090002efa <.LBB244_42>:
    90002efa:	00006897          	auipc	a7,0x6
    90002efe:	27888893          	addi	a7,a7,632 # 90009172 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.345>
    90002f02:	05270293          	addi	t0,a4,82
    90002f06:	0ff57793          	andi	a5,a0,255
    90002f0a:	a811                	j	90002f1e <.LBB244_42+0x24>
    90002f0c:	00d335b3          	sltu	a1,t1,a3
    90002f10:	00574633          	xor	a2,a4,t0
    90002f14:	00163613          	seqz	a2,a2
    90002f18:	8e4d                	or	a2,a2,a1
    90002f1a:	859e                	mv	a1,t2
    90002f1c:	ea15                	bnez	a2,90002f50 <.LBB244_42+0x56>
    90002f1e:	00074683          	lbu	a3,0(a4)
    90002f22:	00174603          	lbu	a2,1(a4)
    90002f26:	0709                	addi	a4,a4,2
    90002f28:	00c583b3          	add	t2,a1,a2
    90002f2c:	fe6690e3          	bne	a3,t1,90002f0c <.LBB244_42+0x12>
    90002f30:	1eb3e063          	bltu	t2,a1,90003110 <.LBB244_47>
    90002f34:	1f03f963          	bgeu	t2,a6,90003126 <.LBB244_48>
    90002f38:	95c6                	add	a1,a1,a7
    90002f3a:	ca01                	beqz	a2,90002f4a <.LBB244_42+0x50>
    90002f3c:	0005c683          	lbu	a3,0(a1)
    90002f40:	0585                	addi	a1,a1,1
    90002f42:	167d                	addi	a2,a2,-1
    90002f44:	fef69be3          	bne	a3,a5,90002f3a <.LBB244_42+0x40>
    90002f48:	a26d                	j	900030f2 <.LBB244_46+0xd4>
    90002f4a:	859e                	mv	a1,t2
    90002f4c:	fc5719e3          	bne	a4,t0,90002f1e <.LBB244_42+0x24>
    90002f50:	65c1                	lui	a1,0x10
    90002f52:	35fd                	addiw	a1,a1,-1
    90002f54:	8de9                	and	a1,a1,a0

0000000090002f56 <.LBB244_43>:
    90002f56:	00006717          	auipc	a4,0x6
    90002f5a:	33e70713          	addi	a4,a4,830 # 90009294 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.346>
    90002f5e:	4505                	li	a0,1
    90002f60:	587d                	li	a6,-1
    90002f62:	13570693          	addi	a3,a4,309
    90002f66:	00070783          	lb	a5,0(a4)
    90002f6a:	00170613          	addi	a2,a4,1
    90002f6e:	00f85963          	bge	a6,a5,90002f80 <.LBB244_43+0x2a>
    90002f72:	0ff7f793          	andi	a5,a5,255
    90002f76:	8732                	mv	a4,a2
    90002f78:	9d9d                	subw	a1,a1,a5
    90002f7a:	0005df63          	bgez	a1,90002f98 <.LBB244_43+0x42>
    90002f7e:	aa9d                	j	900030f4 <.LBB244_46+0xd6>
    90002f80:	1cd60663          	beq	a2,a3,9000314c <.LBB244_50>
    90002f84:	00174603          	lbu	a2,1(a4)
    90002f88:	07f7f793          	andi	a5,a5,127
    90002f8c:	07a2                	slli	a5,a5,0x8
    90002f8e:	0709                	addi	a4,a4,2
    90002f90:	8fd1                	or	a5,a5,a2
    90002f92:	9d9d                	subw	a1,a1,a5
    90002f94:	1605c063          	bltz	a1,900030f4 <.LBB244_46+0xd6>
    90002f98:	00154513          	xori	a0,a0,1
    90002f9c:	fcd715e3          	bne	a4,a3,90002f66 <.LBB244_43+0x10>
    90002fa0:	aa91                	j	900030f4 <.LBB244_46+0xd6>
    90002fa2:	0115559b          	srliw	a1,a0,0x11
    90002fa6:	e1f1                	bnez	a1,9000306a <.LBB244_46+0x4c>
    90002fa8:	4581                	li	a1,0
    90002faa:	6641                	lui	a2,0x10
    90002fac:	f006061b          	addiw	a2,a2,-256
    90002fb0:	8e69                	and	a2,a2,a0
    90002fb2:	00865313          	srli	t1,a2,0x8

0000000090002fb6 <.LBB244_44>:
    90002fb6:	00006717          	auipc	a4,0x6
    90002fba:	41370713          	addi	a4,a4,1043 # 900093c9 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.347>
    90002fbe:	0b000813          	li	a6,176

0000000090002fc2 <.LBB244_45>:
    90002fc2:	00006897          	auipc	a7,0x6
    90002fc6:	45388893          	addi	a7,a7,1107 # 90009415 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.348>
    90002fca:	04c70293          	addi	t0,a4,76
    90002fce:	0ff57793          	andi	a5,a0,255
    90002fd2:	a811                	j	90002fe6 <.LBB244_45+0x24>
    90002fd4:	00d335b3          	sltu	a1,t1,a3
    90002fd8:	00574633          	xor	a2,a4,t0
    90002fdc:	00163613          	seqz	a2,a2
    90002fe0:	8e4d                	or	a2,a2,a1
    90002fe2:	859e                	mv	a1,t2
    90002fe4:	ea15                	bnez	a2,90003018 <.LBB244_45+0x56>
    90002fe6:	00074683          	lbu	a3,0(a4)
    90002fea:	00174603          	lbu	a2,1(a4)
    90002fee:	0709                	addi	a4,a4,2
    90002ff0:	00c583b3          	add	t2,a1,a2
    90002ff4:	fe6690e3          	bne	a3,t1,90002fd4 <.LBB244_45+0x12>
    90002ff8:	10b3ec63          	bltu	t2,a1,90003110 <.LBB244_47>
    90002ffc:	1303fc63          	bgeu	t2,a6,90003134 <.LBB244_49>
    90003000:	95c6                	add	a1,a1,a7
    90003002:	ca01                	beqz	a2,90003012 <.LBB244_45+0x50>
    90003004:	0005c683          	lbu	a3,0(a1) # 10000 <n+0xffe0>
    90003008:	0585                	addi	a1,a1,1
    9000300a:	167d                	addi	a2,a2,-1
    9000300c:	fef69be3          	bne	a3,a5,90003002 <.LBB244_45+0x40>
    90003010:	a0cd                	j	900030f2 <.LBB244_46+0xd4>
    90003012:	859e                	mv	a1,t2
    90003014:	fc5719e3          	bne	a4,t0,90002fe6 <.LBB244_45+0x24>
    90003018:	65c1                	lui	a1,0x10
    9000301a:	35fd                	addiw	a1,a1,-1
    9000301c:	8de9                	and	a1,a1,a0

000000009000301e <.LBB244_46>:
    9000301e:	00006717          	auipc	a4,0x6
    90003022:	4a670713          	addi	a4,a4,1190 # 900094c4 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.349>
    90003026:	4505                	li	a0,1
    90003028:	587d                	li	a6,-1
    9000302a:	1a370693          	addi	a3,a4,419
    9000302e:	00070783          	lb	a5,0(a4)
    90003032:	00170613          	addi	a2,a4,1
    90003036:	00f85963          	bge	a6,a5,90003048 <.LBB244_46+0x2a>
    9000303a:	0ff7f793          	andi	a5,a5,255
    9000303e:	8732                	mv	a4,a2
    90003040:	9d9d                	subw	a1,a1,a5
    90003042:	0005df63          	bgez	a1,90003060 <.LBB244_46+0x42>
    90003046:	a07d                	j	900030f4 <.LBB244_46+0xd6>
    90003048:	10d60263          	beq	a2,a3,9000314c <.LBB244_50>
    9000304c:	00174603          	lbu	a2,1(a4)
    90003050:	07f7f793          	andi	a5,a5,127
    90003054:	07a2                	slli	a5,a5,0x8
    90003056:	0709                	addi	a4,a4,2
    90003058:	8fd1                	or	a5,a5,a2
    9000305a:	9d9d                	subw	a1,a1,a5
    9000305c:	0805cc63          	bltz	a1,900030f4 <.LBB244_46+0xd6>
    90003060:	00154513          	xori	a0,a0,1
    90003064:	fcd715e3          	bne	a4,a3,9000302e <.LBB244_46+0x10>
    90003068:	a071                	j	900030f4 <.LBB244_46+0xd6>
    9000306a:	fffd65b7          	lui	a1,0xfffd6
    9000306e:	9225859b          	addiw	a1,a1,-1758
    90003072:	9da9                	addw	a1,a1,a0
    90003074:	0225b593          	sltiu	a1,a1,34
    90003078:	fffd5637          	lui	a2,0xfffd5
    9000307c:	8cb6061b          	addiw	a2,a2,-1845
    90003080:	9e29                	addw	a2,a2,a0
    90003082:	00b63613          	sltiu	a2,a2,11
    90003086:	8dd1                	or	a1,a1,a2
    90003088:	00200637          	lui	a2,0x200
    9000308c:	3679                	addiw	a2,a2,-2
    9000308e:	8e69                	and	a2,a2,a0
    90003090:	0002c6b7          	lui	a3,0x2c
    90003094:	81e6869b          	addiw	a3,a3,-2018
    90003098:	8e35                	xor	a2,a2,a3
    9000309a:	00163613          	seqz	a2,a2
    9000309e:	8dd1                	or	a1,a1,a2
    900030a0:	fffd3637          	lui	a2,0xfffd3
    900030a4:	15e6061b          	addiw	a2,a2,350
    900030a8:	9e29                	addw	a2,a2,a0
    900030aa:	00e63613          	sltiu	a2,a2,14
    900030ae:	8dd1                	or	a1,a1,a2
    900030b0:	fffd1637          	lui	a2,0xfffd1
    900030b4:	41f6061b          	addiw	a2,a2,1055
    900030b8:	9e29                	addw	a2,a2,a0
    900030ba:	6685                	lui	a3,0x1
    900030bc:	c1f6869b          	addiw	a3,a3,-993
    900030c0:	00d63633          	sltu	a2,a2,a3
    900030c4:	8dd1                	or	a1,a1,a2
    900030c6:	fffd0637          	lui	a2,0xfffd0
    900030ca:	5e26061b          	addiw	a2,a2,1506
    900030ce:	9e29                	addw	a2,a2,a0
    900030d0:	5e263613          	sltiu	a2,a2,1506
    900030d4:	8dd1                	or	a1,a1,a2
    900030d6:	fffcf637          	lui	a2,0xfffcf
    900030da:	cb56061b          	addiw	a2,a2,-843
    900030de:	9e29                	addw	a2,a2,a0
    900030e0:	000af6b7          	lui	a3,0xaf
    900030e4:	db56869b          	addiw	a3,a3,-587
    900030e8:	00d63633          	sltu	a2,a2,a3
    900030ec:	8dd1                	or	a1,a1,a2
    900030ee:	8985                	andi	a1,a1,1
    900030f0:	c591                	beqz	a1,900030fc <.LBB244_46+0xde>
    900030f2:	4501                	li	a0,0
    900030f4:	8905                	andi	a0,a0,1
    900030f6:	60a2                	ld	ra,8(sp)
    900030f8:	0141                	addi	sp,sp,16
    900030fa:	8082                	ret
    900030fc:	2501                	sext.w	a0,a0
    900030fe:	000e05b7          	lui	a1,0xe0
    90003102:	1f05859b          	addiw	a1,a1,496
    90003106:	00b53533          	sltu	a0,a0,a1
    9000310a:	60a2                	ld	ra,8(sp)
    9000310c:	0141                	addi	sp,sp,16
    9000310e:	8082                	ret

0000000090003110 <.LBB244_47>:
    90003110:	00006617          	auipc	a2,0x6
    90003114:	fe060613          	addi	a2,a2,-32 # 900090f0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.342>
    90003118:	852e                	mv	a0,a1
    9000311a:	859e                	mv	a1,t2
    9000311c:	00000097          	auipc	ra,0x0
    90003120:	816080e7          	jalr	-2026(ra) # 90002932 <_ZN4core5slice5index22slice_index_order_fail17h17f07731262cfc7fE>
	...

0000000090003126 <.LBB244_48>:
    90003126:	00006617          	auipc	a2,0x6
    9000312a:	fca60613          	addi	a2,a2,-54 # 900090f0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.342>
    9000312e:	12200593          	li	a1,290
    90003132:	a039                	j	90003140 <.LBB244_49+0xc>

0000000090003134 <.LBB244_49>:
    90003134:	00006617          	auipc	a2,0x6
    90003138:	fbc60613          	addi	a2,a2,-68 # 900090f0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.342>
    9000313c:	0af00593          	li	a1,175
    90003140:	851e                	mv	a0,t2
    90003142:	fffff097          	auipc	ra,0xfffff
    90003146:	7b0080e7          	jalr	1968(ra) # 900028f2 <_ZN4core5slice5index24slice_end_index_len_fail17h397499141087200aE>
	...

000000009000314c <.LBB244_50>:
    9000314c:	00006517          	auipc	a0,0x6
    90003150:	9d550513          	addi	a0,a0,-1579 # 90008b21 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.175>

0000000090003154 <.LBB244_51>:
    90003154:	00006617          	auipc	a2,0x6
    90003158:	fb460613          	addi	a2,a2,-76 # 90009108 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.343>
    9000315c:	02b00593          	li	a1,43
    90003160:	ffffe097          	auipc	ra,0xffffe
    90003164:	58a080e7          	jalr	1418(ra) # 900016ea <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
	...

000000009000316a <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E>:
    9000316a:	7175                	addi	sp,sp,-144
    9000316c:	e506                	sd	ra,136(sp)
    9000316e:	6114                	ld	a3,0(a0)
    90003170:	852e                	mv	a0,a1
    90003172:	4581                	li	a1,0
    90003174:	00810813          	addi	a6,sp,8
    90003178:	4729                	li	a4,10
    9000317a:	a039                	j	90003188 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E+0x1e>
    9000317c:	05760613          	addi	a2,a2,87
    90003180:	06c78fa3          	sb	a2,127(a5) # 1c007f <.Lline_table_start0+0x1a31d5>
    90003184:	15fd                	addi	a1,a1,-1
    90003186:	ce91                	beqz	a3,900031a2 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E+0x38>
    90003188:	00b807b3          	add	a5,a6,a1
    9000318c:	00f6f613          	andi	a2,a3,15
    90003190:	8291                	srli	a3,a3,0x4
    90003192:	fee675e3          	bgeu	a2,a4,9000317c <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E+0x12>
    90003196:	03066613          	ori	a2,a2,48
    9000319a:	06c78fa3          	sb	a2,127(a5)
    9000319e:	15fd                	addi	a1,a1,-1
    900031a0:	f6e5                	bnez	a3,90003188 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E+0x1e>
    900031a2:	08058693          	addi	a3,a1,128 # e0080 <.Lline_table_start0+0xc31d6>
    900031a6:	08100613          	li	a2,129
    900031aa:	02c6f463          	bgeu	a3,a2,900031d2 <.LBB456_8>
    900031ae:	40b007b3          	neg	a5,a1
    900031b2:	95c2                	add	a1,a1,a6
    900031b4:	08058713          	addi	a4,a1,128

00000000900031b8 <.LBB456_7>:
    900031b8:	00006617          	auipc	a2,0x6
    900031bc:	ae060613          	addi	a2,a2,-1312 # 90008c98 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.224>
    900031c0:	4585                	li	a1,1
    900031c2:	4689                	li	a3,2
    900031c4:	fffff097          	auipc	ra,0xfffff
    900031c8:	dcc080e7          	jalr	-564(ra) # 90001f90 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E>
    900031cc:	60aa                	ld	ra,136(sp)
    900031ce:	6149                	addi	sp,sp,144
    900031d0:	8082                	ret

00000000900031d2 <.LBB456_8>:
    900031d2:	00006617          	auipc	a2,0x6
    900031d6:	aae60613          	addi	a2,a2,-1362 # 90008c80 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.221>
    900031da:	08000593          	li	a1,128
    900031de:	8536                	mv	a0,a3
    900031e0:	fffff097          	auipc	ra,0xfffff
    900031e4:	6d2080e7          	jalr	1746(ra) # 900028b2 <_ZN4core5slice5index26slice_start_index_len_fail17h43348ae2a84bde06E>
	...

00000000900031ea <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE>:
    900031ea:	7175                	addi	sp,sp,-144
    900031ec:	e506                	sd	ra,136(sp)
    900031ee:	882e                	mv	a6,a1
    900031f0:	0305e583          	lwu	a1,48(a1)
    900031f4:	0105f613          	andi	a2,a1,16
    900031f8:	ea19                	bnez	a2,9000320e <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x24>
    900031fa:	0205f593          	andi	a1,a1,32
    900031fe:	e1a9                	bnez	a1,90003240 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x56>
    90003200:	85c2                	mv	a1,a6
    90003202:	60aa                	ld	ra,136(sp)
    90003204:	6149                	addi	sp,sp,144
    90003206:	00000317          	auipc	t1,0x0
    9000320a:	44630067          	jr	1094(t1) # 9000364c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    9000320e:	6108                	ld	a0,0(a0)
    90003210:	4581                	li	a1,0
    90003212:	0030                	addi	a2,sp,8
    90003214:	46a9                	li	a3,10
    90003216:	a039                	j	90003224 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x3a>
    90003218:	05778793          	addi	a5,a5,87
    9000321c:	06f70fa3          	sb	a5,127(a4)
    90003220:	15fd                	addi	a1,a1,-1
    90003222:	c539                	beqz	a0,90003270 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x86>
    90003224:	00b60733          	add	a4,a2,a1
    90003228:	00f57793          	andi	a5,a0,15
    9000322c:	8111                	srli	a0,a0,0x4
    9000322e:	fed7f5e3          	bgeu	a5,a3,90003218 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x2e>
    90003232:	0307e793          	ori	a5,a5,48
    90003236:	06f70fa3          	sb	a5,127(a4)
    9000323a:	15fd                	addi	a1,a1,-1
    9000323c:	f565                	bnez	a0,90003224 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x3a>
    9000323e:	a80d                	j	90003270 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x86>
    90003240:	6108                	ld	a0,0(a0)
    90003242:	4581                	li	a1,0
    90003244:	0030                	addi	a2,sp,8
    90003246:	46a9                	li	a3,10
    90003248:	a039                	j	90003256 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x6c>
    9000324a:	03778793          	addi	a5,a5,55
    9000324e:	06f70fa3          	sb	a5,127(a4)
    90003252:	15fd                	addi	a1,a1,-1
    90003254:	cd11                	beqz	a0,90003270 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x86>
    90003256:	00b60733          	add	a4,a2,a1
    9000325a:	00f57793          	andi	a5,a0,15
    9000325e:	8111                	srli	a0,a0,0x4
    90003260:	fed7f5e3          	bgeu	a5,a3,9000324a <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x60>
    90003264:	0307e793          	ori	a5,a5,48
    90003268:	06f70fa3          	sb	a5,127(a4)
    9000326c:	15fd                	addi	a1,a1,-1
    9000326e:	f565                	bnez	a0,90003256 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x6c>
    90003270:	08058513          	addi	a0,a1,128
    90003274:	08100693          	li	a3,129
    90003278:	02d57663          	bgeu	a0,a3,900032a4 <.LBB462_15>
    9000327c:	40b007b3          	neg	a5,a1
    90003280:	00b60533          	add	a0,a2,a1
    90003284:	08050713          	addi	a4,a0,128

0000000090003288 <.LBB462_14>:
    90003288:	00006617          	auipc	a2,0x6
    9000328c:	a1060613          	addi	a2,a2,-1520 # 90008c98 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.224>
    90003290:	4585                	li	a1,1
    90003292:	4689                	li	a3,2
    90003294:	8542                	mv	a0,a6
    90003296:	fffff097          	auipc	ra,0xfffff
    9000329a:	cfa080e7          	jalr	-774(ra) # 90001f90 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E>
    9000329e:	60aa                	ld	ra,136(sp)
    900032a0:	6149                	addi	sp,sp,144
    900032a2:	8082                	ret

00000000900032a4 <.LBB462_15>:
    900032a4:	00006617          	auipc	a2,0x6
    900032a8:	9dc60613          	addi	a2,a2,-1572 # 90008c80 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.221>
    900032ac:	08000593          	li	a1,128
    900032b0:	fffff097          	auipc	ra,0xfffff
    900032b4:	602080e7          	jalr	1538(ra) # 900028b2 <_ZN4core5slice5index26slice_start_index_len_fail17h43348ae2a84bde06E>
	...

00000000900032ba <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17ha29d76a3c5b8b223E>:
    900032ba:	715d                	addi	sp,sp,-80
    900032bc:	e486                	sd	ra,72(sp)
    900032be:	e0a2                	sd	s0,64(sp)
    900032c0:	fc26                	sd	s1,56(sp)
    900032c2:	f84a                	sd	s2,48(sp)
    900032c4:	f44e                	sd	s3,40(sp)
    900032c6:	00052803          	lw	a6,0(a0)
    900032ca:	852e                	mv	a0,a1
    900032cc:	43f85593          	srai	a1,a6,0x3f
    900032d0:	00b80633          	add	a2,a6,a1
    900032d4:	00b649b3          	xor	s3,a2,a1
    900032d8:	0049d593          	srli	a1,s3,0x4
    900032dc:	02700693          	li	a3,39
    900032e0:	27100613          	li	a2,625

00000000900032e4 <.LBB467_10>:
    900032e4:	00006897          	auipc	a7,0x6
    900032e8:	9b688893          	addi	a7,a7,-1610 # 90008c9a <.Lanon.9d4bfc86079e95d674f3cded52b1db19.225>
    900032ec:	02c5f663          	bgeu	a1,a2,90003318 <.LBB467_10+0x34>
    900032f0:	06300613          	li	a2,99
    900032f4:	55fd                	li	a1,-1
    900032f6:	0f366263          	bltu	a2,s3,900033da <.LBB467_10+0xf6>
    900032fa:	4625                	li	a2,9
    900032fc:	0105a5b3          	slt	a1,a1,a6
    90003300:	13364f63          	blt	a2,s3,9000343e <.LBB467_10+0x15a>
    90003304:	fff68613          	addi	a2,a3,-1 # aefff <.Lline_table_start0+0x92155>
    90003308:	00110693          	addi	a3,sp,1
    9000330c:	96b2                	add	a3,a3,a2
    9000330e:	03098713          	addi	a4,s3,48
    90003312:	00e68023          	sb	a4,0(a3)
    90003316:	a2a9                	j	90003460 <.LBB467_10+0x17c>
    90003318:	4581                	li	a1,0
    9000331a:	001a3637          	lui	a2,0x1a3
    9000331e:	6e36061b          	addiw	a2,a2,1763
    90003322:	063a                	slli	a2,a2,0xe
    90003324:	ac760613          	addi	a2,a2,-1337 # 1a2ac7 <.Lline_table_start0+0x185c1d>
    90003328:	063a                	slli	a2,a2,0xe
    9000332a:	43360613          	addi	a2,a2,1075
    9000332e:	0636                	slli	a2,a2,0xd
    90003330:	94b60293          	addi	t0,a2,-1717
    90003334:	6609                	lui	a2,0x2
    90003336:	7106039b          	addiw	t2,a2,1808
    9000333a:	6641                	lui	a2,0x10
    9000333c:	ffc60e9b          	addiw	t4,a2,-4
    90003340:	0051f6b7          	lui	a3,0x51f
    90003344:	b856869b          	addiw	a3,a3,-1147
    90003348:	06b6                	slli	a3,a3,0xd
    9000334a:	3d768693          	addi	a3,a3,983 # 51f3d7 <.Lline_table_start0+0x50252d>
    9000334e:	06ba                	slli	a3,a3,0xe
    90003350:	28f68693          	addi	a3,a3,655
    90003354:	06b2                	slli	a3,a3,0xc
    90003356:	5c368f13          	addi	t5,a3,1475
    9000335a:	06400313          	li	t1,100
    9000335e:	ffe60f9b          	addiw	t6,a2,-2
    90003362:	00110e13          	addi	t3,sp,1
    90003366:	05f5e6b7          	lui	a3,0x5f5e
    9000336a:	0ff6891b          	addiw	s2,a3,255
    9000336e:	874e                	mv	a4,s3
    90003370:	0259b7b3          	mulhu	a5,s3,t0
    90003374:	00b7d993          	srli	s3,a5,0xb
    90003378:	02798633          	mul	a2,s3,t2
    9000337c:	40c70633          	sub	a2,a4,a2
    90003380:	01d67433          	and	s0,a2,t4
    90003384:	8009                	srli	s0,s0,0x2
    90003386:	03e43433          	mulhu	s0,s0,t5
    9000338a:	8009                	srli	s0,s0,0x2
    9000338c:	00141493          	slli	s1,s0,0x1
    90003390:	02640433          	mul	s0,s0,t1
    90003394:	8e01                	sub	a2,a2,s0
    90003396:	0606                	slli	a2,a2,0x1
    90003398:	01f67633          	and	a2,a2,t6
    9000339c:	01148433          	add	s0,s1,a7
    900033a0:	00be04b3          	add	s1,t3,a1
    900033a4:	00044683          	lbu	a3,0(s0)
    900033a8:	00140403          	lb	s0,1(s0)
    900033ac:	9646                	add	a2,a2,a7
    900033ae:	00160783          	lb	a5,1(a2) # 10001 <n+0xffe1>
    900033b2:	00064603          	lbu	a2,0(a2)
    900033b6:	02848223          	sb	s0,36(s1)
    900033ba:	02d481a3          	sb	a3,35(s1)
    900033be:	02f48323          	sb	a5,38(s1)
    900033c2:	02c482a3          	sb	a2,37(s1)
    900033c6:	15f1                	addi	a1,a1,-4
    900033c8:	fae963e3          	bltu	s2,a4,9000336e <.LBB467_10+0x8a>
    900033cc:	02758693          	addi	a3,a1,39
    900033d0:	06300613          	li	a2,99
    900033d4:	55fd                	li	a1,-1
    900033d6:	f33672e3          	bgeu	a2,s3,900032fa <.LBB467_10+0x16>
    900033da:	6641                	lui	a2,0x10
    900033dc:	ffc6071b          	addiw	a4,a2,-4
    900033e0:	00e9f733          	and	a4,s3,a4
    900033e4:	8309                	srli	a4,a4,0x2
    900033e6:	0051f7b7          	lui	a5,0x51f
    900033ea:	b857879b          	addiw	a5,a5,-1147
    900033ee:	07b6                	slli	a5,a5,0xd
    900033f0:	3d778793          	addi	a5,a5,983 # 51f3d7 <.Lline_table_start0+0x50252d>
    900033f4:	07ba                	slli	a5,a5,0xe
    900033f6:	28f78793          	addi	a5,a5,655
    900033fa:	07b2                	slli	a5,a5,0xc
    900033fc:	5c378793          	addi	a5,a5,1475
    90003400:	02f73733          	mulhu	a4,a4,a5
    90003404:	8309                	srli	a4,a4,0x2
    90003406:	06400793          	li	a5,100
    9000340a:	02f707b3          	mul	a5,a4,a5
    9000340e:	40f987b3          	sub	a5,s3,a5
    90003412:	0786                	slli	a5,a5,0x1
    90003414:	3679                	addiw	a2,a2,-2
    90003416:	8e7d                	and	a2,a2,a5
    90003418:	16f9                	addi	a3,a3,-2
    9000341a:	9646                	add	a2,a2,a7
    9000341c:	00160783          	lb	a5,1(a2) # 10001 <n+0xffe1>
    90003420:	00064603          	lbu	a2,0(a2)
    90003424:	00110493          	addi	s1,sp,1
    90003428:	94b6                	add	s1,s1,a3
    9000342a:	00f480a3          	sb	a5,1(s1)
    9000342e:	00c48023          	sb	a2,0(s1)
    90003432:	89ba                	mv	s3,a4
    90003434:	4625                	li	a2,9
    90003436:	0105a5b3          	slt	a1,a1,a6
    9000343a:	ed3655e3          	bge	a2,s3,90003304 <.LBB467_10+0x20>
    9000343e:	00199713          	slli	a4,s3,0x1
    90003442:	ffe68613          	addi	a2,a3,-2 # 5f5dffe <.Lline_table_start0+0x5f41154>
    90003446:	011706b3          	add	a3,a4,a7
    9000344a:	00168703          	lb	a4,1(a3)
    9000344e:	0006c683          	lbu	a3,0(a3)
    90003452:	00110793          	addi	a5,sp,1
    90003456:	97b2                	add	a5,a5,a2
    90003458:	00e780a3          	sb	a4,1(a5)
    9000345c:	00d78023          	sb	a3,0(a5)
    90003460:	00110693          	addi	a3,sp,1
    90003464:	00c68733          	add	a4,a3,a2
    90003468:	02700693          	li	a3,39
    9000346c:	40c687b3          	sub	a5,a3,a2

0000000090003470 <.LBB467_11>:
    90003470:	00005617          	auipc	a2,0x5
    90003474:	67060613          	addi	a2,a2,1648 # 90008ae0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.33>
    90003478:	4681                	li	a3,0
    9000347a:	fffff097          	auipc	ra,0xfffff
    9000347e:	b16080e7          	jalr	-1258(ra) # 90001f90 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E>
    90003482:	79a2                	ld	s3,40(sp)
    90003484:	7942                	ld	s2,48(sp)
    90003486:	74e2                	ld	s1,56(sp)
    90003488:	6406                	ld	s0,64(sp)
    9000348a:	60a6                	ld	ra,72(sp)
    9000348c:	6161                	addi	sp,sp,80
    9000348e:	8082                	ret

0000000090003490 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h4f29d8511ba5e68eE>:
    90003490:	715d                	addi	sp,sp,-80
    90003492:	e486                	sd	ra,72(sp)
    90003494:	e0a2                	sd	s0,64(sp)
    90003496:	fc26                	sd	s1,56(sp)
    90003498:	f84a                	sd	s2,48(sp)
    9000349a:	00056903          	lwu	s2,0(a0)
    9000349e:	852e                	mv	a0,a1
    900034a0:	00495593          	srli	a1,s2,0x4
    900034a4:	02700693          	li	a3,39
    900034a8:	27100713          	li	a4,625

00000000900034ac <.LBB468_10>:
    900034ac:	00005817          	auipc	a6,0x5
    900034b0:	7ee80813          	addi	a6,a6,2030 # 90008c9a <.Lanon.9d4bfc86079e95d674f3cded52b1db19.225>
    900034b4:	02e5f363          	bgeu	a1,a4,900034da <.LBB468_10+0x2e>
    900034b8:	06300593          	li	a1,99
    900034bc:	0f25e063          	bltu	a1,s2,9000359c <.LBB468_10+0xf0>
    900034c0:	45a5                	li	a1,9
    900034c2:	1325cd63          	blt	a1,s2,900035fc <.LBB468_10+0x150>
    900034c6:	fff68593          	addi	a1,a3,-1
    900034ca:	00910613          	addi	a2,sp,9
    900034ce:	962e                	add	a2,a2,a1
    900034d0:	03090693          	addi	a3,s2,48
    900034d4:	00d60023          	sb	a3,0(a2)
    900034d8:	a291                	j	9000361c <.LBB468_10+0x170>
    900034da:	4681                	li	a3,0
    900034dc:	001a35b7          	lui	a1,0x1a3
    900034e0:	6e35859b          	addiw	a1,a1,1763
    900034e4:	05ba                	slli	a1,a1,0xe
    900034e6:	ac758593          	addi	a1,a1,-1337 # 1a2ac7 <.Lline_table_start0+0x185c1d>
    900034ea:	05ba                	slli	a1,a1,0xe
    900034ec:	43358593          	addi	a1,a1,1075
    900034f0:	05b6                	slli	a1,a1,0xd
    900034f2:	94b58893          	addi	a7,a1,-1717
    900034f6:	6589                	lui	a1,0x2
    900034f8:	7105831b          	addiw	t1,a1,1808
    900034fc:	65c1                	lui	a1,0x10
    900034fe:	ffc58e1b          	addiw	t3,a1,-4
    90003502:	0051f737          	lui	a4,0x51f
    90003506:	b857071b          	addiw	a4,a4,-1147
    9000350a:	0736                	slli	a4,a4,0xd
    9000350c:	3d770713          	addi	a4,a4,983 # 51f3d7 <.Lline_table_start0+0x50252d>
    90003510:	073a                	slli	a4,a4,0xe
    90003512:	28f70713          	addi	a4,a4,655
    90003516:	0732                	slli	a4,a4,0xc
    90003518:	5c370e93          	addi	t4,a4,1475
    9000351c:	06400293          	li	t0,100
    90003520:	ffe58f1b          	addiw	t5,a1,-2
    90003524:	00910393          	addi	t2,sp,9
    90003528:	05f5e5b7          	lui	a1,0x5f5e
    9000352c:	0ff58f9b          	addiw	t6,a1,255
    90003530:	864a                	mv	a2,s2
    90003532:	031937b3          	mulhu	a5,s2,a7
    90003536:	00b7d913          	srli	s2,a5,0xb
    9000353a:	02690733          	mul	a4,s2,t1
    9000353e:	40e60733          	sub	a4,a2,a4
    90003542:	01c775b3          	and	a1,a4,t3
    90003546:	8189                	srli	a1,a1,0x2
    90003548:	03d5b5b3          	mulhu	a1,a1,t4
    9000354c:	8189                	srli	a1,a1,0x2
    9000354e:	00159413          	slli	s0,a1,0x1
    90003552:	025585b3          	mul	a1,a1,t0
    90003556:	40b705b3          	sub	a1,a4,a1
    9000355a:	0586                	slli	a1,a1,0x1
    9000355c:	01e5f5b3          	and	a1,a1,t5
    90003560:	01040733          	add	a4,s0,a6
    90003564:	00d38433          	add	s0,t2,a3
    90003568:	00074483          	lbu	s1,0(a4)
    9000356c:	00170703          	lb	a4,1(a4)
    90003570:	95c2                	add	a1,a1,a6
    90003572:	00158783          	lb	a5,1(a1) # 5f5e001 <.Lline_table_start0+0x5f41157>
    90003576:	0005c583          	lbu	a1,0(a1)
    9000357a:	02e40223          	sb	a4,36(s0)
    9000357e:	029401a3          	sb	s1,35(s0)
    90003582:	02f40323          	sb	a5,38(s0)
    90003586:	02b402a3          	sb	a1,37(s0)
    9000358a:	16f1                	addi	a3,a3,-4
    9000358c:	facfe2e3          	bltu	t6,a2,90003530 <.LBB468_10+0x84>
    90003590:	02768693          	addi	a3,a3,39
    90003594:	06300593          	li	a1,99
    90003598:	f325f4e3          	bgeu	a1,s2,900034c0 <.LBB468_10+0x14>
    9000359c:	65c1                	lui	a1,0x10
    9000359e:	ffc5861b          	addiw	a2,a1,-4
    900035a2:	00c97633          	and	a2,s2,a2
    900035a6:	8209                	srli	a2,a2,0x2
    900035a8:	0051f737          	lui	a4,0x51f
    900035ac:	b857071b          	addiw	a4,a4,-1147
    900035b0:	0736                	slli	a4,a4,0xd
    900035b2:	3d770713          	addi	a4,a4,983 # 51f3d7 <.Lline_table_start0+0x50252d>
    900035b6:	073a                	slli	a4,a4,0xe
    900035b8:	28f70713          	addi	a4,a4,655
    900035bc:	0732                	slli	a4,a4,0xc
    900035be:	5c370713          	addi	a4,a4,1475
    900035c2:	02e63633          	mulhu	a2,a2,a4
    900035c6:	8209                	srli	a2,a2,0x2
    900035c8:	06400713          	li	a4,100
    900035cc:	02e60733          	mul	a4,a2,a4
    900035d0:	40e90733          	sub	a4,s2,a4
    900035d4:	0706                	slli	a4,a4,0x1
    900035d6:	35f9                	addiw	a1,a1,-2
    900035d8:	8df9                	and	a1,a1,a4
    900035da:	16f9                	addi	a3,a3,-2
    900035dc:	95c2                	add	a1,a1,a6
    900035de:	00158703          	lb	a4,1(a1) # 10001 <n+0xffe1>
    900035e2:	0005c583          	lbu	a1,0(a1)
    900035e6:	00910793          	addi	a5,sp,9
    900035ea:	97b6                	add	a5,a5,a3
    900035ec:	00e780a3          	sb	a4,1(a5)
    900035f0:	00b78023          	sb	a1,0(a5)
    900035f4:	8932                	mv	s2,a2
    900035f6:	45a5                	li	a1,9
    900035f8:	ed25d7e3          	bge	a1,s2,900034c6 <.LBB468_10+0x1a>
    900035fc:	00191613          	slli	a2,s2,0x1
    90003600:	ffe68593          	addi	a1,a3,-2
    90003604:	9642                	add	a2,a2,a6
    90003606:	00160683          	lb	a3,1(a2)
    9000360a:	00064603          	lbu	a2,0(a2)
    9000360e:	00910713          	addi	a4,sp,9
    90003612:	972e                	add	a4,a4,a1
    90003614:	00d700a3          	sb	a3,1(a4)
    90003618:	00c70023          	sb	a2,0(a4)
    9000361c:	00910613          	addi	a2,sp,9
    90003620:	00b60733          	add	a4,a2,a1
    90003624:	02700613          	li	a2,39
    90003628:	40b607b3          	sub	a5,a2,a1

000000009000362c <.LBB468_11>:
    9000362c:	00005617          	auipc	a2,0x5
    90003630:	4b460613          	addi	a2,a2,1204 # 90008ae0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.33>
    90003634:	4585                	li	a1,1
    90003636:	4681                	li	a3,0
    90003638:	fffff097          	auipc	ra,0xfffff
    9000363c:	958080e7          	jalr	-1704(ra) # 90001f90 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E>
    90003640:	7942                	ld	s2,48(sp)
    90003642:	74e2                	ld	s1,56(sp)
    90003644:	6406                	ld	s0,64(sp)
    90003646:	60a6                	ld	ra,72(sp)
    90003648:	6161                	addi	sp,sp,80
    9000364a:	8082                	ret

000000009000364c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>:
    9000364c:	715d                	addi	sp,sp,-80
    9000364e:	e486                	sd	ra,72(sp)
    90003650:	e0a2                	sd	s0,64(sp)
    90003652:	fc26                	sd	s1,56(sp)
    90003654:	f84a                	sd	s2,48(sp)
    90003656:	00053903          	ld	s2,0(a0)
    9000365a:	852e                	mv	a0,a1
    9000365c:	00495593          	srli	a1,s2,0x4
    90003660:	02700693          	li	a3,39
    90003664:	27100713          	li	a4,625

0000000090003668 <.LBB470_10>:
    90003668:	00005817          	auipc	a6,0x5
    9000366c:	63280813          	addi	a6,a6,1586 # 90008c9a <.Lanon.9d4bfc86079e95d674f3cded52b1db19.225>
    90003670:	02e5f363          	bgeu	a1,a4,90003696 <.LBB470_10+0x2e>
    90003674:	06300593          	li	a1,99
    90003678:	0f25c063          	blt	a1,s2,90003758 <.LBB470_10+0xf0>
    9000367c:	45a5                	li	a1,9
    9000367e:	1325cd63          	blt	a1,s2,900037b8 <.LBB470_10+0x150>
    90003682:	fff68593          	addi	a1,a3,-1
    90003686:	00910613          	addi	a2,sp,9
    9000368a:	962e                	add	a2,a2,a1
    9000368c:	03090693          	addi	a3,s2,48
    90003690:	00d60023          	sb	a3,0(a2)
    90003694:	a291                	j	900037d8 <.LBB470_10+0x170>
    90003696:	4681                	li	a3,0
    90003698:	001a35b7          	lui	a1,0x1a3
    9000369c:	6e35859b          	addiw	a1,a1,1763
    900036a0:	05ba                	slli	a1,a1,0xe
    900036a2:	ac758593          	addi	a1,a1,-1337 # 1a2ac7 <.Lline_table_start0+0x185c1d>
    900036a6:	05ba                	slli	a1,a1,0xe
    900036a8:	43358593          	addi	a1,a1,1075
    900036ac:	05b6                	slli	a1,a1,0xd
    900036ae:	94b58893          	addi	a7,a1,-1717
    900036b2:	6589                	lui	a1,0x2
    900036b4:	7105831b          	addiw	t1,a1,1808
    900036b8:	65c1                	lui	a1,0x10
    900036ba:	ffc58e1b          	addiw	t3,a1,-4
    900036be:	0051f737          	lui	a4,0x51f
    900036c2:	b857071b          	addiw	a4,a4,-1147
    900036c6:	0736                	slli	a4,a4,0xd
    900036c8:	3d770713          	addi	a4,a4,983 # 51f3d7 <.Lline_table_start0+0x50252d>
    900036cc:	073a                	slli	a4,a4,0xe
    900036ce:	28f70713          	addi	a4,a4,655
    900036d2:	0732                	slli	a4,a4,0xc
    900036d4:	5c370e93          	addi	t4,a4,1475
    900036d8:	06400293          	li	t0,100
    900036dc:	ffe58f1b          	addiw	t5,a1,-2
    900036e0:	00910393          	addi	t2,sp,9
    900036e4:	05f5e5b7          	lui	a1,0x5f5e
    900036e8:	0ff58f9b          	addiw	t6,a1,255
    900036ec:	864a                	mv	a2,s2
    900036ee:	031937b3          	mulhu	a5,s2,a7
    900036f2:	00b7d913          	srli	s2,a5,0xb
    900036f6:	02690733          	mul	a4,s2,t1
    900036fa:	40e60733          	sub	a4,a2,a4
    900036fe:	01c775b3          	and	a1,a4,t3
    90003702:	8189                	srli	a1,a1,0x2
    90003704:	03d5b5b3          	mulhu	a1,a1,t4
    90003708:	8189                	srli	a1,a1,0x2
    9000370a:	00159413          	slli	s0,a1,0x1
    9000370e:	025585b3          	mul	a1,a1,t0
    90003712:	40b705b3          	sub	a1,a4,a1
    90003716:	0586                	slli	a1,a1,0x1
    90003718:	01e5f5b3          	and	a1,a1,t5
    9000371c:	01040733          	add	a4,s0,a6
    90003720:	00d38433          	add	s0,t2,a3
    90003724:	00074483          	lbu	s1,0(a4)
    90003728:	00170703          	lb	a4,1(a4)
    9000372c:	95c2                	add	a1,a1,a6
    9000372e:	00158783          	lb	a5,1(a1) # 5f5e001 <.Lline_table_start0+0x5f41157>
    90003732:	0005c583          	lbu	a1,0(a1)
    90003736:	02e40223          	sb	a4,36(s0)
    9000373a:	029401a3          	sb	s1,35(s0)
    9000373e:	02f40323          	sb	a5,38(s0)
    90003742:	02b402a3          	sb	a1,37(s0)
    90003746:	16f1                	addi	a3,a3,-4
    90003748:	facfe2e3          	bltu	t6,a2,900036ec <.LBB470_10+0x84>
    9000374c:	02768693          	addi	a3,a3,39
    90003750:	06300593          	li	a1,99
    90003754:	f325d4e3          	bge	a1,s2,9000367c <.LBB470_10+0x14>
    90003758:	65c1                	lui	a1,0x10
    9000375a:	ffc5861b          	addiw	a2,a1,-4
    9000375e:	00c97633          	and	a2,s2,a2
    90003762:	8209                	srli	a2,a2,0x2
    90003764:	0051f737          	lui	a4,0x51f
    90003768:	b857071b          	addiw	a4,a4,-1147
    9000376c:	0736                	slli	a4,a4,0xd
    9000376e:	3d770713          	addi	a4,a4,983 # 51f3d7 <.Lline_table_start0+0x50252d>
    90003772:	073a                	slli	a4,a4,0xe
    90003774:	28f70713          	addi	a4,a4,655
    90003778:	0732                	slli	a4,a4,0xc
    9000377a:	5c370713          	addi	a4,a4,1475
    9000377e:	02e63633          	mulhu	a2,a2,a4
    90003782:	8209                	srli	a2,a2,0x2
    90003784:	06400713          	li	a4,100
    90003788:	02e60733          	mul	a4,a2,a4
    9000378c:	40e90733          	sub	a4,s2,a4
    90003790:	0706                	slli	a4,a4,0x1
    90003792:	35f9                	addiw	a1,a1,-2
    90003794:	8df9                	and	a1,a1,a4
    90003796:	16f9                	addi	a3,a3,-2
    90003798:	95c2                	add	a1,a1,a6
    9000379a:	00158703          	lb	a4,1(a1) # 10001 <n+0xffe1>
    9000379e:	0005c583          	lbu	a1,0(a1)
    900037a2:	00910793          	addi	a5,sp,9
    900037a6:	97b6                	add	a5,a5,a3
    900037a8:	00e780a3          	sb	a4,1(a5)
    900037ac:	00b78023          	sb	a1,0(a5)
    900037b0:	8932                	mv	s2,a2
    900037b2:	45a5                	li	a1,9
    900037b4:	ed25d7e3          	bge	a1,s2,90003682 <.LBB470_10+0x1a>
    900037b8:	00191613          	slli	a2,s2,0x1
    900037bc:	ffe68593          	addi	a1,a3,-2
    900037c0:	9642                	add	a2,a2,a6
    900037c2:	00160683          	lb	a3,1(a2)
    900037c6:	00064603          	lbu	a2,0(a2)
    900037ca:	00910713          	addi	a4,sp,9
    900037ce:	972e                	add	a4,a4,a1
    900037d0:	00d700a3          	sb	a3,1(a4)
    900037d4:	00c70023          	sb	a2,0(a4)
    900037d8:	00910613          	addi	a2,sp,9
    900037dc:	00b60733          	add	a4,a2,a1
    900037e0:	02700613          	li	a2,39
    900037e4:	40b607b3          	sub	a5,a2,a1

00000000900037e8 <.LBB470_11>:
    900037e8:	00005617          	auipc	a2,0x5
    900037ec:	2f860613          	addi	a2,a2,760 # 90008ae0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.33>
    900037f0:	4585                	li	a1,1
    900037f2:	4681                	li	a3,0
    900037f4:	ffffe097          	auipc	ra,0xffffe
    900037f8:	79c080e7          	jalr	1948(ra) # 90001f90 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E>
    900037fc:	7942                	ld	s2,48(sp)
    900037fe:	74e2                	ld	s1,56(sp)
    90003800:	6406                	ld	s0,64(sp)
    90003802:	60a6                	ld	ra,72(sp)
    90003804:	6161                	addi	sp,sp,80
    90003806:	8082                	ret

0000000090003808 <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h9b30d63a2778a2bdE>:
    90003808:	7590                	ld	a2,40(a1)
    9000380a:	7188                	ld	a0,32(a1)
    9000380c:	6e1c                	ld	a5,24(a2)

000000009000380e <.LBB494_1>:
    9000380e:	00006597          	auipc	a1,0x6
    90003812:	eea58593          	addi	a1,a1,-278 # 900096f8 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.541>
    90003816:	4615                	li	a2,5
    90003818:	8782                	jr	a5

000000009000381a <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h583af7b57dae1f0cE>:
    9000381a:	6108                	ld	a0,0(a0)
    9000381c:	00000317          	auipc	t1,0x0
    90003820:	9ce30067          	jr	-1586(t1) # 900031ea <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE>

0000000090003824 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h60a88569702d73e5E>:
    90003824:	7175                	addi	sp,sp,-144
    90003826:	e506                	sd	ra,136(sp)
    90003828:	882e                	mv	a6,a1
    9000382a:	0305e583          	lwu	a1,48(a1)
    9000382e:	6108                	ld	a0,0(a0)
    90003830:	0105f613          	andi	a2,a1,16
    90003834:	e625                	bnez	a2,9000389c <.LBB526_19+0x22>
    90003836:	00054503          	lbu	a0,0(a0)
    9000383a:	0205f593          	andi	a1,a1,32
    9000383e:	e9d1                	bnez	a1,900038d2 <.LBB526_19+0x58>
    90003840:	06400593          	li	a1,100
    90003844:	0eb56963          	bltu	a0,a1,90003936 <.LBB526_20+0x1c>
    90003848:	0fc57613          	andi	a2,a0,252
    9000384c:	8209                	srli	a2,a2,0x2
    9000384e:	0051f6b7          	lui	a3,0x51f
    90003852:	b856869b          	addiw	a3,a3,-1147
    90003856:	06b6                	slli	a3,a3,0xd
    90003858:	3d768693          	addi	a3,a3,983 # 51f3d7 <.Lline_table_start0+0x50252d>
    9000385c:	06ba                	slli	a3,a3,0xe
    9000385e:	28f68693          	addi	a3,a3,655
    90003862:	06b2                	slli	a3,a3,0xc
    90003864:	5c368693          	addi	a3,a3,1475
    90003868:	02d63633          	mulhu	a2,a2,a3
    9000386c:	8209                	srli	a2,a2,0x2
    9000386e:	02b605b3          	mul	a1,a2,a1
    90003872:	8d0d                	sub	a0,a0,a1
    90003874:	0506                	slli	a0,a0,0x1
    90003876:	0fe57513          	andi	a0,a0,254

000000009000387a <.LBB526_19>:
    9000387a:	00005597          	auipc	a1,0x5
    9000387e:	42058593          	addi	a1,a1,1056 # 90008c9a <.Lanon.9d4bfc86079e95d674f3cded52b1db19.225>
    90003882:	952e                	add	a0,a0,a1
    90003884:	00150583          	lb	a1,1(a0)
    90003888:	00054503          	lbu	a0,0(a0)
    9000388c:	02b10723          	sb	a1,46(sp)
    90003890:	02a106a3          	sb	a0,45(sp)
    90003894:	02400593          	li	a1,36
    90003898:	8532                	mv	a0,a2
    9000389a:	a05d                	j	90003940 <.LBB526_20+0x26>
    9000389c:	00054503          	lbu	a0,0(a0)
    900038a0:	4581                	li	a1,0
    900038a2:	0030                	addi	a2,sp,8
    900038a4:	46a9                	li	a3,10
    900038a6:	a039                	j	900038b4 <.LBB526_19+0x3a>
    900038a8:	05778793          	addi	a5,a5,87
    900038ac:	06f70fa3          	sb	a5,127(a4)
    900038b0:	15fd                	addi	a1,a1,-1
    900038b2:	c921                	beqz	a0,90003902 <.LBB526_19+0x88>
    900038b4:	00b60733          	add	a4,a2,a1
    900038b8:	00f57793          	andi	a5,a0,15
    900038bc:	8111                	srli	a0,a0,0x4
    900038be:	893d                	andi	a0,a0,15
    900038c0:	fed7f4e3          	bgeu	a5,a3,900038a8 <.LBB526_19+0x2e>
    900038c4:	0307e793          	ori	a5,a5,48
    900038c8:	06f70fa3          	sb	a5,127(a4)
    900038cc:	15fd                	addi	a1,a1,-1
    900038ce:	f17d                	bnez	a0,900038b4 <.LBB526_19+0x3a>
    900038d0:	a80d                	j	90003902 <.LBB526_19+0x88>
    900038d2:	4581                	li	a1,0
    900038d4:	0030                	addi	a2,sp,8
    900038d6:	46a9                	li	a3,10
    900038d8:	a039                	j	900038e6 <.LBB526_19+0x6c>
    900038da:	03778793          	addi	a5,a5,55
    900038de:	06f70fa3          	sb	a5,127(a4)
    900038e2:	15fd                	addi	a1,a1,-1
    900038e4:	cd19                	beqz	a0,90003902 <.LBB526_19+0x88>
    900038e6:	00b60733          	add	a4,a2,a1
    900038ea:	00f57793          	andi	a5,a0,15
    900038ee:	8111                	srli	a0,a0,0x4
    900038f0:	893d                	andi	a0,a0,15
    900038f2:	fed7f4e3          	bgeu	a5,a3,900038da <.LBB526_19+0x60>
    900038f6:	0307e793          	ori	a5,a5,48
    900038fa:	06f70fa3          	sb	a5,127(a4)
    900038fe:	15fd                	addi	a1,a1,-1
    90003900:	f17d                	bnez	a0,900038e6 <.LBB526_19+0x6c>
    90003902:	08058513          	addi	a0,a1,128
    90003906:	08100693          	li	a3,129
    9000390a:	08d57763          	bgeu	a0,a3,90003998 <.LBB526_23>
    9000390e:	40b007b3          	neg	a5,a1
    90003912:	00b60533          	add	a0,a2,a1
    90003916:	08050713          	addi	a4,a0,128

000000009000391a <.LBB526_20>:
    9000391a:	00005617          	auipc	a2,0x5
    9000391e:	37e60613          	addi	a2,a2,894 # 90008c98 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.224>
    90003922:	4585                	li	a1,1
    90003924:	4689                	li	a3,2
    90003926:	8542                	mv	a0,a6
    90003928:	ffffe097          	auipc	ra,0xffffe
    9000392c:	668080e7          	jalr	1640(ra) # 90001f90 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E>
    90003930:	60aa                	ld	ra,136(sp)
    90003932:	6149                	addi	sp,sp,144
    90003934:	8082                	ret
    90003936:	4625                	li	a2,9
    90003938:	02600593          	li	a1,38
    9000393c:	00a66963          	bltu	a2,a0,9000394e <.LBB526_20+0x34>
    90003940:	0030                	addi	a2,sp,8
    90003942:	962e                	add	a2,a2,a1
    90003944:	03050513          	addi	a0,a0,48
    90003948:	00a60023          	sb	a0,0(a2)
    9000394c:	a00d                	j	9000396e <.LBB526_21+0x1e>
    9000394e:	0506                	slli	a0,a0,0x1

0000000090003950 <.LBB526_21>:
    90003950:	00005597          	auipc	a1,0x5
    90003954:	34a58593          	addi	a1,a1,842 # 90008c9a <.Lanon.9d4bfc86079e95d674f3cded52b1db19.225>
    90003958:	952e                	add	a0,a0,a1
    9000395a:	00150583          	lb	a1,1(a0)
    9000395e:	00054503          	lbu	a0,0(a0)
    90003962:	02b10723          	sb	a1,46(sp)
    90003966:	02a106a3          	sb	a0,45(sp)
    9000396a:	02500593          	li	a1,37
    9000396e:	0028                	addi	a0,sp,8
    90003970:	00b50733          	add	a4,a0,a1
    90003974:	02700513          	li	a0,39
    90003978:	40b507b3          	sub	a5,a0,a1

000000009000397c <.LBB526_22>:
    9000397c:	00005617          	auipc	a2,0x5
    90003980:	16460613          	addi	a2,a2,356 # 90008ae0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.33>
    90003984:	4585                	li	a1,1
    90003986:	8542                	mv	a0,a6
    90003988:	4681                	li	a3,0
    9000398a:	ffffe097          	auipc	ra,0xffffe
    9000398e:	606080e7          	jalr	1542(ra) # 90001f90 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E>
    90003992:	60aa                	ld	ra,136(sp)
    90003994:	6149                	addi	sp,sp,144
    90003996:	8082                	ret

0000000090003998 <.LBB526_23>:
    90003998:	00005617          	auipc	a2,0x5
    9000399c:	2e860613          	addi	a2,a2,744 # 90008c80 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.221>
    900039a0:	08000593          	li	a1,128
    900039a4:	fffff097          	auipc	ra,0xfffff
    900039a8:	f0e080e7          	jalr	-242(ra) # 900028b2 <_ZN4core5slice5index26slice_start_index_len_fail17h43348ae2a84bde06E>
	...

00000000900039ae <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb2d2d27b812270d6E>:
    900039ae:	7139                	addi	sp,sp,-64
    900039b0:	fc06                	sd	ra,56(sp)
    900039b2:	f822                	sd	s0,48(sp)
    900039b4:	f426                	sd	s1,40(sp)
    900039b6:	6110                	ld	a2,0(a0)
    900039b8:	00064503          	lbu	a0,0(a2)
    900039bc:	4685                	li	a3,1
    900039be:	842e                	mv	s0,a1
    900039c0:	0ad51263          	bne	a0,a3,90003a64 <.LBB548_13+0x22>
    900039c4:	740c                	ld	a1,40(s0)
    900039c6:	7008                	ld	a0,32(s0)
    900039c8:	6d94                	ld	a3,24(a1)
    900039ca:	00160493          	addi	s1,a2,1

00000000900039ce <.LBB548_10>:
    900039ce:	00005597          	auipc	a1,0x5
    900039d2:	14758593          	addi	a1,a1,327 # 90008b15 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.150+0x12>
    900039d6:	4611                	li	a2,4
    900039d8:	9682                	jalr	a3
    900039da:	e422                	sd	s0,8(sp)
    900039dc:	00a10c23          	sb	a0,24(sp)
    900039e0:	e802                	sd	zero,16(sp)
    900039e2:	00010ca3          	sb	zero,25(sp)
    900039e6:	f026                	sd	s1,32(sp)

00000000900039e8 <.LBB548_11>:
    900039e8:	00005617          	auipc	a2,0x5
    900039ec:	25860613          	addi	a2,a2,600 # 90008c40 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.210>
    900039f0:	0028                	addi	a0,sp,8
    900039f2:	100c                	addi	a1,sp,32
    900039f4:	ffffe097          	auipc	ra,0xffffe
    900039f8:	02a080e7          	jalr	42(ra) # 90001a1e <_ZN4core3fmt8builders10DebugTuple5field17h968d9eaf966503caE>
    900039fc:	6542                	ld	a0,16(sp)
    900039fe:	01814583          	lbu	a1,24(sp)
    90003a02:	c931                	beqz	a0,90003a56 <.LBB548_13+0x14>
    90003a04:	4405                	li	s0,1
    90003a06:	e5a9                	bnez	a1,90003a50 <.LBB548_13+0xe>
    90003a08:	01914583          	lbu	a1,25(sp)
    90003a0c:	157d                	addi	a0,a0,-1
    90003a0e:	00a03533          	snez	a0,a0
    90003a12:	0015b593          	seqz	a1,a1
    90003a16:	8d4d                	or	a0,a0,a1
    90003a18:	e10d                	bnez	a0,90003a3a <.LBB548_12+0x10>
    90003a1a:	6522                	ld	a0,8(sp)
    90003a1c:	03054583          	lbu	a1,48(a0)
    90003a20:	8991                	andi	a1,a1,4
    90003a22:	ed81                	bnez	a1,90003a3a <.LBB548_12+0x10>
    90003a24:	750c                	ld	a1,40(a0)
    90003a26:	7108                	ld	a0,32(a0)
    90003a28:	6d94                	ld	a3,24(a1)

0000000090003a2a <.LBB548_12>:
    90003a2a:	00005597          	auipc	a1,0x5
    90003a2e:	20e58593          	addi	a1,a1,526 # 90008c38 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.205>
    90003a32:	4605                	li	a2,1
    90003a34:	4405                	li	s0,1
    90003a36:	9682                	jalr	a3
    90003a38:	ed01                	bnez	a0,90003a50 <.LBB548_13+0xe>
    90003a3a:	6522                	ld	a0,8(sp)
    90003a3c:	750c                	ld	a1,40(a0)
    90003a3e:	7108                	ld	a0,32(a0)
    90003a40:	6d94                	ld	a3,24(a1)

0000000090003a42 <.LBB548_13>:
    90003a42:	00005597          	auipc	a1,0x5
    90003a46:	1f758593          	addi	a1,a1,503 # 90008c39 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.206>
    90003a4a:	4605                	li	a2,1
    90003a4c:	9682                	jalr	a3
    90003a4e:	842a                	mv	s0,a0
    90003a50:	00810c23          	sb	s0,24(sp)
    90003a54:	85a2                	mv	a1,s0
    90003a56:	00b03533          	snez	a0,a1
    90003a5a:	74a2                	ld	s1,40(sp)
    90003a5c:	7442                	ld	s0,48(sp)
    90003a5e:	70e2                	ld	ra,56(sp)
    90003a60:	6121                	addi	sp,sp,64
    90003a62:	8082                	ret
    90003a64:	740c                	ld	a1,40(s0)
    90003a66:	7008                	ld	a0,32(s0)
    90003a68:	6d9c                	ld	a5,24(a1)

0000000090003a6a <.LBB548_14>:
    90003a6a:	00005597          	auipc	a1,0x5
    90003a6e:	0b358593          	addi	a1,a1,179 # 90008b1d <.Lanon.9d4bfc86079e95d674f3cded52b1db19.150+0x1a>
    90003a72:	4611                	li	a2,4
    90003a74:	74a2                	ld	s1,40(sp)
    90003a76:	7442                	ld	s0,48(sp)
    90003a78:	70e2                	ld	ra,56(sp)
    90003a7a:	6121                	addi	sp,sp,64
    90003a7c:	8782                	jr	a5

0000000090003a7e <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc803731d5e879d1bE>:
    90003a7e:	6510                	ld	a2,8(a0)
    90003a80:	6108                	ld	a0,0(a0)
    90003a82:	6e1c                	ld	a5,24(a2)
    90003a84:	8782                	jr	a5

0000000090003a86 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0ab56ae6638005b3E>:
    90003a86:	6114                	ld	a3,0(a0)
    90003a88:	6510                	ld	a2,8(a0)
    90003a8a:	852e                	mv	a0,a1
    90003a8c:	85b6                	mv	a1,a3
    90003a8e:	ffffe317          	auipc	t1,0xffffe
    90003a92:	79230067          	jr	1938(t1) # 90002220 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E>

0000000090003a96 <_ZN64_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h3ebd7e5e05aa8206E>:
    90003a96:	7139                	addi	sp,sp,-64
    90003a98:	fc06                	sd	ra,56(sp)
    90003a9a:	f822                	sd	s0,48(sp)
    90003a9c:	f426                	sd	s1,40(sp)
    90003a9e:	f04a                	sd	s2,32(sp)
    90003aa0:	842e                	mv	s0,a1
    90003aa2:	758c                	ld	a1,40(a1)
    90003aa4:	7014                	ld	a3,32(s0)
    90003aa6:	6d98                	ld	a4,24(a1)
    90003aa8:	84aa                	mv	s1,a0
    90003aaa:	00850913          	addi	s2,a0,8

0000000090003aae <.LBB586_8>:
    90003aae:	00006597          	auipc	a1,0x6
    90003ab2:	c4f58593          	addi	a1,a1,-945 # 900096fd <.Lanon.9d4bfc86079e95d674f3cded52b1db19.565>
    90003ab6:	4625                	li	a2,9
    90003ab8:	8536                	mv	a0,a3
    90003aba:	9702                	jalr	a4
    90003abc:	e42a                	sd	a0,8(sp)
    90003abe:	e022                	sd	s0,0(sp)
    90003ac0:	ec26                	sd	s1,24(sp)

0000000090003ac2 <.LBB586_9>:
    90003ac2:	00006597          	auipc	a1,0x6
    90003ac6:	c4458593          	addi	a1,a1,-956 # 90009706 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.566>

0000000090003aca <.LBB586_10>:
    90003aca:	00006717          	auipc	a4,0x6
    90003ace:	c0e70713          	addi	a4,a4,-1010 # 900096d8 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.418>
    90003ad2:	840a                	mv	s0,sp
    90003ad4:	0834                	addi	a3,sp,24
    90003ad6:	462d                	li	a2,11
    90003ad8:	8522                	mv	a0,s0
    90003ada:	ffffe097          	auipc	ra,0xffffe
    90003ade:	de8080e7          	jalr	-536(ra) # 900018c2 <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    90003ae2:	ec4a                	sd	s2,24(sp)

0000000090003ae4 <.LBB586_11>:
    90003ae4:	00006597          	auipc	a1,0x6
    90003ae8:	c2d58593          	addi	a1,a1,-979 # 90009711 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.567>

0000000090003aec <.LBB586_12>:
    90003aec:	00006717          	auipc	a4,0x6
    90003af0:	c3470713          	addi	a4,a4,-972 # 90009720 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.568>
    90003af4:	0834                	addi	a3,sp,24
    90003af6:	4625                	li	a2,9
    90003af8:	8522                	mv	a0,s0
    90003afa:	ffffe097          	auipc	ra,0xffffe
    90003afe:	dc8080e7          	jalr	-568(ra) # 900018c2 <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    90003b02:	00914503          	lbu	a0,9(sp)
    90003b06:	00814583          	lbu	a1,8(sp)
    90003b0a:	c91d                	beqz	a0,90003b40 <.LBB586_14+0x12>
    90003b0c:	4505                	li	a0,1
    90003b0e:	e595                	bnez	a1,90003b3a <.LBB586_14+0xc>
    90003b10:	6502                	ld	a0,0(sp)
    90003b12:	750c                	ld	a1,40(a0)
    90003b14:	03054603          	lbu	a2,48(a0)
    90003b18:	7108                	ld	a0,32(a0)
    90003b1a:	6d94                	ld	a3,24(a1)
    90003b1c:	00467593          	andi	a1,a2,4
    90003b20:	e599                	bnez	a1,90003b2e <.LBB586_14>

0000000090003b22 <.LBB586_13>:
    90003b22:	00005597          	auipc	a1,0x5
    90003b26:	11158593          	addi	a1,a1,273 # 90008c33 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.202>
    90003b2a:	4609                	li	a2,2
    90003b2c:	a031                	j	90003b38 <.LBB586_14+0xa>

0000000090003b2e <.LBB586_14>:
    90003b2e:	00005597          	auipc	a1,0x5
    90003b32:	10458593          	addi	a1,a1,260 # 90008c32 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.201>
    90003b36:	4605                	li	a2,1
    90003b38:	9682                	jalr	a3
    90003b3a:	00a10423          	sb	a0,8(sp)
    90003b3e:	85aa                	mv	a1,a0
    90003b40:	00b03533          	snez	a0,a1
    90003b44:	7902                	ld	s2,32(sp)
    90003b46:	74a2                	ld	s1,40(sp)
    90003b48:	7442                	ld	s0,48(sp)
    90003b4a:	70e2                	ld	ra,56(sp)
    90003b4c:	6121                	addi	sp,sp,64
    90003b4e:	8082                	ret

0000000090003b50 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17hc6378705226a5029E>:
    90003b50:	1141                	addi	sp,sp,-16
    90003b52:	e406                	sd	ra,8(sp)
    90003b54:	4681                	li	a3,0
    90003b56:	0005059b          	sext.w	a1,a0
    90003b5a:	6645                	lui	a2,0x11
    90003b5c:	d246071b          	addiw	a4,a2,-732
    90003b60:	00b5161b          	slliw	a2,a0,0xb
    90003b64:	00e5e363          	bltu	a1,a4,90003b6a <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17hc6378705226a5029E+0x1a>
    90003b68:	46bd                	li	a3,15
    90003b6a:	00868713          	addi	a4,a3,8
    90003b6e:	00271793          	slli	a5,a4,0x2

0000000090003b72 <.LBB614_29>:
    90003b72:	00006597          	auipc	a1,0x6
    90003b76:	bce58593          	addi	a1,a1,-1074 # 90009740 <_ZN4core7unicode12unicode_data15grapheme_extend17SHORT_OFFSET_RUNS17hfd93ef645f5e63d2E>
    90003b7a:	97ae                	add	a5,a5,a1
    90003b7c:	439c                	lw	a5,0(a5)
    90003b7e:	00b7979b          	slliw	a5,a5,0xb
    90003b82:	00f66363          	bltu	a2,a5,90003b88 <.LBB614_29+0x16>
    90003b86:	86ba                	mv	a3,a4
    90003b88:	00468713          	addi	a4,a3,4
    90003b8c:	00271793          	slli	a5,a4,0x2
    90003b90:	97ae                	add	a5,a5,a1
    90003b92:	439c                	lw	a5,0(a5)
    90003b94:	00b7979b          	slliw	a5,a5,0xb
    90003b98:	00f66363          	bltu	a2,a5,90003b9e <.LBB614_29+0x2c>
    90003b9c:	86ba                	mv	a3,a4
    90003b9e:	00268713          	addi	a4,a3,2
    90003ba2:	00271793          	slli	a5,a4,0x2
    90003ba6:	97ae                	add	a5,a5,a1
    90003ba8:	439c                	lw	a5,0(a5)
    90003baa:	00b7979b          	slliw	a5,a5,0xb
    90003bae:	00f66363          	bltu	a2,a5,90003bb4 <.LBB614_29+0x42>
    90003bb2:	86ba                	mv	a3,a4
    90003bb4:	00168713          	addi	a4,a3,1
    90003bb8:	00271793          	slli	a5,a4,0x2
    90003bbc:	97ae                	add	a5,a5,a1
    90003bbe:	439c                	lw	a5,0(a5)
    90003bc0:	00b7979b          	slliw	a5,a5,0xb
    90003bc4:	00f66363          	bltu	a2,a5,90003bca <.LBB614_29+0x58>
    90003bc8:	86ba                	mv	a3,a4
    90003bca:	00269713          	slli	a4,a3,0x2
    90003bce:	972e                	add	a4,a4,a1
    90003bd0:	4318                	lw	a4,0(a4)
    90003bd2:	00b7171b          	slliw	a4,a4,0xb
    90003bd6:	00c737b3          	sltu	a5,a4,a2
    90003bda:	8e39                	xor	a2,a2,a4
    90003bdc:	00163613          	seqz	a2,a2
    90003be0:	963e                	add	a2,a2,a5
    90003be2:	00d60733          	add	a4,a2,a3
    90003be6:	46f9                	li	a3,30
    90003be8:	0ae6e463          	bltu	a3,a4,90003c90 <.LBB614_32>
    90003bec:	00271793          	slli	a5,a4,0x2
    90003bf0:	2b100613          	li	a2,689
    90003bf4:	00d70763          	beq	a4,a3,90003c02 <.LBB614_29+0x90>
    90003bf8:	00f58633          	add	a2,a1,a5
    90003bfc:	00466603          	lwu	a2,4(a2) # 11004 <n+0x10fe4>
    90003c00:	8255                	srli	a2,a2,0x15
    90003c02:	fff70693          	addi	a3,a4,-1
    90003c06:	00d77463          	bgeu	a4,a3,90003c0e <.LBB614_29+0x9c>
    90003c0a:	4701                	li	a4,0
    90003c0c:	a821                	j	90003c24 <.LBB614_29+0xb2>
    90003c0e:	477d                	li	a4,31
    90003c10:	08e6fb63          	bgeu	a3,a4,90003ca6 <.LBB614_33>
    90003c14:	068a                	slli	a3,a3,0x2
    90003c16:	96ae                	add	a3,a3,a1
    90003c18:	0006e683          	lwu	a3,0(a3)
    90003c1c:	00200737          	lui	a4,0x200
    90003c20:	377d                	addiw	a4,a4,-1
    90003c22:	8f75                	and	a4,a4,a3
    90003c24:	95be                	add	a1,a1,a5
    90003c26:	0005e583          	lwu	a1,0(a1)
    90003c2a:	81d5                	srli	a1,a1,0x15
    90003c2c:	00158693          	addi	a3,a1,1
    90003c30:	02d60f63          	beq	a2,a3,90003c6e <.LBB614_30+0x22>
    90003c34:	2b100793          	li	a5,689
    90003c38:	882e                	mv	a6,a1
    90003c3a:	00b7e463          	bltu	a5,a1,90003c42 <.LBB614_29+0xd0>
    90003c3e:	2b100813          	li	a6,689
    90003c42:	4781                	li	a5,0
    90003c44:	40e5073b          	subw	a4,a0,a4
    90003c48:	fff60513          	addi	a0,a2,-1

0000000090003c4c <.LBB614_30>:
    90003c4c:	00006617          	auipc	a2,0x6
    90003c50:	b7060613          	addi	a2,a2,-1168 # 900097bc <_ZN4core7unicode12unicode_data15grapheme_extend7OFFSETS17h95afd816ac45989cE>
    90003c54:	02b80263          	beq	a6,a1,90003c78 <.LBB614_31>
    90003c58:	00c586b3          	add	a3,a1,a2
    90003c5c:	0006c683          	lbu	a3,0(a3)
    90003c60:	9fb5                	addw	a5,a5,a3
    90003c62:	00f76663          	bltu	a4,a5,90003c6e <.LBB614_30+0x22>
    90003c66:	0585                	addi	a1,a1,1
    90003c68:	feb516e3          	bne	a0,a1,90003c54 <.LBB614_30+0x8>
    90003c6c:	85aa                	mv	a1,a0
    90003c6e:	0015f513          	andi	a0,a1,1
    90003c72:	60a2                	ld	ra,8(sp)
    90003c74:	0141                	addi	sp,sp,16
    90003c76:	8082                	ret

0000000090003c78 <.LBB614_31>:
    90003c78:	00006617          	auipc	a2,0x6
    90003c7c:	a3060613          	addi	a2,a2,-1488 # 900096a8 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.355>
    90003c80:	2b100593          	li	a1,689
    90003c84:	8542                	mv	a0,a6
    90003c86:	ffffe097          	auipc	ra,0xffffe
    90003c8a:	a90080e7          	jalr	-1392(ra) # 90001716 <_ZN4core9panicking18panic_bounds_check17ha760e6d8204f3836E>
	...

0000000090003c90 <.LBB614_32>:
    90003c90:	00006617          	auipc	a2,0x6
    90003c94:	a0060613          	addi	a2,a2,-1536 # 90009690 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.354>
    90003c98:	45fd                	li	a1,31
    90003c9a:	853a                	mv	a0,a4
    90003c9c:	ffffe097          	auipc	ra,0xffffe
    90003ca0:	a7a080e7          	jalr	-1414(ra) # 90001716 <_ZN4core9panicking18panic_bounds_check17ha760e6d8204f3836E>
	...

0000000090003ca6 <.LBB614_33>:
    90003ca6:	00006617          	auipc	a2,0x6
    90003caa:	a1a60613          	addi	a2,a2,-1510 # 900096c0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.356>
    90003cae:	45fd                	li	a1,31
    90003cb0:	8536                	mv	a0,a3
    90003cb2:	ffffe097          	auipc	ra,0xffffe
    90003cb6:	a64080e7          	jalr	-1436(ra) # 90001716 <_ZN4core9panicking18panic_bounds_check17ha760e6d8204f3836E>
	...

0000000090003cbc <memcpy>:
    90003cbc:	ca11                	beqz	a2,90003cd0 <memcpy+0x14>
    90003cbe:	86aa                	mv	a3,a0
    90003cc0:	00058703          	lb	a4,0(a1)
    90003cc4:	00e68023          	sb	a4,0(a3)
    90003cc8:	167d                	addi	a2,a2,-1
    90003cca:	0685                	addi	a3,a3,1
    90003ccc:	0585                	addi	a1,a1,1
    90003cce:	fa6d                	bnez	a2,90003cc0 <memcpy+0x4>
    90003cd0:	8082                	ret

0000000090003cd2 <memset>:
    90003cd2:	c619                	beqz	a2,90003ce0 <memset+0xe>
    90003cd4:	86aa                	mv	a3,a0
    90003cd6:	00b68023          	sb	a1,0(a3)
    90003cda:	167d                	addi	a2,a2,-1
    90003cdc:	0685                	addi	a3,a3,1
    90003cde:	fe65                	bnez	a2,90003cd6 <memset+0x4>
    90003ce0:	8082                	ret
