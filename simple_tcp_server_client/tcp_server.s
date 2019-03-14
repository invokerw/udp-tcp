
tcp_server：     文件格式 elf64-x86-64


Disassembly of section .init:

0000000000400da8 <_init>:
  400da8:	48 83 ec 08          	sub    $0x8,%rsp
  400dac:	48 8b 05 45 42 20 00 	mov    0x204245(%rip),%rax        # 604ff8 <__gmon_start__>
  400db3:	48 85 c0             	test   %rax,%rax
  400db6:	74 05                	je     400dbd <_init+0x15>
  400db8:	e8 73 02 00 00       	callq  401030 <.plt.got>
  400dbd:	48 83 c4 08          	add    $0x8,%rsp
  400dc1:	c3                   	retq   

Disassembly of section .plt:

0000000000400dd0 <.plt>:
  400dd0:	ff 35 32 42 20 00    	pushq  0x204232(%rip)        # 605008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400dd6:	ff 25 34 42 20 00    	jmpq   *0x204234(%rip)        # 605010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400ddc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400de0 <memset@plt>:
  400de0:	ff 25 32 42 20 00    	jmpq   *0x204232(%rip)        # 605018 <memset@GLIBC_2.2.5>
  400de6:	68 00 00 00 00       	pushq  $0x0
  400deb:	e9 e0 ff ff ff       	jmpq   400dd0 <.plt>

0000000000400df0 <close@plt>:
  400df0:	ff 25 2a 42 20 00    	jmpq   *0x20422a(%rip)        # 605020 <close@GLIBC_2.2.5>
  400df6:	68 01 00 00 00       	pushq  $0x1
  400dfb:	e9 d0 ff ff ff       	jmpq   400dd0 <.plt>

0000000000400e00 <_ZNSsC1EPKcmRKSaIcE@plt>:
  400e00:	ff 25 22 42 20 00    	jmpq   *0x204222(%rip)        # 605028 <_ZNSsC1EPKcmRKSaIcE@GLIBCXX_3.4>
  400e06:	68 02 00 00 00       	pushq  $0x2
  400e0b:	e9 c0 ff ff ff       	jmpq   400dd0 <.plt>

0000000000400e10 <_ZNKSs5c_strEv@plt>:
  400e10:	ff 25 1a 42 20 00    	jmpq   *0x20421a(%rip)        # 605030 <_ZNKSs5c_strEv@GLIBCXX_3.4>
  400e16:	68 03 00 00 00       	pushq  $0x3
  400e1b:	e9 b0 ff ff ff       	jmpq   400dd0 <.plt>

0000000000400e20 <_ZdlPv@plt>:
  400e20:	ff 25 12 42 20 00    	jmpq   *0x204212(%rip)        # 605038 <_ZdlPv@GLIBCXX_3.4>
  400e26:	68 04 00 00 00       	pushq  $0x4
  400e2b:	e9 a0 ff ff ff       	jmpq   400dd0 <.plt>

0000000000400e30 <htons@plt>:
  400e30:	ff 25 0a 42 20 00    	jmpq   *0x20420a(%rip)        # 605040 <htons@GLIBC_2.2.5>
  400e36:	68 05 00 00 00       	pushq  $0x5
  400e3b:	e9 90 ff ff ff       	jmpq   400dd0 <.plt>

0000000000400e40 <select@plt>:
  400e40:	ff 25 02 42 20 00    	jmpq   *0x204202(%rip)        # 605048 <select@GLIBC_2.2.5>
  400e46:	68 06 00 00 00       	pushq  $0x6
  400e4b:	e9 80 ff ff ff       	jmpq   400dd0 <.plt>

0000000000400e50 <__cxa_rethrow@plt>:
  400e50:	ff 25 fa 41 20 00    	jmpq   *0x2041fa(%rip)        # 605050 <__cxa_rethrow@CXXABI_1.3>
  400e56:	68 07 00 00 00       	pushq  $0x7
  400e5b:	e9 70 ff ff ff       	jmpq   400dd0 <.plt>

0000000000400e60 <_ZNKSs4sizeEv@plt>:
  400e60:	ff 25 f2 41 20 00    	jmpq   *0x2041f2(%rip)        # 605058 <_ZNKSs4sizeEv@GLIBCXX_3.4>
  400e66:	68 08 00 00 00       	pushq  $0x8
  400e6b:	e9 60 ff ff ff       	jmpq   400dd0 <.plt>

0000000000400e70 <__libc_start_main@plt>:
  400e70:	ff 25 ea 41 20 00    	jmpq   *0x2041ea(%rip)        # 605060 <__libc_start_main@GLIBC_2.2.5>
  400e76:	68 09 00 00 00       	pushq  $0x9
  400e7b:	e9 50 ff ff ff       	jmpq   400dd0 <.plt>

0000000000400e80 <recv@plt>:
  400e80:	ff 25 e2 41 20 00    	jmpq   *0x2041e2(%rip)        # 605068 <recv@GLIBC_2.2.5>
  400e86:	68 0a 00 00 00       	pushq  $0xa
  400e8b:	e9 40 ff ff ff       	jmpq   400dd0 <.plt>

0000000000400e90 <_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base@plt>:
  400e90:	ff 25 da 41 20 00    	jmpq   *0x2041da(%rip)        # 605070 <_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base@GLIBCXX_3.4>
  400e96:	68 0b 00 00 00       	pushq  $0xb
  400e9b:	e9 30 ff ff ff       	jmpq   400dd0 <.plt>

0000000000400ea0 <setsockopt@plt>:
  400ea0:	ff 25 d2 41 20 00    	jmpq   *0x2041d2(%rip)        # 605078 <setsockopt@GLIBC_2.2.5>
  400ea6:	68 0c 00 00 00       	pushq  $0xc
  400eab:	e9 20 ff ff ff       	jmpq   400dd0 <.plt>

0000000000400eb0 <_ZNSsD1Ev@plt>:
  400eb0:	ff 25 ca 41 20 00    	jmpq   *0x2041ca(%rip)        # 605080 <_ZNSsD1Ev@GLIBCXX_3.4>
  400eb6:	68 0d 00 00 00       	pushq  $0xd
  400ebb:	e9 10 ff ff ff       	jmpq   400dd0 <.plt>

0000000000400ec0 <listen@plt>:
  400ec0:	ff 25 c2 41 20 00    	jmpq   *0x2041c2(%rip)        # 605088 <listen@GLIBC_2.2.5>
  400ec6:	68 0e 00 00 00       	pushq  $0xe
  400ecb:	e9 00 ff ff ff       	jmpq   400dd0 <.plt>

0000000000400ed0 <_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base@plt>:
  400ed0:	ff 25 ba 41 20 00    	jmpq   *0x2041ba(%rip)        # 605090 <_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base@GLIBCXX_3.4>
  400ed6:	68 0f 00 00 00       	pushq  $0xf
  400edb:	e9 f0 fe ff ff       	jmpq   400dd0 <.plt>

0000000000400ee0 <usleep@plt>:
  400ee0:	ff 25 b2 41 20 00    	jmpq   *0x2041b2(%rip)        # 605098 <usleep@GLIBC_2.2.5>
  400ee6:	68 10 00 00 00       	pushq  $0x10
  400eeb:	e9 e0 fe ff ff       	jmpq   400dd0 <.plt>

0000000000400ef0 <signal@plt>:
  400ef0:	ff 25 aa 41 20 00    	jmpq   *0x2041aa(%rip)        # 6050a0 <signal@GLIBC_2.2.5>
  400ef6:	68 11 00 00 00       	pushq  $0x11
  400efb:	e9 d0 fe ff ff       	jmpq   400dd0 <.plt>

0000000000400f00 <socket@plt>:
  400f00:	ff 25 a2 41 20 00    	jmpq   *0x2041a2(%rip)        # 6050a8 <socket@GLIBC_2.2.5>
  400f06:	68 12 00 00 00       	pushq  $0x12
  400f0b:	e9 c0 fe ff ff       	jmpq   400dd0 <.plt>

0000000000400f10 <__errno_location@plt>:
  400f10:	ff 25 9a 41 20 00    	jmpq   *0x20419a(%rip)        # 6050b0 <__errno_location@GLIBC_2.2.5>
  400f16:	68 13 00 00 00       	pushq  $0x13
  400f1b:	e9 b0 fe ff ff       	jmpq   400dd0 <.plt>

0000000000400f20 <_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_@plt>:
  400f20:	ff 25 92 41 20 00    	jmpq   *0x204192(%rip)        # 6050b8 <_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_@GLIBCXX_3.4>
  400f26:	68 14 00 00 00       	pushq  $0x14
  400f2b:	e9 a0 fe ff ff       	jmpq   400dd0 <.plt>

0000000000400f30 <_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_@plt>:
  400f30:	ff 25 8a 41 20 00    	jmpq   *0x20418a(%rip)        # 6050c0 <_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_@GLIBCXX_3.4>
  400f36:	68 15 00 00 00       	pushq  $0x15
  400f3b:	e9 90 fe ff ff       	jmpq   400dd0 <.plt>

0000000000400f40 <_ZNSaIcED1Ev@plt>:
  400f40:	ff 25 82 41 20 00    	jmpq   *0x204182(%rip)        # 6050c8 <_ZNSaIcED1Ev@GLIBCXX_3.4>
  400f46:	68 16 00 00 00       	pushq  $0x16
  400f4b:	e9 80 fe ff ff       	jmpq   400dd0 <.plt>

0000000000400f50 <send@plt>:
  400f50:	ff 25 7a 41 20 00    	jmpq   *0x20417a(%rip)        # 6050d0 <send@GLIBC_2.2.5>
  400f56:	68 17 00 00 00       	pushq  $0x17
  400f5b:	e9 70 fe ff ff       	jmpq   400dd0 <.plt>

0000000000400f60 <__cxa_end_catch@plt>:
  400f60:	ff 25 72 41 20 00    	jmpq   *0x204172(%rip)        # 6050d8 <__cxa_end_catch@CXXABI_1.3>
  400f66:	68 18 00 00 00       	pushq  $0x18
  400f6b:	e9 60 fe ff ff       	jmpq   400dd0 <.plt>

0000000000400f70 <_ZSt17__throw_bad_allocv@plt>:
  400f70:	ff 25 6a 41 20 00    	jmpq   *0x20416a(%rip)        # 6050e0 <_ZSt17__throw_bad_allocv@GLIBCXX_3.4>
  400f76:	68 19 00 00 00       	pushq  $0x19
  400f7b:	e9 50 fe ff ff       	jmpq   400dd0 <.plt>

0000000000400f80 <__cxa_begin_catch@plt>:
  400f80:	ff 25 62 41 20 00    	jmpq   *0x204162(%rip)        # 6050e8 <__cxa_begin_catch@CXXABI_1.3>
  400f86:	68 1a 00 00 00       	pushq  $0x1a
  400f8b:	e9 40 fe ff ff       	jmpq   400dd0 <.plt>

0000000000400f90 <bind@plt>:
  400f90:	ff 25 5a 41 20 00    	jmpq   *0x20415a(%rip)        # 6050f0 <bind@GLIBC_2.2.5>
  400f96:	68 1b 00 00 00       	pushq  $0x1b
  400f9b:	e9 30 fe ff ff       	jmpq   400dd0 <.plt>

0000000000400fa0 <fwrite@plt>:
  400fa0:	ff 25 52 41 20 00    	jmpq   *0x204152(%rip)        # 6050f8 <fwrite@GLIBC_2.2.5>
  400fa6:	68 1c 00 00 00       	pushq  $0x1c
  400fab:	e9 20 fe ff ff       	jmpq   400dd0 <.plt>

0000000000400fb0 <_ZNSaIcEC1Ev@plt>:
  400fb0:	ff 25 4a 41 20 00    	jmpq   *0x20414a(%rip)        # 605100 <_ZNSaIcEC1Ev@GLIBCXX_3.4>
  400fb6:	68 1d 00 00 00       	pushq  $0x1d
  400fbb:	e9 10 fe ff ff       	jmpq   400dd0 <.plt>

0000000000400fc0 <__gxx_personality_v0@plt>:
  400fc0:	ff 25 42 41 20 00    	jmpq   *0x204142(%rip)        # 605108 <__gxx_personality_v0@CXXABI_1.3>
  400fc6:	68 1e 00 00 00       	pushq  $0x1e
  400fcb:	e9 00 fe ff ff       	jmpq   400dd0 <.plt>

0000000000400fd0 <fprintf@plt>:
  400fd0:	ff 25 3a 41 20 00    	jmpq   *0x20413a(%rip)        # 605110 <fprintf@GLIBC_2.2.5>
  400fd6:	68 1f 00 00 00       	pushq  $0x1f
  400fdb:	e9 f0 fd ff ff       	jmpq   400dd0 <.plt>

0000000000400fe0 <_Znwm@plt>:
  400fe0:	ff 25 32 41 20 00    	jmpq   *0x204132(%rip)        # 605118 <_Znwm@GLIBCXX_3.4>
  400fe6:	68 20 00 00 00       	pushq  $0x20
  400feb:	e9 e0 fd ff ff       	jmpq   400dd0 <.plt>

0000000000400ff0 <_Unwind_Resume@plt>:
  400ff0:	ff 25 2a 41 20 00    	jmpq   *0x20412a(%rip)        # 605120 <_Unwind_Resume@GCC_3.0>
  400ff6:	68 21 00 00 00       	pushq  $0x21
  400ffb:	e9 d0 fd ff ff       	jmpq   400dd0 <.plt>

0000000000401000 <accept@plt>:
  401000:	ff 25 22 41 20 00    	jmpq   *0x204122(%rip)        # 605128 <accept@GLIBC_2.2.5>
  401006:	68 22 00 00 00       	pushq  $0x22
  40100b:	e9 c0 fd ff ff       	jmpq   400dd0 <.plt>

0000000000401010 <fcntl@plt>:
  401010:	ff 25 1a 41 20 00    	jmpq   *0x20411a(%rip)        # 605130 <fcntl@GLIBC_2.2.5>
  401016:	68 23 00 00 00       	pushq  $0x23
  40101b:	e9 b0 fd ff ff       	jmpq   400dd0 <.plt>

0000000000401020 <inet_addr@plt>:
  401020:	ff 25 12 41 20 00    	jmpq   *0x204112(%rip)        # 605138 <inet_addr@GLIBC_2.2.5>
  401026:	68 24 00 00 00       	pushq  $0x24
  40102b:	e9 a0 fd ff ff       	jmpq   400dd0 <.plt>

Disassembly of section .plt.got:

0000000000401030 <.plt.got>:
  401030:	ff 25 c2 3f 20 00    	jmpq   *0x203fc2(%rip)        # 604ff8 <__gmon_start__>
  401036:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000401040 <_start>:
  401040:	31 ed                	xor    %ebp,%ebp
  401042:	49 89 d1             	mov    %rdx,%r9
  401045:	5e                   	pop    %rsi
  401046:	48 89 e2             	mov    %rsp,%rdx
  401049:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40104d:	50                   	push   %rax
  40104e:	54                   	push   %rsp
  40104f:	49 c7 c0 10 2e 40 00 	mov    $0x402e10,%r8
  401056:	48 c7 c1 a0 2d 40 00 	mov    $0x402da0,%rcx
  40105d:	48 c7 c7 ca 11 40 00 	mov    $0x4011ca,%rdi
  401064:	e8 07 fe ff ff       	callq  400e70 <__libc_start_main@plt>
  401069:	f4                   	hlt    
  40106a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000401070 <deregister_tm_clones>:
  401070:	b8 4f 51 60 00       	mov    $0x60514f,%eax
  401075:	55                   	push   %rbp
  401076:	48 2d 48 51 60 00    	sub    $0x605148,%rax
  40107c:	48 83 f8 0e          	cmp    $0xe,%rax
  401080:	48 89 e5             	mov    %rsp,%rbp
  401083:	77 02                	ja     401087 <deregister_tm_clones+0x17>
  401085:	5d                   	pop    %rbp
  401086:	c3                   	retq   
  401087:	b8 00 00 00 00       	mov    $0x0,%eax
  40108c:	48 85 c0             	test   %rax,%rax
  40108f:	74 f4                	je     401085 <deregister_tm_clones+0x15>
  401091:	5d                   	pop    %rbp
  401092:	bf 48 51 60 00       	mov    $0x605148,%edi
  401097:	ff e0                	jmpq   *%rax
  401099:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004010a0 <register_tm_clones>:
  4010a0:	b8 48 51 60 00       	mov    $0x605148,%eax
  4010a5:	55                   	push   %rbp
  4010a6:	48 2d 48 51 60 00    	sub    $0x605148,%rax
  4010ac:	48 c1 f8 03          	sar    $0x3,%rax
  4010b0:	48 89 e5             	mov    %rsp,%rbp
  4010b3:	48 89 c2             	mov    %rax,%rdx
  4010b6:	48 c1 ea 3f          	shr    $0x3f,%rdx
  4010ba:	48 01 d0             	add    %rdx,%rax
  4010bd:	48 d1 f8             	sar    %rax
  4010c0:	75 02                	jne    4010c4 <register_tm_clones+0x24>
  4010c2:	5d                   	pop    %rbp
  4010c3:	c3                   	retq   
  4010c4:	ba 00 00 00 00       	mov    $0x0,%edx
  4010c9:	48 85 d2             	test   %rdx,%rdx
  4010cc:	74 f4                	je     4010c2 <register_tm_clones+0x22>
  4010ce:	5d                   	pop    %rbp
  4010cf:	48 89 c6             	mov    %rax,%rsi
  4010d2:	bf 48 51 60 00       	mov    $0x605148,%edi
  4010d7:	ff e2                	jmpq   *%rdx
  4010d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004010e0 <__do_global_dtors_aux>:
  4010e0:	80 3d 69 40 20 00 00 	cmpb   $0x0,0x204069(%rip)        # 605150 <completed.6355>
  4010e7:	75 11                	jne    4010fa <__do_global_dtors_aux+0x1a>
  4010e9:	55                   	push   %rbp
  4010ea:	48 89 e5             	mov    %rsp,%rbp
  4010ed:	e8 7e ff ff ff       	callq  401070 <deregister_tm_clones>
  4010f2:	5d                   	pop    %rbp
  4010f3:	c6 05 56 40 20 00 01 	movb   $0x1,0x204056(%rip)        # 605150 <completed.6355>
  4010fa:	f3 c3                	repz retq 
  4010fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401100 <frame_dummy>:
  401100:	48 83 3d e8 3c 20 00 	cmpq   $0x0,0x203ce8(%rip)        # 604df0 <__JCR_END__>
  401107:	00 
  401108:	74 1e                	je     401128 <frame_dummy+0x28>
  40110a:	b8 00 00 00 00       	mov    $0x0,%eax
  40110f:	48 85 c0             	test   %rax,%rax
  401112:	74 14                	je     401128 <frame_dummy+0x28>
  401114:	55                   	push   %rbp
  401115:	bf f0 4d 60 00       	mov    $0x604df0,%edi
  40111a:	48 89 e5             	mov    %rsp,%rbp
  40111d:	ff d0                	callq  *%rax
  40111f:	5d                   	pop    %rbp
  401120:	e9 7b ff ff ff       	jmpq   4010a0 <register_tm_clones>
  401125:	0f 1f 00             	nopl   (%rax)
  401128:	e9 73 ff ff ff       	jmpq   4010a0 <register_tm_clones>

000000000040112d <_Z11SetNonBlockib>:
#include <netinet/tcp.h> // for TCP_NODELAY

using namespace std;

void SetNonBlock(int fd, bool non_block)
{
  40112d:	55                   	push   %rbp
  40112e:	48 89 e5             	mov    %rsp,%rbp
  401131:	48 83 ec 20          	sub    $0x20,%rsp
  401135:	89 7d ec             	mov    %edi,-0x14(%rbp)
  401138:	89 f0                	mov    %esi,%eax
  40113a:	88 45 e8             	mov    %al,-0x18(%rbp)
	int f = fcntl(fd, F_GETFL);
  40113d:	8b 45 ec             	mov    -0x14(%rbp),%eax
  401140:	be 03 00 00 00       	mov    $0x3,%esi
  401145:	89 c7                	mov    %eax,%edi
  401147:	b8 00 00 00 00       	mov    $0x0,%eax
  40114c:	e8 bf fe ff ff       	callq  401010 <fcntl@plt>
  401151:	89 45 fc             	mov    %eax,-0x4(%rbp)
	if(non_block) 
  401154:	80 7d e8 00          	cmpb   $0x0,-0x18(%rbp)
  401158:	74 17                	je     401171 <_Z11SetNonBlockib+0x44>
	{
		// non-block
		if (f & O_NONBLOCK) return;
  40115a:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40115d:	25 00 08 00 00       	and    $0x800,%eax
  401162:	85 c0                	test   %eax,%eax
  401164:	74 02                	je     401168 <_Z11SetNonBlockib+0x3b>
  401166:	eb 37                	jmp    40119f <_Z11SetNonBlockib+0x72>
		else f |= O_NONBLOCK;
  401168:	81 4d fc 00 08 00 00 	orl    $0x800,-0x4(%rbp)
  40116f:	eb 17                	jmp    401188 <_Z11SetNonBlockib+0x5b>
	} 
	else 
	{
		// block
		if (f & O_NONBLOCK) f &= ~O_NONBLOCK;
  401171:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401174:	25 00 08 00 00       	and    $0x800,%eax
  401179:	85 c0                	test   %eax,%eax
  40117b:	74 09                	je     401186 <_Z11SetNonBlockib+0x59>
  40117d:	81 65 fc ff f7 ff ff 	andl   $0xfffff7ff,-0x4(%rbp)
  401184:	eb 02                	jmp    401188 <_Z11SetNonBlockib+0x5b>
		else return;
  401186:	eb 17                	jmp    40119f <_Z11SetNonBlockib+0x72>
	}   
	fcntl(fd, F_SETFL, f);
  401188:	8b 55 fc             	mov    -0x4(%rbp),%edx
  40118b:	8b 45 ec             	mov    -0x14(%rbp),%eax
  40118e:	be 04 00 00 00       	mov    $0x4,%esi
  401193:	89 c7                	mov    %eax,%edi
  401195:	b8 00 00 00 00       	mov    $0x0,%eax
  40119a:	e8 71 fe ff ff       	callq  401010 <fcntl@plt>
}
  40119f:	c9                   	leaveq 
  4011a0:	c3                   	retq   

00000000004011a1 <_Z11signal_funci>:

void signal_func(int sig)
{
  4011a1:	55                   	push   %rbp
  4011a2:	48 89 e5             	mov    %rsp,%rbp
  4011a5:	48 83 ec 10          	sub    $0x10,%rsp
  4011a9:	89 7d fc             	mov    %edi,-0x4(%rbp)
	fprintf(stderr, "signal_func SIGPIPE sig=%d\n", sig);
  4011ac:	48 8b 05 95 3f 20 00 	mov    0x203f95(%rip),%rax        # 605148 <stderr@@GLIBC_2.2.5>
  4011b3:	8b 55 fc             	mov    -0x4(%rbp),%edx
  4011b6:	be 33 2e 40 00       	mov    $0x402e33,%esi
  4011bb:	48 89 c7             	mov    %rax,%rdi
  4011be:	b8 00 00 00 00       	mov    $0x0,%eax
  4011c3:	e8 08 fe ff ff       	callq  400fd0 <fprintf@plt>
}
  4011c8:	c9                   	leaveq 
  4011c9:	c3                   	retq   

00000000004011ca <main>:

int main()
{
  4011ca:	55                   	push   %rbp
  4011cb:	48 89 e5             	mov    %rsp,%rbp
  4011ce:	53                   	push   %rbx
  4011cf:	48 81 ec c8 91 01 00 	sub    $0x191c8,%rsp
	signal(SIGPIPE, signal_func);
  4011d6:	be a1 11 40 00       	mov    $0x4011a1,%esi
  4011db:	bf 0d 00 00 00       	mov    $0xd,%edi
  4011e0:	e8 0b fd ff ff       	callq  400ef0 <signal@plt>

	unsigned short listen_port = 9231;
  4011e5:	66 c7 45 ea 0f 24    	movw   $0x240f,-0x16(%rbp)

	// socket
	int to_cli_fd = socket(AF_INET, SOCK_STREAM, 0); //接收客户端来的数据
  4011eb:	ba 00 00 00 00       	mov    $0x0,%edx
  4011f0:	be 01 00 00 00       	mov    $0x1,%esi
  4011f5:	bf 02 00 00 00       	mov    $0x2,%edi
  4011fa:	e8 01 fd ff ff       	callq  400f00 <socket@plt>
  4011ff:	89 45 e4             	mov    %eax,-0x1c(%rbp)
	if(to_cli_fd == -1)
  401202:	83 7d e4 ff          	cmpl   $0xffffffff,-0x1c(%rbp)
  401206:	75 28                	jne    401230 <main+0x66>
	{
		fprintf(stderr, "socket(to_cli_fd) error\n");
  401208:	48 8b 05 39 3f 20 00 	mov    0x203f39(%rip),%rax        # 605148 <stderr@@GLIBC_2.2.5>
  40120f:	48 89 c1             	mov    %rax,%rcx
  401212:	ba 18 00 00 00       	mov    $0x18,%edx
  401217:	be 01 00 00 00       	mov    $0x1,%esi
  40121c:	bf 4f 2e 40 00       	mov    $0x402e4f,%edi
  401221:	e8 7a fd ff ff       	callq  400fa0 <fwrite@plt>
		return -1;
  401226:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
  40122b:	e9 34 07 00 00       	jmpq   401964 <main+0x79a>
	}
	//noblock
	SetNonBlock(to_cli_fd, true);
  401230:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  401233:	be 01 00 00 00       	mov    $0x1,%esi
  401238:	89 c7                	mov    %eax,%edi
  40123a:	e8 ee fe ff ff       	callq  40112d <_Z11SetNonBlockib>
	
	int val = 1;
  40123f:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%rbp)
	if(setsockopt(to_cli_fd, SOL_SOCKET, SO_REUSEADDR, (void *)&val, sizeof(int)) == -1)
  401246:	48 8d 55 8c          	lea    -0x74(%rbp),%rdx
  40124a:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  40124d:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  401253:	48 89 d1             	mov    %rdx,%rcx
  401256:	ba 02 00 00 00       	mov    $0x2,%edx
  40125b:	be 01 00 00 00       	mov    $0x1,%esi
  401260:	89 c7                	mov    %eax,%edi
  401262:	e8 39 fc ff ff       	callq  400ea0 <setsockopt@plt>
  401267:	83 f8 ff             	cmp    $0xffffffff,%eax
  40126a:	0f 94 c0             	sete   %al
  40126d:	84 c0                	test   %al,%al
  40126f:	74 28                	je     401299 <main+0xcf>
	{
		fprintf(stderr, "setsockopt(to_cli_fd) error\n");
  401271:	48 8b 05 d0 3e 20 00 	mov    0x203ed0(%rip),%rax        # 605148 <stderr@@GLIBC_2.2.5>
  401278:	48 89 c1             	mov    %rax,%rcx
  40127b:	ba 1c 00 00 00       	mov    $0x1c,%edx
  401280:	be 01 00 00 00       	mov    $0x1,%esi
  401285:	bf 68 2e 40 00       	mov    $0x402e68,%edi
  40128a:	e8 11 fd ff ff       	callq  400fa0 <fwrite@plt>
		return -1;
  40128f:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
  401294:	e9 cb 06 00 00       	jmpq   401964 <main+0x79a>
	}
	int flag = 1;
  401299:	c7 45 88 01 00 00 00 	movl   $0x1,-0x78(%rbp)
	if(setsockopt(to_cli_fd, IPPROTO_TCP, TCP_NODELAY, (void*)&flag, sizeof(int)) == -1)
  4012a0:	48 8d 55 88          	lea    -0x78(%rbp),%rdx
  4012a4:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  4012a7:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  4012ad:	48 89 d1             	mov    %rdx,%rcx
  4012b0:	ba 01 00 00 00       	mov    $0x1,%edx
  4012b5:	be 06 00 00 00       	mov    $0x6,%esi
  4012ba:	89 c7                	mov    %eax,%edi
  4012bc:	e8 df fb ff ff       	callq  400ea0 <setsockopt@plt>
  4012c1:	83 f8 ff             	cmp    $0xffffffff,%eax
  4012c4:	0f 94 c0             	sete   %al
  4012c7:	84 c0                	test   %al,%al
  4012c9:	74 28                	je     4012f3 <main+0x129>
	{
		fprintf(stderr, "setsockopt(to_cli_fd) 1 error\n");
  4012cb:	48 8b 05 76 3e 20 00 	mov    0x203e76(%rip),%rax        # 605148 <stderr@@GLIBC_2.2.5>
  4012d2:	48 89 c1             	mov    %rax,%rcx
  4012d5:	ba 1e 00 00 00       	mov    $0x1e,%edx
  4012da:	be 01 00 00 00       	mov    $0x1,%esi
  4012df:	bf 88 2e 40 00       	mov    $0x402e88,%edi
  4012e4:	e8 b7 fc ff ff       	callq  400fa0 <fwrite@plt>
		return -1;
  4012e9:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
  4012ee:	e9 71 06 00 00       	jmpq   401964 <main+0x79a>
	}

	// 服务器的地址信息
	sockaddr_in listen_addr;
	memset(&listen_addr, 0, sizeof(listen_addr));
  4012f3:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
  4012fa:	ba 10 00 00 00       	mov    $0x10,%edx
  4012ff:	be 00 00 00 00       	mov    $0x0,%esi
  401304:	48 89 c7             	mov    %rax,%rdi
  401307:	e8 d4 fa ff ff       	callq  400de0 <memset@plt>
	listen_addr.sin_family = AF_INET;
  40130c:	66 c7 85 70 ff ff ff 	movw   $0x2,-0x90(%rbp)
  401313:	02 00 
	listen_addr.sin_addr.s_addr = inet_addr("0.0.0.0");
  401315:	bf a7 2e 40 00       	mov    $0x402ea7,%edi
  40131a:	e8 01 fd ff ff       	callq  401020 <inet_addr@plt>
  40131f:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%rbp)
	listen_addr.sin_port = htons(listen_port);
  401325:	0f b7 45 ea          	movzwl -0x16(%rbp),%eax
  401329:	89 c7                	mov    %eax,%edi
  40132b:	e8 00 fb ff ff       	callq  400e30 <htons@plt>
  401330:	66 89 85 72 ff ff ff 	mov    %ax,-0x8e(%rbp)

	// 捆绑socket描述符sockfd
	if(bind(to_cli_fd, (sockaddr*)&listen_addr, sizeof(listen_addr)) == -1) 
  401337:	48 8d 8d 70 ff ff ff 	lea    -0x90(%rbp),%rcx
  40133e:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  401341:	ba 10 00 00 00       	mov    $0x10,%edx
  401346:	48 89 ce             	mov    %rcx,%rsi
  401349:	89 c7                	mov    %eax,%edi
  40134b:	e8 40 fc ff ff       	callq  400f90 <bind@plt>
  401350:	83 f8 ff             	cmp    $0xffffffff,%eax
  401353:	0f 94 c0             	sete   %al
  401356:	84 c0                	test   %al,%al
  401358:	74 28                	je     401382 <main+0x1b8>
	{
		fprintf(stderr, "bind error.\n"); 
  40135a:	48 8b 05 e7 3d 20 00 	mov    0x203de7(%rip),%rax        # 605148 <stderr@@GLIBC_2.2.5>
  401361:	48 89 c1             	mov    %rax,%rcx
  401364:	ba 0c 00 00 00       	mov    $0xc,%edx
  401369:	be 01 00 00 00       	mov    $0x1,%esi
  40136e:	bf af 2e 40 00       	mov    $0x402eaf,%edi
  401373:	e8 28 fc ff ff       	callq  400fa0 <fwrite@plt>
		return -1;    
  401378:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
  40137d:	e9 e2 05 00 00       	jmpq   401964 <main+0x79a>
	}
	
	if(listen(to_cli_fd, SOMAXCONN) == -1)
  401382:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  401385:	be 80 00 00 00       	mov    $0x80,%esi
  40138a:	89 c7                	mov    %eax,%edi
  40138c:	e8 2f fb ff ff       	callq  400ec0 <listen@plt>
  401391:	83 f8 ff             	cmp    $0xffffffff,%eax
  401394:	0f 94 c0             	sete   %al
  401397:	84 c0                	test   %al,%al
  401399:	74 2a                	je     4013c5 <main+0x1fb>
	{
		fprintf(stderr, "listen(to_cli_fd) error %d\n", errno);
  40139b:	e8 70 fb ff ff       	callq  400f10 <__errno_location@plt>
  4013a0:	8b 10                	mov    (%rax),%edx
  4013a2:	48 8b 05 9f 3d 20 00 	mov    0x203d9f(%rip),%rax        # 605148 <stderr@@GLIBC_2.2.5>
  4013a9:	be bc 2e 40 00       	mov    $0x402ebc,%esi
  4013ae:	48 89 c7             	mov    %rax,%rdi
  4013b1:	b8 00 00 00 00       	mov    $0x0,%eax
  4013b6:	e8 15 fc ff ff       	callq  400fd0 <fprintf@plt>
		return -1;
  4013bb:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
  4013c0:	e9 9f 05 00 00       	jmpq   401964 <main+0x79a>
	}

	set<int> fds;
  4013c5:	48 8d 85 30 6e fe ff 	lea    -0x191d0(%rbp),%rax
  4013cc:	48 89 c7             	mov    %rax,%rdi
  4013cf:	e8 20 06 00 00       	callq  4019f4 <_ZNSt3setIiSt4lessIiESaIiEEC1Ev>

	while(true)
	{
		int max_fd = 0;
  4013d4:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
		fd_set rset;
		FD_ZERO(&rset);
  4013db:	ba 10 00 00 00       	mov    $0x10,%edx
  4013e0:	b8 00 00 00 00       	mov    $0x0,%eax
  4013e5:	48 8d b5 90 6e fe ff 	lea    -0x19170(%rbp),%rsi
  4013ec:	48 89 d1             	mov    %rdx,%rcx
  4013ef:	48 89 f7             	mov    %rsi,%rdi
  4013f2:	fc                   	cld    
  4013f3:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4013f6:	89 f8                	mov    %edi,%eax
  4013f8:	89 ca                	mov    %ecx,%edx
  4013fa:	89 55 e0             	mov    %edx,-0x20(%rbp)
  4013fd:	89 45 dc             	mov    %eax,-0x24(%rbp)

		for(auto it=fds.begin(); it!=fds.end(); ++it)
  401400:	48 8d 85 30 6e fe ff 	lea    -0x191d0(%rbp),%rax
  401407:	48 89 c7             	mov    %rax,%rdi
  40140a:	e8 51 06 00 00       	callq  401a60 <_ZNKSt3setIiSt4lessIiESaIiEE5beginEv>
  40140f:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
  401416:	e9 82 00 00 00       	jmpq   40149d <main+0x2d3>
		{
			int fd = *it;
  40141b:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
  401422:	48 89 c7             	mov    %rax,%rdi
  401425:	e8 b4 06 00 00       	callq  401ade <_ZNKSt23_Rb_tree_const_iteratorIiEdeEv>
  40142a:	8b 00                	mov    (%rax),%eax
  40142c:	89 45 d8             	mov    %eax,-0x28(%rbp)
			if(fd > max_fd) max_fd = fd;
  40142f:	8b 45 d8             	mov    -0x28(%rbp),%eax
  401432:	3b 45 ec             	cmp    -0x14(%rbp),%eax
  401435:	7e 06                	jle    40143d <main+0x273>
  401437:	8b 45 d8             	mov    -0x28(%rbp),%eax
  40143a:	89 45 ec             	mov    %eax,-0x14(%rbp)
			FD_SET(fd, &rset);
  40143d:	b8 08 00 00 00       	mov    $0x8,%eax
  401442:	8d 1c c5 00 00 00 00 	lea    0x0(,%rax,8),%ebx
  401449:	8b 45 d8             	mov    -0x28(%rbp),%eax
  40144c:	99                   	cltd   
  40144d:	f7 fb                	idiv   %ebx
  40144f:	89 c6                	mov    %eax,%esi
  401451:	48 63 c6             	movslq %esi,%rax
  401454:	48 8b bc c5 90 6e fe 	mov    -0x19170(%rbp,%rax,8),%rdi
  40145b:	ff 
  40145c:	b8 08 00 00 00       	mov    $0x8,%eax
  401461:	8d 0c c5 00 00 00 00 	lea    0x0(,%rax,8),%ecx
  401468:	8b 45 d8             	mov    -0x28(%rbp),%eax
  40146b:	99                   	cltd   
  40146c:	f7 f9                	idiv   %ecx
  40146e:	89 d0                	mov    %edx,%eax
  401470:	ba 01 00 00 00       	mov    $0x1,%edx
  401475:	89 c1                	mov    %eax,%ecx
  401477:	48 d3 e2             	shl    %cl,%rdx
  40147a:	48 89 d0             	mov    %rdx,%rax
  40147d:	48 09 c7             	or     %rax,%rdi
  401480:	48 89 fa             	mov    %rdi,%rdx
  401483:	48 63 c6             	movslq %esi,%rax
  401486:	48 89 94 c5 90 6e fe 	mov    %rdx,-0x19170(%rbp,%rax,8)
  40148d:	ff 
		for(auto it=fds.begin(); it!=fds.end(); ++it)
  40148e:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
  401495:	48 89 c7             	mov    %rax,%rdi
  401498:	e8 19 06 00 00       	callq  401ab6 <_ZNSt23_Rb_tree_const_iteratorIiEppEv>
  40149d:	48 8d 85 30 6e fe ff 	lea    -0x191d0(%rbp),%rax
  4014a4:	48 89 c7             	mov    %rax,%rdi
  4014a7:	e8 ce 05 00 00       	callq  401a7a <_ZNKSt3setIiSt4lessIiESaIiEE3endEv>
  4014ac:	48 89 45 90          	mov    %rax,-0x70(%rbp)
  4014b0:	48 8d 55 90          	lea    -0x70(%rbp),%rdx
  4014b4:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
  4014bb:	48 89 d6             	mov    %rdx,%rsi
  4014be:	48 89 c7             	mov    %rax,%rdi
  4014c1:	e8 ce 05 00 00       	callq  401a94 <_ZNKSt23_Rb_tree_const_iteratorIiEneERKS0_>
  4014c6:	84 c0                	test   %al,%al
  4014c8:	0f 85 4d ff ff ff    	jne    40141b <main+0x251>
		}

		if(to_cli_fd>max_fd) max_fd = to_cli_fd; 
  4014ce:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  4014d1:	3b 45 ec             	cmp    -0x14(%rbp),%eax
  4014d4:	7e 06                	jle    4014dc <main+0x312>
  4014d6:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  4014d9:	89 45 ec             	mov    %eax,-0x14(%rbp)
		FD_SET(to_cli_fd, &rset);
  4014dc:	b8 08 00 00 00       	mov    $0x8,%eax
  4014e1:	8d 1c c5 00 00 00 00 	lea    0x0(,%rax,8),%ebx
  4014e8:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  4014eb:	99                   	cltd   
  4014ec:	f7 fb                	idiv   %ebx
  4014ee:	89 c6                	mov    %eax,%esi
  4014f0:	48 63 c6             	movslq %esi,%rax
  4014f3:	48 8b bc c5 90 6e fe 	mov    -0x19170(%rbp,%rax,8),%rdi
  4014fa:	ff 
  4014fb:	b8 08 00 00 00       	mov    $0x8,%eax
  401500:	8d 0c c5 00 00 00 00 	lea    0x0(,%rax,8),%ecx
  401507:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  40150a:	99                   	cltd   
  40150b:	f7 f9                	idiv   %ecx
  40150d:	89 d0                	mov    %edx,%eax
  40150f:	ba 01 00 00 00       	mov    $0x1,%edx
  401514:	89 c1                	mov    %eax,%ecx
  401516:	48 d3 e2             	shl    %cl,%rdx
  401519:	48 89 d0             	mov    %rdx,%rax
  40151c:	48 09 c7             	or     %rax,%rdi
  40151f:	48 89 fa             	mov    %rdi,%rdx
  401522:	48 63 c6             	movslq %esi,%rax
  401525:	48 89 94 c5 90 6e fe 	mov    %rdx,-0x19170(%rbp,%rax,8)
  40152c:	ff 
		
		timeval tv;
		tv.tv_sec = 0;
  40152d:	48 c7 85 60 ff ff ff 	movq   $0x0,-0xa0(%rbp)
  401534:	00 00 00 00 
		tv.tv_usec = 10*1000;
  401538:	48 c7 85 68 ff ff ff 	movq   $0x2710,-0x98(%rbp)
  40153f:	10 27 00 00 
		if(select(max_fd+1, &rset, 0, 0, &tv) == -1)
  401543:	8b 45 ec             	mov    -0x14(%rbp),%eax
  401546:	8d 78 01             	lea    0x1(%rax),%edi
  401549:	48 8d 95 60 ff ff ff 	lea    -0xa0(%rbp),%rdx
  401550:	48 8d 85 90 6e fe ff 	lea    -0x19170(%rbp),%rax
  401557:	49 89 d0             	mov    %rdx,%r8
  40155a:	b9 00 00 00 00       	mov    $0x0,%ecx
  40155f:	ba 00 00 00 00       	mov    $0x0,%edx
  401564:	48 89 c6             	mov    %rax,%rsi
  401567:	e8 d4 f8 ff ff       	callq  400e40 <select@plt>
  40156c:	83 f8 ff             	cmp    $0xffffffff,%eax
  40156f:	0f 94 c0             	sete   %al
  401572:	84 c0                	test   %al,%al
  401574:	74 59                	je     4015cf <main+0x405>
		{
			if(errno != EINTR)
  401576:	e8 95 f9 ff ff       	callq  400f10 <__errno_location@plt>
  40157b:	8b 00                	mov    (%rax),%eax
  40157d:	83 f8 04             	cmp    $0x4,%eax
  401580:	74 28                	je     4015aa <main+0x3e0>
			{
				fprintf(stderr, "select error\n");
  401582:	48 8b 05 bf 3b 20 00 	mov    0x203bbf(%rip),%rax        # 605148 <stderr@@GLIBC_2.2.5>
  401589:	48 89 c1             	mov    %rax,%rcx
  40158c:	ba 0d 00 00 00       	mov    $0xd,%edx
  401591:	be 01 00 00 00       	mov    $0x1,%esi
  401596:	bf d8 2e 40 00       	mov    $0x402ed8,%edi
  40159b:	e8 00 fa ff ff       	callq  400fa0 <fwrite@plt>
				return -1;
  4015a0:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
  4015a5:	e9 ab 03 00 00       	jmpq   401955 <main+0x78b>
			}
			FD_ZERO(&rset); //do clear
  4015aa:	ba 10 00 00 00       	mov    $0x10,%edx
  4015af:	b8 00 00 00 00       	mov    $0x0,%eax
  4015b4:	48 8d b5 90 6e fe ff 	lea    -0x19170(%rbp),%rsi
  4015bb:	48 89 d1             	mov    %rdx,%rcx
  4015be:	48 89 f7             	mov    %rsi,%rdi
  4015c1:	fc                   	cld    
  4015c2:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4015c5:	89 f8                	mov    %edi,%eax
  4015c7:	89 ca                	mov    %ecx,%edx
  4015c9:	89 55 d4             	mov    %edx,-0x2c(%rbp)
  4015cc:	89 45 d0             	mov    %eax,-0x30(%rbp)
		}
		
		//gettimeofday(&tv, 0);
		//int64_t now_ms = tv.tv_sec*1000+tv.tv_usec/1000;
		
		if(FD_ISSET(to_cli_fd, &rset))
  4015cf:	b8 08 00 00 00       	mov    $0x8,%eax
  4015d4:	8d 1c c5 00 00 00 00 	lea    0x0(,%rax,8),%ebx
  4015db:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  4015de:	99                   	cltd   
  4015df:	f7 fb                	idiv   %ebx
  4015e1:	48 98                	cltq   
  4015e3:	48 8b b4 c5 90 6e fe 	mov    -0x19170(%rbp,%rax,8),%rsi
  4015ea:	ff 
  4015eb:	b8 08 00 00 00       	mov    $0x8,%eax
  4015f0:	8d 0c c5 00 00 00 00 	lea    0x0(,%rax,8),%ecx
  4015f7:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  4015fa:	99                   	cltd   
  4015fb:	f7 f9                	idiv   %ecx
  4015fd:	89 d0                	mov    %edx,%eax
  4015ff:	89 c1                	mov    %eax,%ecx
  401601:	48 d3 fe             	sar    %cl,%rsi
  401604:	48 89 f0             	mov    %rsi,%rax
  401607:	83 e0 01             	and    $0x1,%eax
  40160a:	48 85 c0             	test   %rax,%rax
  40160d:	74 7d                	je     40168c <main+0x4c2>
		{
			int fd = to_cli_fd;
  40160f:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  401612:	89 45 cc             	mov    %eax,-0x34(%rbp)
			sockaddr_in src_addr;
			socklen_t l = sizeof(src_addr);
  401615:	c7 85 3c ff ff ff 10 	movl   $0x10,-0xc4(%rbp)
  40161c:	00 00 00 
        
			int nowfd = accept(fd, (struct sockaddr*)&src_addr, &l);
  40161f:	48 8d 95 3c ff ff ff 	lea    -0xc4(%rbp),%rdx
  401626:	48 8d 8d 40 ff ff ff 	lea    -0xc0(%rbp),%rcx
  40162d:	8b 45 cc             	mov    -0x34(%rbp),%eax
  401630:	48 89 ce             	mov    %rcx,%rsi
  401633:	89 c7                	mov    %eax,%edi
  401635:	e8 c6 f9 ff ff       	callq  401000 <accept@plt>
  40163a:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%rbp)
			//fprintf(stderr, "fd == to_cli_fd accept fd=%d, nowfd=%d\n", fd, nowfd);
			if(nowfd == -1)
  401640:	8b 85 38 ff ff ff    	mov    -0xc8(%rbp),%eax
  401646:	83 f8 ff             	cmp    $0xffffffff,%eax
  401649:	75 28                	jne    401673 <main+0x4a9>
			{
				fprintf(stderr, "socket(to_cli_fd) error\n");
  40164b:	48 8b 05 f6 3a 20 00 	mov    0x203af6(%rip),%rax        # 605148 <stderr@@GLIBC_2.2.5>
  401652:	48 89 c1             	mov    %rax,%rcx
  401655:	ba 18 00 00 00       	mov    $0x18,%edx
  40165a:	be 01 00 00 00       	mov    $0x1,%esi
  40165f:	bf 4f 2e 40 00       	mov    $0x402e4f,%edi
  401664:	e8 37 f9 ff ff       	callq  400fa0 <fwrite@plt>
				return -1;
  401669:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
  40166e:	e9 e2 02 00 00       	jmpq   401955 <main+0x78b>
			}
			else
			{
				fds.insert(nowfd);
  401673:	48 8d 95 38 ff ff ff 	lea    -0xc8(%rbp),%rdx
  40167a:	48 8d 85 30 6e fe ff 	lea    -0x191d0(%rbp),%rax
  401681:	48 89 d6             	mov    %rdx,%rsi
  401684:	48 89 c7             	mov    %rax,%rdi
  401687:	e8 ce 04 00 00       	callq  401b5a <_ZNSt3setIiSt4lessIiESaIiEE6insertERKi>
			}
        
		}
		set<int> need_del_fd;
  40168c:	48 8d 85 60 6e fe ff 	lea    -0x191a0(%rbp),%rax
  401693:	48 89 c7             	mov    %rax,%rdi
  401696:	e8 59 03 00 00       	callq  4019f4 <_ZNSt3setIiSt4lessIiESaIiEEC1Ev>
		for(auto it=fds.begin(); it!=fds.end(); ++it)
  40169b:	48 8d 85 30 6e fe ff 	lea    -0x191d0(%rbp),%rax
  4016a2:	48 89 c7             	mov    %rax,%rdi
  4016a5:	e8 b6 03 00 00       	callq  401a60 <_ZNKSt3setIiSt4lessIiESaIiEE5beginEv>
  4016aa:	48 89 85 30 ff ff ff 	mov    %rax,-0xd0(%rbp)
  4016b1:	e9 d8 01 00 00       	jmpq   40188e <main+0x6c4>
		{
			int fd = *it;
  4016b6:	48 8d 85 30 ff ff ff 	lea    -0xd0(%rbp),%rax
  4016bd:	48 89 c7             	mov    %rax,%rdi
  4016c0:	e8 19 04 00 00       	callq  401ade <_ZNKSt23_Rb_tree_const_iteratorIiEdeEv>
  4016c5:	8b 00                	mov    (%rax),%eax
  4016c7:	89 85 2c ff ff ff    	mov    %eax,-0xd4(%rbp)
			if(FD_ISSET(fd, &rset))
  4016cd:	8b 85 2c ff ff ff    	mov    -0xd4(%rbp),%eax
  4016d3:	ba 08 00 00 00       	mov    $0x8,%edx
  4016d8:	8d 1c d5 00 00 00 00 	lea    0x0(,%rdx,8),%ebx
  4016df:	99                   	cltd   
  4016e0:	f7 fb                	idiv   %ebx
  4016e2:	48 98                	cltq   
  4016e4:	48 8b b4 c5 90 6e fe 	mov    -0x19170(%rbp,%rax,8),%rsi
  4016eb:	ff 
  4016ec:	8b 85 2c ff ff ff    	mov    -0xd4(%rbp),%eax
  4016f2:	ba 08 00 00 00       	mov    $0x8,%edx
  4016f7:	8d 0c d5 00 00 00 00 	lea    0x0(,%rdx,8),%ecx
  4016fe:	99                   	cltd   
  4016ff:	f7 f9                	idiv   %ecx
  401701:	89 d0                	mov    %edx,%eax
  401703:	89 c1                	mov    %eax,%ecx
  401705:	48 d3 fe             	sar    %cl,%rsi
  401708:	48 89 f0             	mov    %rsi,%rax
  40170b:	83 e0 01             	and    $0x1,%eax
  40170e:	48 85 c0             	test   %rax,%rax
  401711:	0f 84 68 01 00 00    	je     40187f <main+0x6b5>
			{
				char buf[1024*100];
				//char buf[BUFFER_SIZE];
				ssize_t ret = recv(fd, buf, sizeof(buf), 0);
  401717:	8b 85 2c ff ff ff    	mov    -0xd4(%rbp),%eax
  40171d:	48 8d b5 10 6f fe ff 	lea    -0x190f0(%rbp),%rsi
  401724:	b9 00 00 00 00       	mov    $0x0,%ecx
  401729:	ba 00 90 01 00       	mov    $0x19000,%edx
  40172e:	89 c7                	mov    %eax,%edi
  401730:	e8 4b f7 ff ff       	callq  400e80 <recv@plt>
  401735:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
				//fprintf(stderr, "recv ret=%ld error=%d fd=%d\n", ret, errno, fd);
				if(ret > 0)
  401739:	48 83 7d c0 00       	cmpq   $0x0,-0x40(%rbp)
  40173e:	0f 8e 12 01 00 00    	jle    401856 <main+0x68c>
				{
					string data(buf, ret);
  401744:	48 8d 45 9f          	lea    -0x61(%rbp),%rax
  401748:	48 89 c7             	mov    %rax,%rdi
  40174b:	e8 60 f8 ff ff       	callq  400fb0 <_ZNSaIcEC1Ev@plt>
  401750:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  401754:	48 8d 4d 9f          	lea    -0x61(%rbp),%rcx
  401758:	48 8d b5 10 6f fe ff 	lea    -0x190f0(%rbp),%rsi
  40175f:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
  401766:	48 89 c7             	mov    %rax,%rdi
  401769:	e8 92 f6 ff ff       	callq  400e00 <_ZNSsC1EPKcmRKSaIcE@plt>
  40176e:	48 8d 45 9f          	lea    -0x61(%rbp),%rax
  401772:	48 89 c7             	mov    %rax,%rdi
  401775:	e8 c6 f7 ff ff       	callq  400f40 <_ZNSaIcED1Ev@plt>
					fprintf(stderr, "recv ret=%ld buf=%s\n", ret, data.c_str());
  40177a:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
  401781:	48 89 c7             	mov    %rax,%rdi
  401784:	e8 87 f6 ff ff       	callq  400e10 <_ZNKSs5c_strEv@plt>
  401789:	48 89 c1             	mov    %rax,%rcx
  40178c:	48 8b 05 b5 39 20 00 	mov    0x2039b5(%rip),%rax        # 605148 <stderr@@GLIBC_2.2.5>
  401793:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  401797:	be e6 2e 40 00       	mov    $0x402ee6,%esi
  40179c:	48 89 c7             	mov    %rax,%rdi
  40179f:	b8 00 00 00 00       	mov    $0x0,%eax
  4017a4:	e8 27 f8 ff ff       	callq  400fd0 <fprintf@plt>
					int ret = send(fd, data.c_str(), data.size(), 0);
  4017a9:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
  4017b0:	48 89 c7             	mov    %rax,%rdi
  4017b3:	e8 a8 f6 ff ff       	callq  400e60 <_ZNKSs4sizeEv@plt>
  4017b8:	48 89 c3             	mov    %rax,%rbx
  4017bb:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
  4017c2:	48 89 c7             	mov    %rax,%rdi
  4017c5:	e8 46 f6 ff ff       	callq  400e10 <_ZNKSs5c_strEv@plt>
  4017ca:	48 89 c6             	mov    %rax,%rsi
  4017cd:	8b 85 2c ff ff ff    	mov    -0xd4(%rbp),%eax
  4017d3:	b9 00 00 00 00       	mov    $0x0,%ecx
  4017d8:	48 89 da             	mov    %rbx,%rdx
  4017db:	89 c7                	mov    %eax,%edi
  4017dd:	e8 6e f7 ff ff       	callq  400f50 <send@plt>
  4017e2:	89 45 bc             	mov    %eax,-0x44(%rbp)
					if(ret <= 0)
  4017e5:	83 7d bc 00          	cmpl   $0x0,-0x44(%rbp)
  4017e9:	7f 4f                	jg     40183a <main+0x670>
					{
						fprintf(stderr, "send _to_svr_fd=%d, ret=%d\n", fd, ret);
  4017eb:	8b 95 2c ff ff ff    	mov    -0xd4(%rbp),%edx
  4017f1:	48 8b 05 50 39 20 00 	mov    0x203950(%rip),%rax        # 605148 <stderr@@GLIBC_2.2.5>
  4017f8:	8b 4d bc             	mov    -0x44(%rbp),%ecx
  4017fb:	be fb 2e 40 00       	mov    $0x402efb,%esi
  401800:	48 89 c7             	mov    %rax,%rdi
  401803:	b8 00 00 00 00       	mov    $0x0,%eax
  401808:	e8 c3 f7 ff ff       	callq  400fd0 <fprintf@plt>
						close(fd);
  40180d:	8b 85 2c ff ff ff    	mov    -0xd4(%rbp),%eax
  401813:	89 c7                	mov    %eax,%edi
  401815:	e8 d6 f5 ff ff       	callq  400df0 <close@plt>
						need_del_fd.insert(fd);
  40181a:	48 8d 95 2c ff ff ff 	lea    -0xd4(%rbp),%rdx
  401821:	48 8d 85 60 6e fe ff 	lea    -0x191a0(%rbp),%rax
  401828:	48 89 d6             	mov    %rdx,%rsi
  40182b:	48 89 c7             	mov    %rax,%rdi
  40182e:	e8 27 03 00 00       	callq  401b5a <_ZNSt3setIiSt4lessIiESaIiEE6insertERKi>
  401833:	bb 00 00 00 00       	mov    $0x0,%ebx
						continue;
  401838:	eb 05                	jmp    40183f <main+0x675>
  40183a:	bb 01 00 00 00       	mov    $0x1,%ebx
  40183f:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
  401846:	48 89 c7             	mov    %rax,%rdi
  401849:	e8 62 f6 ff ff       	callq  400eb0 <_ZNSsD1Ev@plt>
  40184e:	83 fb 01             	cmp    $0x1,%ebx
  401851:	75 2c                	jne    40187f <main+0x6b5>
					}
  401853:	90                   	nop
  401854:	eb 29                	jmp    40187f <main+0x6b5>
				}
				else
				{
					//fprintf(stderr, "all_srv_fds recv ret=%ld error=%d srv=%d\n", ret, errno, fd);
					close(fd);
  401856:	8b 85 2c ff ff ff    	mov    -0xd4(%rbp),%eax
  40185c:	89 c7                	mov    %eax,%edi
  40185e:	e8 8d f5 ff ff       	callq  400df0 <close@plt>
					need_del_fd.insert(fd);
  401863:	48 8d 95 2c ff ff ff 	lea    -0xd4(%rbp),%rdx
  40186a:	48 8d 85 60 6e fe ff 	lea    -0x191a0(%rbp),%rax
  401871:	48 89 d6             	mov    %rdx,%rsi
  401874:	48 89 c7             	mov    %rax,%rdi
  401877:	e8 de 02 00 00       	callq  401b5a <_ZNSt3setIiSt4lessIiESaIiEE6insertERKi>
					continue;
  40187c:	90                   	nop
  40187d:	eb 00                	jmp    40187f <main+0x6b5>
		for(auto it=fds.begin(); it!=fds.end(); ++it)
  40187f:	48 8d 85 30 ff ff ff 	lea    -0xd0(%rbp),%rax
  401886:	48 89 c7             	mov    %rax,%rdi
  401889:	e8 28 02 00 00       	callq  401ab6 <_ZNSt23_Rb_tree_const_iteratorIiEppEv>
  40188e:	48 8d 85 30 6e fe ff 	lea    -0x191d0(%rbp),%rax
  401895:	48 89 c7             	mov    %rax,%rdi
  401898:	e8 dd 01 00 00       	callq  401a7a <_ZNKSt3setIiSt4lessIiESaIiEE3endEv>
  40189d:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  4018a1:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
  4018a5:	48 8d 85 30 ff ff ff 	lea    -0xd0(%rbp),%rax
  4018ac:	48 89 d6             	mov    %rdx,%rsi
  4018af:	48 89 c7             	mov    %rax,%rdi
  4018b2:	e8 dd 01 00 00       	callq  401a94 <_ZNKSt23_Rb_tree_const_iteratorIiEneERKS0_>
  4018b7:	84 c0                	test   %al,%al
  4018b9:	0f 85 f7 fd ff ff    	jne    4016b6 <main+0x4ec>
				}
			}
		}

		for(auto it=need_del_fd.begin(); it!=need_del_fd.end(); ++it)
  4018bf:	48 8d 85 60 6e fe ff 	lea    -0x191a0(%rbp),%rax
  4018c6:	48 89 c7             	mov    %rax,%rdi
  4018c9:	e8 92 01 00 00       	callq  401a60 <_ZNKSt3setIiSt4lessIiESaIiEE5beginEv>
  4018ce:	48 89 85 10 ff ff ff 	mov    %rax,-0xf0(%rbp)
  4018d5:	eb 33                	jmp    40190a <main+0x740>
		{
			fds.erase(*it);
  4018d7:	48 8d 85 10 ff ff ff 	lea    -0xf0(%rbp),%rax
  4018de:	48 89 c7             	mov    %rax,%rdi
  4018e1:	e8 f8 01 00 00       	callq  401ade <_ZNKSt23_Rb_tree_const_iteratorIiEdeEv>
  4018e6:	48 89 c2             	mov    %rax,%rdx
  4018e9:	48 8d 85 30 6e fe ff 	lea    -0x191d0(%rbp),%rax
  4018f0:	48 89 d6             	mov    %rdx,%rsi
  4018f3:	48 89 c7             	mov    %rax,%rdi
  4018f6:	e8 af 02 00 00       	callq  401baa <_ZNSt3setIiSt4lessIiESaIiEE5eraseERKi>
		for(auto it=need_del_fd.begin(); it!=need_del_fd.end(); ++it)
  4018fb:	48 8d 85 10 ff ff ff 	lea    -0xf0(%rbp),%rax
  401902:	48 89 c7             	mov    %rax,%rdi
  401905:	e8 ac 01 00 00       	callq  401ab6 <_ZNSt23_Rb_tree_const_iteratorIiEppEv>
  40190a:	48 8d 85 60 6e fe ff 	lea    -0x191a0(%rbp),%rax
  401911:	48 89 c7             	mov    %rax,%rdi
  401914:	e8 61 01 00 00       	callq  401a7a <_ZNKSt3setIiSt4lessIiESaIiEE3endEv>
  401919:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  40191d:	48 8d 55 b0          	lea    -0x50(%rbp),%rdx
  401921:	48 8d 85 10 ff ff ff 	lea    -0xf0(%rbp),%rax
  401928:	48 89 d6             	mov    %rdx,%rsi
  40192b:	48 89 c7             	mov    %rax,%rdi
  40192e:	e8 61 01 00 00       	callq  401a94 <_ZNKSt23_Rb_tree_const_iteratorIiEneERKS0_>
  401933:	84 c0                	test   %al,%al
  401935:	75 a0                	jne    4018d7 <main+0x70d>
		}

		usleep(1000);
  401937:	bf e8 03 00 00       	mov    $0x3e8,%edi
  40193c:	e8 9f f5 ff ff       	callq  400ee0 <usleep@plt>
	}
  401941:	48 8d 85 60 6e fe ff 	lea    -0x191a0(%rbp),%rax
  401948:	48 89 c7             	mov    %rax,%rdi
  40194b:	e8 8a 00 00 00       	callq  4019da <_ZNSt3setIiSt4lessIiESaIiEED1Ev>
  401950:	e9 7f fa ff ff       	jmpq   4013d4 <main+0x20a>

	return 0;
  401955:	48 8d 85 30 6e fe ff 	lea    -0x191d0(%rbp),%rax
  40195c:	48 89 c7             	mov    %rax,%rdi
  40195f:	e8 76 00 00 00       	callq  4019da <_ZNSt3setIiSt4lessIiESaIiEED1Ev>
  401964:	89 d8                	mov    %ebx,%eax
  401966:	eb 56                	jmp    4019be <main+0x7f4>
  401968:	48 89 c3             	mov    %rax,%rbx
  40196b:	48 8d 45 9f          	lea    -0x61(%rbp),%rax
  40196f:	48 89 c7             	mov    %rax,%rdi
  401972:	e8 c9 f5 ff ff       	callq  400f40 <_ZNSaIcED1Ev@plt>
  401977:	eb 17                	jmp    401990 <main+0x7c6>
  401979:	48 89 c3             	mov    %rax,%rbx
					}
  40197c:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
  401983:	48 89 c7             	mov    %rax,%rdi
  401986:	e8 25 f5 ff ff       	callq  400eb0 <_ZNSsD1Ev@plt>
  40198b:	eb 03                	jmp    401990 <main+0x7c6>
  40198d:	48 89 c3             	mov    %rax,%rbx
	}
  401990:	48 8d 85 60 6e fe ff 	lea    -0x191a0(%rbp),%rax
  401997:	48 89 c7             	mov    %rax,%rdi
  40199a:	e8 3b 00 00 00       	callq  4019da <_ZNSt3setIiSt4lessIiESaIiEED1Ev>
  40199f:	eb 03                	jmp    4019a4 <main+0x7da>
  4019a1:	48 89 c3             	mov    %rax,%rbx
	return 0;
  4019a4:	48 8d 85 30 6e fe ff 	lea    -0x191d0(%rbp),%rax
  4019ab:	48 89 c7             	mov    %rax,%rdi
  4019ae:	e8 27 00 00 00       	callq  4019da <_ZNSt3setIiSt4lessIiESaIiEED1Ev>
  4019b3:	48 89 d8             	mov    %rbx,%rax
  4019b6:	48 89 c7             	mov    %rax,%rdi
  4019b9:	e8 32 f6 ff ff       	callq  400ff0 <_Unwind_Resume@plt>
}
  4019be:	48 81 c4 c8 91 01 00 	add    $0x191c8,%rsp
  4019c5:	5b                   	pop    %rbx
  4019c6:	5d                   	pop    %rbp
  4019c7:	c3                   	retq   

00000000004019c8 <_ZnwmPv>:
void operator delete[](void*, const std::nothrow_t&) _GLIBCXX_USE_NOEXCEPT
  __attribute__((__externally_visible__));

// Default placement versions of operator new.
inline void* operator new(std::size_t, void* __p) _GLIBCXX_USE_NOEXCEPT
{ return __p; }
  4019c8:	55                   	push   %rbp
  4019c9:	48 89 e5             	mov    %rsp,%rbp
  4019cc:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4019d0:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  4019d4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4019d8:	5d                   	pop    %rbp
  4019d9:	c3                   	retq   

00000000004019da <_ZNSt3setIiSt4lessIiESaIiEED1Ev>:
   *  multiset; the distinction is made entirely in how the tree functions are
   *  called (*_unique versus *_equal, same as the standard).
  */
  template<typename _Key, typename _Compare = std::less<_Key>,
	   typename _Alloc = std::allocator<_Key> >
    class set
  4019da:	55                   	push   %rbp
  4019db:	48 89 e5             	mov    %rsp,%rbp
  4019de:	48 83 ec 10          	sub    $0x10,%rsp
  4019e2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4019e6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4019ea:	48 89 c7             	mov    %rax,%rdi
  4019ed:	e8 36 00 00 00       	callq  401a28 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEED1Ev>
  4019f2:	c9                   	leaveq 
  4019f3:	c3                   	retq   

00000000004019f4 <_ZNSt3setIiSt4lessIiESaIiEEC1Ev>:

      // allocation/deallocation
      /**
       *  @brief  Default constructor creates no elements.
       */
      set()
  4019f4:	55                   	push   %rbp
  4019f5:	48 89 e5             	mov    %rsp,%rbp
  4019f8:	48 83 ec 10          	sub    $0x10,%rsp
  4019fc:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      : _M_t() { }
  401a00:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401a04:	48 89 c7             	mov    %rax,%rdi
  401a07:	e8 c4 01 00 00       	callq  401bd0 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEEC1Ev>
  401a0c:	c9                   	leaveq 
  401a0d:	c3                   	retq   

0000000000401a0e <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE13_Rb_tree_implIS3_Lb1EED1Ev>:
      }

    protected:
      template<typename _Key_compare, 
	       bool _Is_pod_comparator = __is_pod(_Key_compare)>
        struct _Rb_tree_impl : public _Node_allocator
  401a0e:	55                   	push   %rbp
  401a0f:	48 89 e5             	mov    %rsp,%rbp
  401a12:	48 83 ec 10          	sub    $0x10,%rsp
  401a16:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401a1a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401a1e:	48 89 c7             	mov    %rax,%rdi
  401a21:	e8 c4 01 00 00       	callq  401bea <_ZNSaISt13_Rb_tree_nodeIiEED1Ev>
  401a26:	c9                   	leaveq 
  401a27:	c3                   	retq   

0000000000401a28 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEED1Ev>:

#if __cplusplus >= 201103L
      _Rb_tree(_Rb_tree&& __x);
#endif

      ~_Rb_tree() _GLIBCXX_NOEXCEPT
  401a28:	55                   	push   %rbp
  401a29:	48 89 e5             	mov    %rsp,%rbp
  401a2c:	48 83 ec 10          	sub    $0x10,%rsp
  401a30:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { _M_erase(_M_begin()); }
  401a34:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401a38:	48 89 c7             	mov    %rax,%rdi
  401a3b:	e8 28 02 00 00       	callq  401c68 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_beginEv>
  401a40:	48 89 c2             	mov    %rax,%rdx
  401a43:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401a47:	48 89 d6             	mov    %rdx,%rsi
  401a4a:	48 89 c7             	mov    %rax,%rdi
  401a4d:	e8 b2 01 00 00       	callq  401c04 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE>
  401a52:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401a56:	48 89 c7             	mov    %rax,%rdi
  401a59:	e8 b0 ff ff ff       	callq  401a0e <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE13_Rb_tree_implIS3_Lb1EED1Ev>
  401a5e:	c9                   	leaveq 
  401a5f:	c3                   	retq   

0000000000401a60 <_ZNKSt3setIiSt4lessIiESaIiEE5beginEv>:
       *  Returns a read-only (constant) iterator that points to the first
       *  element in the %set.  Iteration is done in ascending order according
       *  to the keys.
       */
      iterator
      begin() const _GLIBCXX_NOEXCEPT
  401a60:	55                   	push   %rbp
  401a61:	48 89 e5             	mov    %rsp,%rbp
  401a64:	48 83 ec 10          	sub    $0x10,%rsp
  401a68:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return _M_t.begin(); }
  401a6c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401a70:	48 89 c7             	mov    %rax,%rdi
  401a73:	e8 02 02 00 00       	callq  401c7a <_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5beginEv>
  401a78:	c9                   	leaveq 
  401a79:	c3                   	retq   

0000000000401a7a <_ZNKSt3setIiSt4lessIiESaIiEE3endEv>:
       *  Returns a read-only (constant) iterator that points one past the last
       *  element in the %set.  Iteration is done in ascending order according
       *  to the keys.
       */
      iterator
      end() const _GLIBCXX_NOEXCEPT
  401a7a:	55                   	push   %rbp
  401a7b:	48 89 e5             	mov    %rsp,%rbp
  401a7e:	48 83 ec 10          	sub    $0x10,%rsp
  401a82:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return _M_t.end(); }
  401a86:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401a8a:	48 89 c7             	mov    %rax,%rdi
  401a8d:	e8 12 02 00 00       	callq  401ca4 <_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE3endEv>
  401a92:	c9                   	leaveq 
  401a93:	c3                   	retq   

0000000000401a94 <_ZNKSt23_Rb_tree_const_iteratorIiEneERKS0_>:
      operator!=(const _Self& __x) const
  401a94:	55                   	push   %rbp
  401a95:	48 89 e5             	mov    %rsp,%rbp
  401a98:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401a9c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      { return _M_node != __x._M_node; }
  401aa0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401aa4:	48 8b 10             	mov    (%rax),%rdx
  401aa7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401aab:	48 8b 00             	mov    (%rax),%rax
  401aae:	48 39 c2             	cmp    %rax,%rdx
  401ab1:	0f 95 c0             	setne  %al
  401ab4:	5d                   	pop    %rbp
  401ab5:	c3                   	retq   

0000000000401ab6 <_ZNSt23_Rb_tree_const_iteratorIiEppEv>:
      operator++()
  401ab6:	55                   	push   %rbp
  401ab7:	48 89 e5             	mov    %rsp,%rbp
  401aba:	48 83 ec 10          	sub    $0x10,%rsp
  401abe:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	_M_node = _Rb_tree_increment(_M_node);
  401ac2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401ac6:	48 8b 00             	mov    (%rax),%rax
  401ac9:	48 89 c7             	mov    %rax,%rdi
  401acc:	e8 ff f3 ff ff       	callq  400ed0 <_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base@plt>
  401ad1:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401ad5:	48 89 02             	mov    %rax,(%rdx)
	return *this;
  401ad8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
      }
  401adc:	c9                   	leaveq 
  401add:	c3                   	retq   

0000000000401ade <_ZNKSt23_Rb_tree_const_iteratorIiEdeEv>:
      operator*() const
  401ade:	55                   	push   %rbp
  401adf:	48 89 e5             	mov    %rsp,%rbp
  401ae2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return static_cast<_Link_type>(_M_node)->_M_value_field; }
  401ae6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401aea:	48 8b 00             	mov    (%rax),%rax
  401aed:	48 83 c0 20          	add    $0x20,%rax
  401af1:	5d                   	pop    %rbp
  401af2:	c3                   	retq   

0000000000401af3 <_ZSt7forwardIRSt17_Rb_tree_iteratorIiEEOT_RNSt16remove_referenceIS3_E4typeE>:
   *
   *  This function is used to implement "perfect forwarding".
   */
  template<typename _Tp>
    constexpr _Tp&&
    forward(typename std::remove_reference<_Tp>::type& __t) noexcept
  401af3:	55                   	push   %rbp
  401af4:	48 89 e5             	mov    %rsp,%rbp
  401af7:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<_Tp&&>(__t); }
  401afb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401aff:	5d                   	pop    %rbp
  401b00:	c3                   	retq   

0000000000401b01 <_ZSt7forwardIRbEOT_RNSt16remove_referenceIS1_E4typeE>:
    forward(typename std::remove_reference<_Tp>::type& __t) noexcept
  401b01:	55                   	push   %rbp
  401b02:	48 89 e5             	mov    %rsp,%rbp
  401b05:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<_Tp&&>(__t); }
  401b09:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401b0d:	5d                   	pop    %rbp
  401b0e:	c3                   	retq   
  401b0f:	90                   	nop

0000000000401b10 <_ZNSt4pairISt23_Rb_tree_const_iteratorIiEbEC1IRSt17_Rb_tree_iteratorIiERbvEEOT_OT0_>:
	: first(__x), second(std::forward<_U2>(__y)) { }

      template<class _U1, class _U2, class = typename
	       enable_if<__and_<is_convertible<_U1, _T1>,
				is_convertible<_U2, _T2>>::value>::type>
	constexpr pair(_U1&& __x, _U2&& __y)
  401b10:	55                   	push   %rbp
  401b11:	48 89 e5             	mov    %rsp,%rbp
  401b14:	48 83 ec 20          	sub    $0x20,%rsp
  401b18:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401b1c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  401b20:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	: first(std::forward<_U1>(__x)), second(std::forward<_U2>(__y)) { }
  401b24:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401b28:	48 89 c7             	mov    %rax,%rdi
  401b2b:	e8 c3 ff ff ff       	callq  401af3 <_ZSt7forwardIRSt17_Rb_tree_iteratorIiEEOT_RNSt16remove_referenceIS3_E4typeE>
  401b30:	48 89 c2             	mov    %rax,%rdx
  401b33:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401b37:	48 89 d6             	mov    %rdx,%rsi
  401b3a:	48 89 c7             	mov    %rax,%rdi
  401b3d:	e8 d8 02 00 00       	callq  401e1a <_ZNSt23_Rb_tree_const_iteratorIiEC1ERKSt17_Rb_tree_iteratorIiE>
  401b42:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401b46:	48 89 c7             	mov    %rax,%rdi
  401b49:	e8 b3 ff ff ff       	callq  401b01 <_ZSt7forwardIRbEOT_RNSt16remove_referenceIS1_E4typeE>
  401b4e:	0f b6 10             	movzbl (%rax),%edx
  401b51:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401b55:	88 50 08             	mov    %dl,0x8(%rax)
  401b58:	c9                   	leaveq 
  401b59:	c3                   	retq   

0000000000401b5a <_ZNSt3setIiSt4lessIiESaIiEE6insertERKi>:
       *  not already present in the %set.
       *
       *  Insertion requires logarithmic time.
       */
      std::pair<iterator, bool>
      insert(const value_type& __x)
  401b5a:	55                   	push   %rbp
  401b5b:	48 89 e5             	mov    %rsp,%rbp
  401b5e:	48 83 ec 30          	sub    $0x30,%rsp
  401b62:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  401b66:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
      {
	std::pair<typename _Rep_type::iterator, bool> __p =
	  _M_t._M_insert_unique(__x);
  401b6a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401b6e:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  401b72:	48 89 d6             	mov    %rdx,%rsi
  401b75:	48 89 c7             	mov    %rax,%rdi
  401b78:	e8 bd 01 00 00       	callq  401d3a <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE16_M_insert_uniqueIRKiEESt4pairISt17_Rb_tree_iteratorIiEbEOT_>
  401b7d:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  401b81:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	return std::pair<iterator, bool>(__p.first, __p.second);
  401b85:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  401b89:	48 8d 50 08          	lea    0x8(%rax),%rdx
  401b8d:	48 8d 4d e0          	lea    -0x20(%rbp),%rcx
  401b91:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  401b95:	48 89 ce             	mov    %rcx,%rsi
  401b98:	48 89 c7             	mov    %rax,%rdi
  401b9b:	e8 70 ff ff ff       	callq  401b10 <_ZNSt4pairISt23_Rb_tree_const_iteratorIiEbEC1IRSt17_Rb_tree_iteratorIiERbvEEOT_OT0_>
  401ba0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401ba4:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
      }
  401ba8:	c9                   	leaveq 
  401ba9:	c3                   	retq   

0000000000401baa <_ZNSt3setIiSt4lessIiESaIiEE5eraseERKi>:
       *  Note that this function only erases the element, and that if
       *  the element is itself a pointer, the pointed-to memory is not touched
       *  in any way.  Managing the pointer is the user's responsibility.
       */
      size_type
      erase(const key_type& __x)
  401baa:	55                   	push   %rbp
  401bab:	48 89 e5             	mov    %rsp,%rbp
  401bae:	48 83 ec 10          	sub    $0x10,%rsp
  401bb2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401bb6:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      { return _M_t.erase(__x); }
  401bba:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401bbe:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  401bc2:	48 89 d6             	mov    %rdx,%rsi
  401bc5:	48 89 c7             	mov    %rax,%rdi
  401bc8:	e8 69 02 00 00       	callq  401e36 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5eraseERKi>
  401bcd:	c9                   	leaveq 
  401bce:	c3                   	retq   
  401bcf:	90                   	nop

0000000000401bd0 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEEC1Ev>:
      _Rb_tree() { }
  401bd0:	55                   	push   %rbp
  401bd1:	48 89 e5             	mov    %rsp,%rbp
  401bd4:	48 83 ec 10          	sub    $0x10,%rsp
  401bd8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401bdc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401be0:	48 89 c7             	mov    %rax,%rdi
  401be3:	e8 e2 02 00 00       	callq  401eca <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE13_Rb_tree_implIS3_Lb1EEC1Ev>
  401be8:	c9                   	leaveq 
  401be9:	c3                   	retq   

0000000000401bea <_ZNSaISt13_Rb_tree_nodeIiEED1Ev>:
      : __allocator_base<_Tp>(__a) { }

      template<typename _Tp1>
        allocator(const allocator<_Tp1>&) throw() { }

      ~allocator() throw() { }
  401bea:	55                   	push   %rbp
  401beb:	48 89 e5             	mov    %rsp,%rbp
  401bee:	48 83 ec 10          	sub    $0x10,%rsp
  401bf2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401bf6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401bfa:	48 89 c7             	mov    %rax,%rdi
  401bfd:	e8 2a 03 00 00       	callq  401f2c <_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEED1Ev>
  401c02:	c9                   	leaveq 
  401c03:	c3                   	retq   

0000000000401c04 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE>:
    }

  template<typename _Key, typename _Val, typename _KeyOfValue,
           typename _Compare, typename _Alloc>
    void
    _Rb_tree<_Key, _Val, _KeyOfValue, _Compare, _Alloc>::
  401c04:	55                   	push   %rbp
  401c05:	48 89 e5             	mov    %rsp,%rbp
  401c08:	48 83 ec 20          	sub    $0x20,%rsp
  401c0c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401c10:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    _M_erase(_Link_type __x)
    {
      // Erase without rebalancing.
      while (__x != 0)
  401c14:	eb 49                	jmp    401c5f <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE+0x5b>
	{
	  _M_erase(_S_right(__x));
  401c16:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  401c1a:	48 89 c7             	mov    %rax,%rdi
  401c1d:	e8 14 03 00 00       	callq  401f36 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_S_rightEPSt18_Rb_tree_node_base>
  401c22:	48 89 c2             	mov    %rax,%rdx
  401c25:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401c29:	48 89 d6             	mov    %rdx,%rsi
  401c2c:	48 89 c7             	mov    %rax,%rdi
  401c2f:	e8 d0 ff ff ff       	callq  401c04 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE>
	  _Link_type __y = _S_left(__x);
  401c34:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  401c38:	48 89 c7             	mov    %rax,%rdi
  401c3b:	e8 08 03 00 00       	callq  401f48 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_S_leftEPSt18_Rb_tree_node_base>
  401c40:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
	  _M_destroy_node(__x);
  401c44:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  401c48:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401c4c:	48 89 d6             	mov    %rdx,%rsi
  401c4f:	48 89 c7             	mov    %rax,%rdi
  401c52:	e8 03 03 00 00       	callq  401f5a <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE15_M_destroy_nodeEPSt13_Rb_tree_nodeIiE>
	  __x = __y;
  401c57:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401c5b:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
      while (__x != 0)
  401c5f:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
  401c64:	75 b0                	jne    401c16 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE+0x12>
	}
    }
  401c66:	c9                   	leaveq 
  401c67:	c3                   	retq   

0000000000401c68 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_beginEv>:
      _M_begin()
  401c68:	55                   	push   %rbp
  401c69:	48 89 e5             	mov    %rsp,%rbp
  401c6c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return static_cast<_Link_type>(this->_M_impl._M_header._M_parent); }
  401c70:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401c74:	48 8b 40 10          	mov    0x10(%rax),%rax
  401c78:	5d                   	pop    %rbp
  401c79:	c3                   	retq   

0000000000401c7a <_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5beginEv>:
      begin() const _GLIBCXX_NOEXCEPT
  401c7a:	55                   	push   %rbp
  401c7b:	48 89 e5             	mov    %rsp,%rbp
  401c7e:	48 83 ec 20          	sub    $0x20,%rsp
  401c82:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
			      (this->_M_impl._M_header._M_left));
  401c86:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401c8a:	48 8b 50 18          	mov    0x18(%rax),%rdx
  401c8e:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  401c92:	48 89 d6             	mov    %rdx,%rsi
  401c95:	48 89 c7             	mov    %rax,%rdi
  401c98:	e8 fd 02 00 00       	callq  401f9a <_ZNSt23_Rb_tree_const_iteratorIiEC1EPKSt13_Rb_tree_nodeIiE>
  401c9d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
      }
  401ca1:	c9                   	leaveq 
  401ca2:	c3                   	retq   
  401ca3:	90                   	nop

0000000000401ca4 <_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE3endEv>:
      end() const _GLIBCXX_NOEXCEPT
  401ca4:	55                   	push   %rbp
  401ca5:	48 89 e5             	mov    %rsp,%rbp
  401ca8:	48 83 ec 20          	sub    $0x20,%rsp
  401cac:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
			      (&this->_M_impl._M_header));
  401cb0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401cb4:	48 8d 50 08          	lea    0x8(%rax),%rdx
  401cb8:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  401cbc:	48 89 d6             	mov    %rdx,%rsi
  401cbf:	48 89 c7             	mov    %rax,%rdi
  401cc2:	e8 d3 02 00 00       	callq  401f9a <_ZNSt23_Rb_tree_const_iteratorIiEC1EPKSt13_Rb_tree_nodeIiE>
  401cc7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
      }
  401ccb:	c9                   	leaveq 
  401ccc:	c3                   	retq   

0000000000401ccd <_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE>:
    forward(typename std::remove_reference<_Tp>::type& __t) noexcept
  401ccd:	55                   	push   %rbp
  401cce:	48 89 e5             	mov    %rsp,%rbp
  401cd1:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<_Tp&&>(__t); }
  401cd5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401cd9:	5d                   	pop    %rbp
  401cda:	c3                   	retq   

0000000000401cdb <_ZSt7forwardISt17_Rb_tree_iteratorIiEEOT_RNSt16remove_referenceIS2_E4typeE>:
    forward(typename std::remove_reference<_Tp>::type& __t) noexcept
  401cdb:	55                   	push   %rbp
  401cdc:	48 89 e5             	mov    %rsp,%rbp
  401cdf:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<_Tp&&>(__t); }
  401ce3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401ce7:	5d                   	pop    %rbp
  401ce8:	c3                   	retq   

0000000000401ce9 <_ZSt7forwardIbEOT_RNSt16remove_referenceIS0_E4typeE>:
    forward(typename std::remove_reference<_Tp>::type& __t) noexcept
  401ce9:	55                   	push   %rbp
  401cea:	48 89 e5             	mov    %rsp,%rbp
  401ced:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<_Tp&&>(__t); }
  401cf1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401cf5:	5d                   	pop    %rbp
  401cf6:	c3                   	retq   
  401cf7:	90                   	nop

0000000000401cf8 <_ZNSt4pairISt17_Rb_tree_iteratorIiEbEC1IS1_bvEEOT_OT0_>:
	constexpr pair(_U1&& __x, _U2&& __y)
  401cf8:	55                   	push   %rbp
  401cf9:	48 89 e5             	mov    %rsp,%rbp
  401cfc:	48 83 ec 20          	sub    $0x20,%rsp
  401d00:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401d04:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  401d08:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	: first(std::forward<_U1>(__x)), second(std::forward<_U2>(__y)) { }
  401d0c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401d10:	48 89 c7             	mov    %rax,%rdi
  401d13:	e8 c3 ff ff ff       	callq  401cdb <_ZSt7forwardISt17_Rb_tree_iteratorIiEEOT_RNSt16remove_referenceIS2_E4typeE>
  401d18:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401d1c:	48 8b 00             	mov    (%rax),%rax
  401d1f:	48 89 02             	mov    %rax,(%rdx)
  401d22:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401d26:	48 89 c7             	mov    %rax,%rdi
  401d29:	e8 bb ff ff ff       	callq  401ce9 <_ZSt7forwardIbEOT_RNSt16remove_referenceIS0_E4typeE>
  401d2e:	0f b6 10             	movzbl (%rax),%edx
  401d31:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401d35:	88 50 08             	mov    %dl,0x8(%rax)
  401d38:	c9                   	leaveq 
  401d39:	c3                   	retq   

0000000000401d3a <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE16_M_insert_uniqueIRKiEESt4pairISt17_Rb_tree_iteratorIiEbEOT_>:
#if __cplusplus >= 201103L
    template<typename _Arg>
#endif
    pair<typename _Rb_tree<_Key, _Val, _KeyOfValue,
			   _Compare, _Alloc>::iterator, bool>
    _Rb_tree<_Key, _Val, _KeyOfValue, _Compare, _Alloc>::
  401d3a:	55                   	push   %rbp
  401d3b:	48 89 e5             	mov    %rsp,%rbp
  401d3e:	48 81 ec 90 00 00 00 	sub    $0x90,%rsp
  401d45:	48 89 bd 78 ff ff ff 	mov    %rdi,-0x88(%rbp)
  401d4c:	48 89 b5 70 ff ff ff 	mov    %rsi,-0x90(%rbp)
    _M_insert_unique(const _Val& __v)
#endif
    {
      typedef pair<iterator, bool> _Res;
      pair<_Base_ptr, _Base_ptr> __res
	= _M_get_insert_unique_pos(_KeyOfValue()(__v));
  401d53:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
  401d5a:	48 8d 45 9f          	lea    -0x61(%rbp),%rax
  401d5e:	48 89 d6             	mov    %rdx,%rsi
  401d61:	48 89 c7             	mov    %rax,%rdi
  401d64:	e8 55 04 00 00       	callq  4021be <_ZNKSt9_IdentityIiEclERKi>
  401d69:	48 89 c2             	mov    %rax,%rdx
  401d6c:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
  401d73:	48 89 d6             	mov    %rdx,%rsi
  401d76:	48 89 c7             	mov    %rax,%rdi
  401d79:	e8 d2 02 00 00       	callq  402050 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE24_M_get_insert_unique_posERKi>
  401d7e:	48 89 45 80          	mov    %rax,-0x80(%rbp)
  401d82:	48 89 55 88          	mov    %rdx,-0x78(%rbp)

      if (__res.second)
  401d86:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  401d8a:	48 85 c0             	test   %rax,%rax
  401d8d:	74 52                	je     401de1 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE16_M_insert_uniqueIRKiEESt4pairISt17_Rb_tree_iteratorIiEbEOT_+0xa7>
	return _Res(_M_insert_(__res.first, __res.second,
			       _GLIBCXX_FORWARD(_Arg, __v)),
		    true);
  401d8f:	c6 45 bf 01          	movb   $0x1,-0x41(%rbp)
			       _GLIBCXX_FORWARD(_Arg, __v)),
  401d93:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
  401d9a:	48 89 c7             	mov    %rax,%rdi
  401d9d:	e8 2b ff ff ff       	callq  401ccd <_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE>
  401da2:	48 89 c1             	mov    %rax,%rcx
  401da5:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
  401da9:	48 8b 75 80          	mov    -0x80(%rbp),%rsi
		    true);
  401dad:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
  401db4:	48 89 c7             	mov    %rax,%rdi
  401db7:	e8 14 04 00 00       	callq  4021d0 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSC_OT_>
  401dbc:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  401dc0:	48 8d 55 bf          	lea    -0x41(%rbp),%rdx
  401dc4:	48 8d 4d c0          	lea    -0x40(%rbp),%rcx
  401dc8:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  401dcc:	48 89 ce             	mov    %rcx,%rsi
  401dcf:	48 89 c7             	mov    %rax,%rdi
  401dd2:	e8 21 ff ff ff       	callq  401cf8 <_ZNSt4pairISt17_Rb_tree_iteratorIiEbEC1IS1_bvEEOT_OT0_>
  401dd7:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  401ddb:	48 8b 55 a8          	mov    -0x58(%rbp),%rdx
  401ddf:	eb 36                	jmp    401e17 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE16_M_insert_uniqueIRKiEESt4pairISt17_Rb_tree_iteratorIiEbEOT_+0xdd>

      return _Res(iterator(static_cast<_Link_type>(__res.first)), false);
  401de1:	c6 45 ef 00          	movb   $0x0,-0x11(%rbp)
  401de5:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
  401de9:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  401ded:	48 89 d6             	mov    %rdx,%rsi
  401df0:	48 89 c7             	mov    %rax,%rdi
  401df3:	e8 e2 04 00 00       	callq  4022da <_ZNSt17_Rb_tree_iteratorIiEC1EPSt13_Rb_tree_nodeIiE>
  401df8:	48 8d 55 ef          	lea    -0x11(%rbp),%rdx
  401dfc:	48 8d 4d f0          	lea    -0x10(%rbp),%rcx
  401e00:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  401e04:	48 89 ce             	mov    %rcx,%rsi
  401e07:	48 89 c7             	mov    %rax,%rdi
  401e0a:	e8 e9 fe ff ff       	callq  401cf8 <_ZNSt4pairISt17_Rb_tree_iteratorIiEbEC1IS1_bvEEOT_OT0_>
  401e0f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  401e13:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    }
  401e17:	c9                   	leaveq 
  401e18:	c3                   	retq   
  401e19:	90                   	nop

0000000000401e1a <_ZNSt23_Rb_tree_const_iteratorIiEC1ERKSt17_Rb_tree_iteratorIiE>:
      _Rb_tree_const_iterator(const iterator& __it)
  401e1a:	55                   	push   %rbp
  401e1b:	48 89 e5             	mov    %rsp,%rbp
  401e1e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401e22:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      : _M_node(__it._M_node) { }
  401e26:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401e2a:	48 8b 10             	mov    (%rax),%rdx
  401e2d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401e31:	48 89 10             	mov    %rdx,(%rax)
  401e34:	5d                   	pop    %rbp
  401e35:	c3                   	retq   

0000000000401e36 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5eraseERKi>:
    }

  template<typename _Key, typename _Val, typename _KeyOfValue,
           typename _Compare, typename _Alloc>
    typename _Rb_tree<_Key, _Val, _KeyOfValue, _Compare, _Alloc>::size_type
    _Rb_tree<_Key, _Val, _KeyOfValue, _Compare, _Alloc>::
  401e36:	55                   	push   %rbp
  401e37:	48 89 e5             	mov    %rsp,%rbp
  401e3a:	48 83 ec 40          	sub    $0x40,%rsp
  401e3e:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
  401e42:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
    erase(const _Key& __x)
    {
      pair<iterator, iterator> __p = equal_range(__x);
  401e46:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  401e4a:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401e4e:	48 89 d6             	mov    %rdx,%rsi
  401e51:	48 89 c7             	mov    %rax,%rdi
  401e54:	e8 df 04 00 00       	callq  402338 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11equal_rangeERKi>
  401e59:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  401e5d:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
      const size_type __old_size = size();
  401e61:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401e65:	48 89 c7             	mov    %rax,%rdi
  401e68:	e8 89 06 00 00       	callq  4024f6 <_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE4sizeEv>
  401e6d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
      erase(__p.first, __p.second);
  401e71:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  401e75:	48 8d 50 08          	lea    0x8(%rax),%rdx
  401e79:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  401e7d:	48 89 d6             	mov    %rdx,%rsi
  401e80:	48 89 c7             	mov    %rax,%rdi
  401e83:	e8 92 ff ff ff       	callq  401e1a <_ZNSt23_Rb_tree_const_iteratorIiEC1ERKSt17_Rb_tree_iteratorIiE>
  401e88:	48 8d 55 d0          	lea    -0x30(%rbp),%rdx
  401e8c:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  401e90:	48 89 d6             	mov    %rdx,%rsi
  401e93:	48 89 c7             	mov    %rax,%rdi
  401e96:	e8 7f ff ff ff       	callq  401e1a <_ZNSt23_Rb_tree_const_iteratorIiEC1ERKSt17_Rb_tree_iteratorIiE>
  401e9b:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  401e9f:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  401ea3:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401ea7:	48 89 ce             	mov    %rcx,%rsi
  401eaa:	48 89 c7             	mov    %rax,%rdi
  401ead:	e8 56 06 00 00       	callq  402508 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIiES7_>
      return __old_size - size();
  401eb2:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401eb6:	48 89 c7             	mov    %rax,%rdi
  401eb9:	e8 38 06 00 00       	callq  4024f6 <_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE4sizeEv>
  401ebe:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401ec2:	48 29 c2             	sub    %rax,%rdx
  401ec5:	48 89 d0             	mov    %rdx,%rax
    }
  401ec8:	c9                   	leaveq 
  401ec9:	c3                   	retq   

0000000000401eca <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE13_Rb_tree_implIS3_Lb1EEC1Ev>:
	  _Rb_tree_impl()
  401eca:	55                   	push   %rbp
  401ecb:	48 89 e5             	mov    %rsp,%rbp
  401ece:	48 83 ec 10          	sub    $0x10,%rsp
  401ed2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	    _M_node_count(0)
  401ed6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401eda:	48 89 c7             	mov    %rax,%rdi
  401edd:	e8 60 06 00 00       	callq  402542 <_ZNSaISt13_Rb_tree_nodeIiEEC1Ev>
  401ee2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401ee6:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%rax)
  401eed:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401ef1:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
  401ef8:	00 
  401ef9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401efd:	48 c7 40 18 00 00 00 	movq   $0x0,0x18(%rax)
  401f04:	00 
  401f05:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401f09:	48 c7 40 20 00 00 00 	movq   $0x0,0x20(%rax)
  401f10:	00 
  401f11:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401f15:	48 c7 40 28 00 00 00 	movq   $0x0,0x28(%rax)
  401f1c:	00 
	  { _M_initialize(); }
  401f1d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401f21:	48 89 c7             	mov    %rax,%rdi
  401f24:	e8 33 06 00 00       	callq  40255c <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE13_Rb_tree_implIS3_Lb1EE13_M_initializeEv>
  401f29:	c9                   	leaveq 
  401f2a:	c3                   	retq   
  401f2b:	90                   	nop

0000000000401f2c <_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEED1Ev>:
      new_allocator(const new_allocator&) _GLIBCXX_USE_NOEXCEPT { }

      template<typename _Tp1>
        new_allocator(const new_allocator<_Tp1>&) _GLIBCXX_USE_NOEXCEPT { }

      ~new_allocator() _GLIBCXX_USE_NOEXCEPT { }
  401f2c:	55                   	push   %rbp
  401f2d:	48 89 e5             	mov    %rsp,%rbp
  401f30:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401f34:	5d                   	pop    %rbp
  401f35:	c3                   	retq   

0000000000401f36 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_S_rightEPSt18_Rb_tree_node_base>:
      _S_right(_Base_ptr __x)
  401f36:	55                   	push   %rbp
  401f37:	48 89 e5             	mov    %rsp,%rbp
  401f3a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return static_cast<_Link_type>(__x->_M_right); }
  401f3e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401f42:	48 8b 40 18          	mov    0x18(%rax),%rax
  401f46:	5d                   	pop    %rbp
  401f47:	c3                   	retq   

0000000000401f48 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_S_leftEPSt18_Rb_tree_node_base>:
      _S_left(_Base_ptr __x)
  401f48:	55                   	push   %rbp
  401f49:	48 89 e5             	mov    %rsp,%rbp
  401f4c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return static_cast<_Link_type>(__x->_M_left); }
  401f50:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401f54:	48 8b 40 10          	mov    0x10(%rax),%rax
  401f58:	5d                   	pop    %rbp
  401f59:	c3                   	retq   

0000000000401f5a <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE15_M_destroy_nodeEPSt13_Rb_tree_nodeIiE>:
      _M_destroy_node(_Link_type __p)
  401f5a:	55                   	push   %rbp
  401f5b:	48 89 e5             	mov    %rsp,%rbp
  401f5e:	48 83 ec 10          	sub    $0x10,%rsp
  401f62:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401f66:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	_M_get_Node_allocator().destroy(__p);
  401f6a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401f6e:	48 89 c7             	mov    %rax,%rdi
  401f71:	e8 28 06 00 00       	callq  40259e <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE21_M_get_Node_allocatorEv>
  401f76:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  401f7a:	48 89 d6             	mov    %rdx,%rsi
  401f7d:	48 89 c7             	mov    %rax,%rdi
  401f80:	e8 27 06 00 00       	callq  4025ac <_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEE7destroyIS2_EEvPT_>
	_M_put_node(__p);
  401f85:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  401f89:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401f8d:	48 89 d6             	mov    %rdx,%rsi
  401f90:	48 89 c7             	mov    %rax,%rdi
  401f93:	e8 22 06 00 00       	callq  4025ba <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11_M_put_nodeEPSt13_Rb_tree_nodeIiE>
      }
  401f98:	c9                   	leaveq 
  401f99:	c3                   	retq   

0000000000401f9a <_ZNSt23_Rb_tree_const_iteratorIiEC1EPKSt13_Rb_tree_nodeIiE>:
      _Rb_tree_const_iterator(_Link_type __x)
  401f9a:	55                   	push   %rbp
  401f9b:	48 89 e5             	mov    %rsp,%rbp
  401f9e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401fa2:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      : _M_node(__x) { }
  401fa6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401faa:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  401fae:	48 89 10             	mov    %rdx,(%rax)
  401fb1:	5d                   	pop    %rbp
  401fb2:	c3                   	retq   

0000000000401fb3 <_ZSt7forwardIRPSt13_Rb_tree_nodeIiEEOT_RNSt16remove_referenceIS4_E4typeE>:
    forward(typename std::remove_reference<_Tp>::type& __t) noexcept
  401fb3:	55                   	push   %rbp
  401fb4:	48 89 e5             	mov    %rsp,%rbp
  401fb7:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<_Tp&&>(__t); }
  401fbb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401fbf:	5d                   	pop    %rbp
  401fc0:	c3                   	retq   
  401fc1:	90                   	nop

0000000000401fc2 <_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRPSt13_Rb_tree_nodeIiES7_vEEOT_OT0_>:
	constexpr pair(_U1&& __x, _U2&& __y)
  401fc2:	55                   	push   %rbp
  401fc3:	48 89 e5             	mov    %rsp,%rbp
  401fc6:	48 83 ec 20          	sub    $0x20,%rsp
  401fca:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401fce:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  401fd2:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	: first(std::forward<_U1>(__x)), second(std::forward<_U2>(__y)) { }
  401fd6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401fda:	48 89 c7             	mov    %rax,%rdi
  401fdd:	e8 d1 ff ff ff       	callq  401fb3 <_ZSt7forwardIRPSt13_Rb_tree_nodeIiEEOT_RNSt16remove_referenceIS4_E4typeE>
  401fe2:	48 8b 10             	mov    (%rax),%rdx
  401fe5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401fe9:	48 89 10             	mov    %rdx,(%rax)
  401fec:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401ff0:	48 89 c7             	mov    %rax,%rdi
  401ff3:	e8 bb ff ff ff       	callq  401fb3 <_ZSt7forwardIRPSt13_Rb_tree_nodeIiEEOT_RNSt16remove_referenceIS4_E4typeE>
  401ff8:	48 8b 10             	mov    (%rax),%rdx
  401ffb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401fff:	48 89 50 08          	mov    %rdx,0x8(%rax)
  402003:	c9                   	leaveq 
  402004:	c3                   	retq   

0000000000402005 <_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE>:
    forward(typename std::remove_reference<_Tp>::type& __t) noexcept
  402005:	55                   	push   %rbp
  402006:	48 89 e5             	mov    %rsp,%rbp
  402009:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<_Tp&&>(__t); }
  40200d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402011:	5d                   	pop    %rbp
  402012:	c3                   	retq   
  402013:	90                   	nop

0000000000402014 <_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRS1_vEEOT_RKS1_>:
	constexpr pair(_U1&& __x, const _T2& __y)
  402014:	55                   	push   %rbp
  402015:	48 89 e5             	mov    %rsp,%rbp
  402018:	48 83 ec 20          	sub    $0x20,%rsp
  40201c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402020:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  402024:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	: first(std::forward<_U1>(__x)), second(__y) { }
  402028:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40202c:	48 89 c7             	mov    %rax,%rdi
  40202f:	e8 d1 ff ff ff       	callq  402005 <_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE>
  402034:	48 8b 10             	mov    (%rax),%rdx
  402037:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40203b:	48 89 10             	mov    %rdx,(%rax)
  40203e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402042:	48 8b 10             	mov    (%rax),%rdx
  402045:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402049:	48 89 50 08          	mov    %rdx,0x8(%rax)
  40204d:	c9                   	leaveq 
  40204e:	c3                   	retq   
  40204f:	90                   	nop

0000000000402050 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE24_M_get_insert_unique_posERKi>:
    _Rb_tree<_Key, _Val, _KeyOfValue, _Compare, _Alloc>::
  402050:	55                   	push   %rbp
  402051:	48 89 e5             	mov    %rsp,%rbp
  402054:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  402058:	48 89 7d 88          	mov    %rdi,-0x78(%rbp)
  40205c:	48 89 75 80          	mov    %rsi,-0x80(%rbp)
      _Link_type __x = _M_begin();
  402060:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  402064:	48 89 c7             	mov    %rax,%rdi
  402067:	e8 fc fb ff ff       	callq  401c68 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_beginEv>
  40206c:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
      _Link_type __y = _M_end();
  402070:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  402074:	48 89 c7             	mov    %rax,%rdi
  402077:	e8 68 05 00 00       	callq  4025e4 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_M_endEv>
  40207c:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
      bool __comp = true;
  402080:	c6 45 ff 01          	movb   $0x1,-0x1(%rbp)
      while (__x != 0)
  402084:	eb 51                	jmp    4020d7 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE24_M_get_insert_unique_posERKi+0x87>
	  __y = __x;
  402086:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  40208a:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
	  __comp = _M_impl._M_key_compare(__k, _S_key(__x));
  40208e:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  402092:	48 89 c7             	mov    %rax,%rdi
  402095:	e8 5c 05 00 00       	callq  4025f6 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_S_keyEPKSt13_Rb_tree_nodeIiE>
  40209a:	48 89 c2             	mov    %rax,%rdx
  40209d:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  4020a1:	48 8b 4d 80          	mov    -0x80(%rbp),%rcx
  4020a5:	48 89 ce             	mov    %rcx,%rsi
  4020a8:	48 89 c7             	mov    %rax,%rdi
  4020ab:	e8 72 05 00 00       	callq  402622 <_ZNKSt4lessIiEclERKiS2_>
  4020b0:	88 45 ff             	mov    %al,-0x1(%rbp)
	  __x = __comp ? _S_left(__x) : _S_right(__x);
  4020b3:	80 7d ff 00          	cmpb   $0x0,-0x1(%rbp)
  4020b7:	74 0e                	je     4020c7 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE24_M_get_insert_unique_posERKi+0x77>
  4020b9:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  4020bd:	48 89 c7             	mov    %rax,%rdi
  4020c0:	e8 83 fe ff ff       	callq  401f48 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_S_leftEPSt18_Rb_tree_node_base>
  4020c5:	eb 0c                	jmp    4020d3 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE24_M_get_insert_unique_posERKi+0x83>
  4020c7:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  4020cb:	48 89 c7             	mov    %rax,%rdi
  4020ce:	e8 63 fe ff ff       	callq  401f36 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_S_rightEPSt18_Rb_tree_node_base>
  4020d3:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
      while (__x != 0)
  4020d7:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  4020db:	48 85 c0             	test   %rax,%rax
  4020de:	75 a6                	jne    402086 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE24_M_get_insert_unique_posERKi+0x36>
      iterator __j = iterator(__y);
  4020e0:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
  4020e4:	48 8d 45 90          	lea    -0x70(%rbp),%rax
  4020e8:	48 89 d6             	mov    %rdx,%rsi
  4020eb:	48 89 c7             	mov    %rax,%rdi
  4020ee:	e8 e7 01 00 00       	callq  4022da <_ZNSt17_Rb_tree_iteratorIiEC1EPSt13_Rb_tree_nodeIiE>
      if (__comp)
  4020f3:	80 7d ff 00          	cmpb   $0x0,-0x1(%rbp)
  4020f7:	74 54                	je     40214d <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE24_M_get_insert_unique_posERKi+0xfd>
	  if (__j == begin())
  4020f9:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  4020fd:	48 89 c7             	mov    %rax,%rdi
  402100:	e8 41 05 00 00       	callq  402646 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5beginEv>
  402105:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  402109:	48 8d 55 b0          	lea    -0x50(%rbp),%rdx
  40210d:	48 8d 45 90          	lea    -0x70(%rbp),%rax
  402111:	48 89 d6             	mov    %rdx,%rsi
  402114:	48 89 c7             	mov    %rax,%rdi
  402117:	e8 54 05 00 00       	callq  402670 <_ZNKSt17_Rb_tree_iteratorIiEeqERKS0_>
  40211c:	84 c0                	test   %al,%al
  40211e:	74 21                	je     402141 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE24_M_get_insert_unique_posERKi+0xf1>
	    return _Res(__x, __y);
  402120:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
  402124:	48 8d 4d a8          	lea    -0x58(%rbp),%rcx
  402128:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  40212c:	48 89 ce             	mov    %rcx,%rsi
  40212f:	48 89 c7             	mov    %rax,%rdi
  402132:	e8 8b fe ff ff       	callq  401fc2 <_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRPSt13_Rb_tree_nodeIiES7_vEEOT_OT0_>
  402137:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  40213b:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  40213f:	eb 7a                	jmp    4021bb <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE24_M_get_insert_unique_posERKi+0x16b>
	    --__j;
  402141:	48 8d 45 90          	lea    -0x70(%rbp),%rax
  402145:	48 89 c7             	mov    %rax,%rdi
  402148:	e8 45 05 00 00       	callq  402692 <_ZNSt17_Rb_tree_iteratorIiEmmEv>
      if (_M_impl._M_key_compare(_S_key(__j._M_node), __k))
  40214d:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  402151:	48 89 c7             	mov    %rax,%rdi
  402154:	e8 61 05 00 00       	callq  4026ba <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_S_keyEPKSt18_Rb_tree_node_base>
  402159:	48 89 c1             	mov    %rax,%rcx
  40215c:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  402160:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
  402164:	48 89 ce             	mov    %rcx,%rsi
  402167:	48 89 c7             	mov    %rax,%rdi
  40216a:	e8 b3 04 00 00       	callq  402622 <_ZNKSt4lessIiEclERKiS2_>
  40216f:	84 c0                	test   %al,%al
  402171:	74 21                	je     402194 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE24_M_get_insert_unique_posERKi+0x144>
	return _Res(__x, __y);
  402173:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
  402177:	48 8d 4d a8          	lea    -0x58(%rbp),%rcx
  40217b:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  40217f:	48 89 ce             	mov    %rcx,%rsi
  402182:	48 89 c7             	mov    %rax,%rdi
  402185:	e8 38 fe ff ff       	callq  401fc2 <_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRPSt13_Rb_tree_nodeIiES7_vEEOT_OT0_>
  40218a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  40218e:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  402192:	eb 27                	jmp    4021bb <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE24_M_get_insert_unique_posERKi+0x16b>
      return _Res(__j._M_node, 0);
  402194:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
  40219b:	00 
  40219c:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
  4021a0:	48 8d 4d 90          	lea    -0x70(%rbp),%rcx
  4021a4:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  4021a8:	48 89 ce             	mov    %rcx,%rsi
  4021ab:	48 89 c7             	mov    %rax,%rdi
  4021ae:	e8 61 fe ff ff       	callq  402014 <_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRS1_vEEOT_RKS1_>
  4021b3:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4021b7:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    }
  4021bb:	c9                   	leaveq 
  4021bc:	c3                   	retq   
  4021bd:	90                   	nop

00000000004021be <_ZNKSt9_IdentityIiEclERKi>:
      _Tp&
      operator()(_Tp& __x) const
      { return __x; }

      const _Tp&
      operator()(const _Tp& __x) const
  4021be:	55                   	push   %rbp
  4021bf:	48 89 e5             	mov    %rsp,%rbp
  4021c2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4021c6:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      { return __x; }
  4021ca:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4021ce:	5d                   	pop    %rbp
  4021cf:	c3                   	retq   

00000000004021d0 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSC_OT_>:
    _Rb_tree<_Key, _Val, _KeyOfValue, _Compare, _Alloc>::
  4021d0:	55                   	push   %rbp
  4021d1:	48 89 e5             	mov    %rsp,%rbp
  4021d4:	41 54                	push   %r12
  4021d6:	53                   	push   %rbx
  4021d7:	48 83 ec 50          	sub    $0x50,%rsp
  4021db:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
  4021df:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
  4021e3:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
  4021e7:	48 89 4d a0          	mov    %rcx,-0x60(%rbp)
						      _S_key(__p)));
  4021eb:	bb 00 00 00 00       	mov    $0x0,%ebx
  4021f0:	48 83 7d b0 00       	cmpq   $0x0,-0x50(%rbp)
  4021f5:	75 52                	jne    402249 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSC_OT_+0x79>
      bool __insert_left = (__x != 0 || __p == _M_end()
  4021f7:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  4021fb:	48 89 c7             	mov    %rax,%rdi
  4021fe:	e8 e1 03 00 00       	callq  4025e4 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_M_endEv>
						      _S_key(__p)));
  402203:	48 3b 45 a8          	cmp    -0x58(%rbp),%rax
  402207:	74 40                	je     402249 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSC_OT_+0x79>
  402209:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  40220d:	48 89 c7             	mov    %rax,%rdi
  402210:	e8 a5 04 00 00       	callq  4026ba <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_S_keyEPKSt18_Rb_tree_node_base>
  402215:	49 89 c4             	mov    %rax,%r12
  402218:	bb 01 00 00 00       	mov    $0x1,%ebx
			    || _M_impl._M_key_compare(_KeyOfValue()(__v),
  40221d:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
  402221:	48 8d 45 cf          	lea    -0x31(%rbp),%rax
  402225:	48 89 d6             	mov    %rdx,%rsi
  402228:	48 89 c7             	mov    %rax,%rdi
  40222b:	e8 8e ff ff ff       	callq  4021be <_ZNKSt9_IdentityIiEclERKi>
  402230:	48 89 c1             	mov    %rax,%rcx
  402233:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  402237:	4c 89 e2             	mov    %r12,%rdx
  40223a:	48 89 ce             	mov    %rcx,%rsi
  40223d:	48 89 c7             	mov    %rax,%rdi
  402240:	e8 dd 03 00 00       	callq  402622 <_ZNKSt4lessIiEclERKiS2_>
						      _S_key(__p)));
  402245:	84 c0                	test   %al,%al
  402247:	74 07                	je     402250 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSC_OT_+0x80>
  402249:	b8 01 00 00 00       	mov    $0x1,%eax
  40224e:	eb 05                	jmp    402255 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSC_OT_+0x85>
  402250:	b8 00 00 00 00       	mov    $0x0,%eax
  402255:	88 45 ef             	mov    %al,-0x11(%rbp)
			    || _M_impl._M_key_compare(_KeyOfValue()(__v),
  402258:	84 db                	test   %bl,%bl
						      _S_key(__p)));
  40225a:	90                   	nop
      _Link_type __z = _M_create_node(_GLIBCXX_FORWARD(_Arg, __v));
  40225b:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  40225f:	48 89 c7             	mov    %rax,%rdi
  402262:	e8 66 fa ff ff       	callq  401ccd <_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE>
  402267:	48 89 c2             	mov    %rax,%rdx
  40226a:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  40226e:	48 89 d6             	mov    %rdx,%rsi
  402271:	48 89 c7             	mov    %rax,%rdi
  402274:	e8 6d 04 00 00       	callq  4026e6 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_create_nodeIIRKiEEEPSt13_Rb_tree_nodeIiEDpOT_>
  402279:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
				    this->_M_impl._M_header);
  40227d:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  402281:	48 8d 48 08          	lea    0x8(%rax),%rcx
  402285:	0f b6 45 ef          	movzbl -0x11(%rbp),%eax
      _Rb_tree_insert_and_rebalance(__insert_left, __z, __p,
  402289:	48 8b 55 a8          	mov    -0x58(%rbp),%rdx
  40228d:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
  402291:	89 c7                	mov    %eax,%edi
  402293:	e8 88 ec ff ff       	callq  400f20 <_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_@plt>
      ++_M_impl._M_node_count;
  402298:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  40229c:	48 8b 40 28          	mov    0x28(%rax),%rax
  4022a0:	48 8d 50 01          	lea    0x1(%rax),%rdx
  4022a4:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  4022a8:	48 89 50 28          	mov    %rdx,0x28(%rax)
      return iterator(__z);
  4022ac:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  4022b0:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  4022b4:	48 89 d6             	mov    %rdx,%rsi
  4022b7:	48 89 c7             	mov    %rax,%rdi
  4022ba:	e8 1b 00 00 00       	callq  4022da <_ZNSt17_Rb_tree_iteratorIiEC1EPSt13_Rb_tree_nodeIiE>
  4022bf:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  4022c3:	eb 0b                	jmp    4022d0 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSC_OT_+0x100>
			    || _M_impl._M_key_compare(_KeyOfValue()(__v),
  4022c5:	84 db                	test   %bl,%bl
						      _S_key(__p)));
  4022c7:	90                   	nop
  4022c8:	48 89 c7             	mov    %rax,%rdi
  4022cb:	e8 20 ed ff ff       	callq  400ff0 <_Unwind_Resume@plt>
    }
  4022d0:	48 83 c4 50          	add    $0x50,%rsp
  4022d4:	5b                   	pop    %rbx
  4022d5:	41 5c                	pop    %r12
  4022d7:	5d                   	pop    %rbp
  4022d8:	c3                   	retq   
  4022d9:	90                   	nop

00000000004022da <_ZNSt17_Rb_tree_iteratorIiEC1EPSt13_Rb_tree_nodeIiE>:
      _Rb_tree_iterator(_Link_type __x)
  4022da:	55                   	push   %rbp
  4022db:	48 89 e5             	mov    %rsp,%rbp
  4022de:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4022e2:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      : _M_node(__x) { }
  4022e6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4022ea:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  4022ee:	48 89 10             	mov    %rdx,(%rax)
  4022f1:	5d                   	pop    %rbp
  4022f2:	c3                   	retq   
  4022f3:	90                   	nop

00000000004022f4 <_ZNSt4pairISt17_Rb_tree_iteratorIiES1_EC1IS1_S1_vEEOT_OT0_>:
	constexpr pair(_U1&& __x, _U2&& __y)
  4022f4:	55                   	push   %rbp
  4022f5:	48 89 e5             	mov    %rsp,%rbp
  4022f8:	48 83 ec 20          	sub    $0x20,%rsp
  4022fc:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402300:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  402304:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	: first(std::forward<_U1>(__x)), second(std::forward<_U2>(__y)) { }
  402308:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40230c:	48 89 c7             	mov    %rax,%rdi
  40230f:	e8 c7 f9 ff ff       	callq  401cdb <_ZSt7forwardISt17_Rb_tree_iteratorIiEEOT_RNSt16remove_referenceIS2_E4typeE>
  402314:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  402318:	48 8b 00             	mov    (%rax),%rax
  40231b:	48 89 02             	mov    %rax,(%rdx)
  40231e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402322:	48 89 c7             	mov    %rax,%rdi
  402325:	e8 b1 f9 ff ff       	callq  401cdb <_ZSt7forwardISt17_Rb_tree_iteratorIiEEOT_RNSt16remove_referenceIS2_E4typeE>
  40232a:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40232e:	48 8b 00             	mov    (%rax),%rax
  402331:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402335:	c9                   	leaveq 
  402336:	c3                   	retq   
  402337:	90                   	nop

0000000000402338 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11equal_rangeERKi>:
    _Rb_tree<_Key, _Val, _KeyOfValue, _Compare, _Alloc>::
  402338:	55                   	push   %rbp
  402339:	48 89 e5             	mov    %rsp,%rbp
  40233c:	48 81 ec 90 00 00 00 	sub    $0x90,%rsp
  402343:	48 89 bd 78 ff ff ff 	mov    %rdi,-0x88(%rbp)
  40234a:	48 89 b5 70 ff ff ff 	mov    %rsi,-0x90(%rbp)
      _Link_type __x = _M_begin();
  402351:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
  402358:	48 89 c7             	mov    %rax,%rdi
  40235b:	e8 08 f9 ff ff       	callq  401c68 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_beginEv>
  402360:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
      _Link_type __y = _M_end();
  402364:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
  40236b:	48 89 c7             	mov    %rax,%rdi
  40236e:	e8 71 02 00 00       	callq  4025e4 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_M_endEv>
  402373:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
      while (__x != 0)
  402377:	e9 27 01 00 00       	jmpq   4024a3 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11equal_rangeERKi+0x16b>
	  if (_M_impl._M_key_compare(_S_key(__x), __k))
  40237c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402380:	48 89 c7             	mov    %rax,%rdi
  402383:	e8 6e 02 00 00       	callq  4025f6 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_S_keyEPKSt13_Rb_tree_nodeIiE>
  402388:	48 89 c1             	mov    %rax,%rcx
  40238b:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
  402392:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
  402399:	48 89 ce             	mov    %rcx,%rsi
  40239c:	48 89 c7             	mov    %rax,%rdi
  40239f:	e8 7e 02 00 00       	callq  402622 <_ZNKSt4lessIiEclERKiS2_>
  4023a4:	84 c0                	test   %al,%al
  4023a6:	74 15                	je     4023bd <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11equal_rangeERKi+0x85>
	    __x = _S_right(__x);
  4023a8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4023ac:	48 89 c7             	mov    %rax,%rdi
  4023af:	e8 82 fb ff ff       	callq  401f36 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_S_rightEPSt18_Rb_tree_node_base>
  4023b4:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4023b8:	e9 e6 00 00 00       	jmpq   4024a3 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11equal_rangeERKi+0x16b>
	  else if (_M_impl._M_key_compare(__k, _S_key(__x)))
  4023bd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4023c1:	48 89 c7             	mov    %rax,%rdi
  4023c4:	e8 2d 02 00 00       	callq  4025f6 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_S_keyEPKSt13_Rb_tree_nodeIiE>
  4023c9:	48 89 c2             	mov    %rax,%rdx
  4023cc:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
  4023d3:	48 8b 8d 70 ff ff ff 	mov    -0x90(%rbp),%rcx
  4023da:	48 89 ce             	mov    %rcx,%rsi
  4023dd:	48 89 c7             	mov    %rax,%rdi
  4023e0:	e8 3d 02 00 00       	callq  402622 <_ZNKSt4lessIiEclERKiS2_>
  4023e5:	84 c0                	test   %al,%al
  4023e7:	74 1d                	je     402406 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11equal_rangeERKi+0xce>
	    __y = __x, __x = _S_left(__x);
  4023e9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4023ed:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  4023f1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4023f5:	48 89 c7             	mov    %rax,%rdi
  4023f8:	e8 4b fb ff ff       	callq  401f48 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_S_leftEPSt18_Rb_tree_node_base>
  4023fd:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  402401:	e9 9d 00 00 00       	jmpq   4024a3 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11equal_rangeERKi+0x16b>
	      _Link_type __xu(__x), __yu(__y);
  402406:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40240a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  40240e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402412:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
	      __y = __x, __x = _S_left(__x);
  402416:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40241a:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  40241e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402422:	48 89 c7             	mov    %rax,%rdi
  402425:	e8 1e fb ff ff       	callq  401f48 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_S_leftEPSt18_Rb_tree_node_base>
  40242a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
	      __xu = _S_right(__xu);
  40242e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402432:	48 89 c7             	mov    %rax,%rdi
  402435:	e8 fc fa ff ff       	callq  401f36 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_S_rightEPSt18_Rb_tree_node_base>
  40243a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
				    _M_upper_bound(__xu, __yu, __k));
  40243e:	48 8b 8d 70 ff ff ff 	mov    -0x90(%rbp),%rcx
  402445:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  402449:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
  40244d:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
  402454:	48 89 c7             	mov    %rax,%rdi
  402457:	e8 a6 03 00 00       	callq  402802 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_upper_boundEPSt13_Rb_tree_nodeIiES8_RKi>
  40245c:	48 89 45 90          	mov    %rax,-0x70(%rbp)
  402460:	48 8b 8d 70 ff ff ff 	mov    -0x90(%rbp),%rcx
  402467:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  40246b:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  40246f:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
  402476:	48 89 c7             	mov    %rax,%rdi
  402479:	e8 f6 02 00 00       	callq  402774 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiES8_RKi>
  40247e:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  402482:	48 8d 55 90          	lea    -0x70(%rbp),%rdx
  402486:	48 8d 4d a0          	lea    -0x60(%rbp),%rcx
  40248a:	48 8d 45 80          	lea    -0x80(%rbp),%rax
  40248e:	48 89 ce             	mov    %rcx,%rsi
  402491:	48 89 c7             	mov    %rax,%rdi
  402494:	e8 5b fe ff ff       	callq  4022f4 <_ZNSt4pairISt17_Rb_tree_iteratorIiES1_EC1IS1_S1_vEEOT_OT0_>
  402499:	48 8b 45 80          	mov    -0x80(%rbp),%rax
  40249d:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
  4024a1:	eb 50                	jmp    4024f3 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11equal_rangeERKi+0x1bb>
      while (__x != 0)
  4024a3:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  4024a8:	0f 85 ce fe ff ff    	jne    40237c <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11equal_rangeERKi+0x44>
				      iterator(__y));
  4024ae:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  4024b2:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  4024b6:	48 89 d6             	mov    %rdx,%rsi
  4024b9:	48 89 c7             	mov    %rax,%rdi
  4024bc:	e8 19 fe ff ff       	callq  4022da <_ZNSt17_Rb_tree_iteratorIiEC1EPSt13_Rb_tree_nodeIiE>
  4024c1:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  4024c5:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  4024c9:	48 89 d6             	mov    %rdx,%rsi
  4024cc:	48 89 c7             	mov    %rax,%rdi
  4024cf:	e8 06 fe ff ff       	callq  4022da <_ZNSt17_Rb_tree_iteratorIiEC1EPSt13_Rb_tree_nodeIiE>
  4024d4:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
  4024d8:	48 8d 4d d0          	lea    -0x30(%rbp),%rcx
  4024dc:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  4024e0:	48 89 ce             	mov    %rcx,%rsi
  4024e3:	48 89 c7             	mov    %rax,%rdi
  4024e6:	e8 09 fe ff ff       	callq  4022f4 <_ZNSt4pairISt17_Rb_tree_iteratorIiES1_EC1IS1_S1_vEEOT_OT0_>
  4024eb:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  4024ef:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
    }
  4024f3:	c9                   	leaveq 
  4024f4:	c3                   	retq   
  4024f5:	90                   	nop

00000000004024f6 <_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE4sizeEv>:
      size() const _GLIBCXX_NOEXCEPT 
  4024f6:	55                   	push   %rbp
  4024f7:	48 89 e5             	mov    %rsp,%rbp
  4024fa:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return _M_impl._M_node_count; }
  4024fe:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402502:	48 8b 40 28          	mov    0x28(%rax),%rax
  402506:	5d                   	pop    %rbp
  402507:	c3                   	retq   

0000000000402508 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIiES7_>:
      erase(const_iterator __first, const_iterator __last)
  402508:	55                   	push   %rbp
  402509:	48 89 e5             	mov    %rsp,%rbp
  40250c:	48 83 ec 20          	sub    $0x20,%rsp
  402510:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402514:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  402518:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
	_M_erase_aux(__first, __last);
  40251c:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  402520:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  402524:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402528:	48 89 ce             	mov    %rcx,%rsi
  40252b:	48 89 c7             	mov    %rax,%rdi
  40252e:	e8 59 03 00 00       	callq  40288c <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE12_M_erase_auxESt23_Rb_tree_const_iteratorIiES7_>
	return __last._M_const_cast();
  402533:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  402537:	48 89 c7             	mov    %rax,%rdi
  40253a:	e8 71 04 00 00       	callq  4029b0 <_ZNKSt23_Rb_tree_const_iteratorIiE13_M_const_castEv>
      }
  40253f:	c9                   	leaveq 
  402540:	c3                   	retq   
  402541:	90                   	nop

0000000000402542 <_ZNSaISt13_Rb_tree_nodeIiEEC1Ev>:
      allocator() throw() { }
  402542:	55                   	push   %rbp
  402543:	48 89 e5             	mov    %rsp,%rbp
  402546:	48 83 ec 10          	sub    $0x10,%rsp
  40254a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40254e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402552:	48 89 c7             	mov    %rax,%rdi
  402555:	e8 7e 04 00 00       	callq  4029d8 <_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEEC1Ev>
  40255a:	c9                   	leaveq 
  40255b:	c3                   	retq   

000000000040255c <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE13_Rb_tree_implIS3_Lb1EE13_M_initializeEv>:
	  _M_initialize()
  40255c:	55                   	push   %rbp
  40255d:	48 89 e5             	mov    %rsp,%rbp
  402560:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	    this->_M_header._M_color = _S_red;
  402564:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402568:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%rax)
	    this->_M_header._M_parent = 0;
  40256f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402573:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
  40257a:	00 
	    this->_M_header._M_left = &this->_M_header;
  40257b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40257f:	48 8d 50 08          	lea    0x8(%rax),%rdx
  402583:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402587:	48 89 50 18          	mov    %rdx,0x18(%rax)
	    this->_M_header._M_right = &this->_M_header;
  40258b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40258f:	48 8d 50 08          	lea    0x8(%rax),%rdx
  402593:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402597:	48 89 50 20          	mov    %rdx,0x20(%rax)
	  }	    
  40259b:	5d                   	pop    %rbp
  40259c:	c3                   	retq   
  40259d:	90                   	nop

000000000040259e <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE21_M_get_Node_allocatorEv>:
      _M_get_Node_allocator() _GLIBCXX_NOEXCEPT
  40259e:	55                   	push   %rbp
  40259f:	48 89 e5             	mov    %rsp,%rbp
  4025a2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return *static_cast<_Node_allocator*>(&this->_M_impl); }
  4025a6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4025aa:	5d                   	pop    %rbp
  4025ab:	c3                   	retq   

00000000004025ac <_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEE7destroyIS2_EEvPT_>:
        construct(_Up* __p, _Args&&... __args)
	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }

      template<typename _Up>
        void 
        destroy(_Up* __p) { __p->~_Up(); }
  4025ac:	55                   	push   %rbp
  4025ad:	48 89 e5             	mov    %rsp,%rbp
  4025b0:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4025b4:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  4025b8:	5d                   	pop    %rbp
  4025b9:	c3                   	retq   

00000000004025ba <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11_M_put_nodeEPSt13_Rb_tree_nodeIiE>:
      _M_put_node(_Link_type __p)
  4025ba:	55                   	push   %rbp
  4025bb:	48 89 e5             	mov    %rsp,%rbp
  4025be:	48 83 ec 10          	sub    $0x10,%rsp
  4025c2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4025c6:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      { _M_impl._Node_allocator::deallocate(__p, 1); }
  4025ca:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4025ce:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  4025d2:	ba 01 00 00 00       	mov    $0x1,%edx
  4025d7:	48 89 ce             	mov    %rcx,%rsi
  4025da:	48 89 c7             	mov    %rax,%rdi
  4025dd:	e8 00 04 00 00       	callq  4029e2 <_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEE10deallocateEPS2_m>
  4025e2:	c9                   	leaveq 
  4025e3:	c3                   	retq   

00000000004025e4 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_M_endEv>:
      _M_end()
  4025e4:	55                   	push   %rbp
  4025e5:	48 89 e5             	mov    %rsp,%rbp
  4025e8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return reinterpret_cast<_Link_type>(&this->_M_impl._M_header); }
  4025ec:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4025f0:	48 83 c0 08          	add    $0x8,%rax
  4025f4:	5d                   	pop    %rbp
  4025f5:	c3                   	retq   

00000000004025f6 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_S_keyEPKSt13_Rb_tree_nodeIiE>:
      _S_key(_Const_Link_type __x)
  4025f6:	55                   	push   %rbp
  4025f7:	48 89 e5             	mov    %rsp,%rbp
  4025fa:	48 83 ec 20          	sub    $0x20,%rsp
  4025fe:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
      { return _KeyOfValue()(_S_value(__x)); }
  402602:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402606:	48 89 c7             	mov    %rax,%rdi
  402609:	e8 f6 03 00 00       	callq  402a04 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_S_valueEPKSt13_Rb_tree_nodeIiE>
  40260e:	48 89 c2             	mov    %rax,%rdx
  402611:	48 8d 45 ff          	lea    -0x1(%rbp),%rax
  402615:	48 89 d6             	mov    %rdx,%rsi
  402618:	48 89 c7             	mov    %rax,%rdi
  40261b:	e8 9e fb ff ff       	callq  4021be <_ZNKSt9_IdentityIiEclERKi>
  402620:	c9                   	leaveq 
  402621:	c3                   	retq   

0000000000402622 <_ZNKSt4lessIiEclERKiS2_>:
      operator()(const _Tp& __x, const _Tp& __y) const
  402622:	55                   	push   %rbp
  402623:	48 89 e5             	mov    %rsp,%rbp
  402626:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40262a:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  40262e:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
      { return __x < __y; }
  402632:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402636:	8b 10                	mov    (%rax),%edx
  402638:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40263c:	8b 00                	mov    (%rax),%eax
  40263e:	39 c2                	cmp    %eax,%edx
  402640:	0f 9c c0             	setl   %al
  402643:	5d                   	pop    %rbp
  402644:	c3                   	retq   
  402645:	90                   	nop

0000000000402646 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5beginEv>:
      begin() _GLIBCXX_NOEXCEPT
  402646:	55                   	push   %rbp
  402647:	48 89 e5             	mov    %rsp,%rbp
  40264a:	48 83 ec 20          	sub    $0x20,%rsp
  40264e:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
			(this->_M_impl._M_header._M_left));
  402652:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402656:	48 8b 50 18          	mov    0x18(%rax),%rdx
  40265a:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  40265e:	48 89 d6             	mov    %rdx,%rsi
  402661:	48 89 c7             	mov    %rax,%rdi
  402664:	e8 71 fc ff ff       	callq  4022da <_ZNSt17_Rb_tree_iteratorIiEC1EPSt13_Rb_tree_nodeIiE>
  402669:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
      }
  40266d:	c9                   	leaveq 
  40266e:	c3                   	retq   
  40266f:	90                   	nop

0000000000402670 <_ZNKSt17_Rb_tree_iteratorIiEeqERKS0_>:
      operator==(const _Self& __x) const
  402670:	55                   	push   %rbp
  402671:	48 89 e5             	mov    %rsp,%rbp
  402674:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402678:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      { return _M_node == __x._M_node; }
  40267c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402680:	48 8b 10             	mov    (%rax),%rdx
  402683:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402687:	48 8b 00             	mov    (%rax),%rax
  40268a:	48 39 c2             	cmp    %rax,%rdx
  40268d:	0f 94 c0             	sete   %al
  402690:	5d                   	pop    %rbp
  402691:	c3                   	retq   

0000000000402692 <_ZNSt17_Rb_tree_iteratorIiEmmEv>:
      operator--()
  402692:	55                   	push   %rbp
  402693:	48 89 e5             	mov    %rsp,%rbp
  402696:	48 83 ec 10          	sub    $0x10,%rsp
  40269a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	_M_node = _Rb_tree_decrement(_M_node);
  40269e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4026a2:	48 8b 00             	mov    (%rax),%rax
  4026a5:	48 89 c7             	mov    %rax,%rdi
  4026a8:	e8 e3 e7 ff ff       	callq  400e90 <_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base@plt>
  4026ad:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4026b1:	48 89 02             	mov    %rax,(%rdx)
	return *this;
  4026b4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
      }
  4026b8:	c9                   	leaveq 
  4026b9:	c3                   	retq   

00000000004026ba <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_S_keyEPKSt18_Rb_tree_node_base>:
      _S_key(_Const_Base_ptr __x)
  4026ba:	55                   	push   %rbp
  4026bb:	48 89 e5             	mov    %rsp,%rbp
  4026be:	48 83 ec 20          	sub    $0x20,%rsp
  4026c2:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
      { return _KeyOfValue()(_S_value(__x)); }
  4026c6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4026ca:	48 89 c7             	mov    %rax,%rdi
  4026cd:	e8 44 03 00 00       	callq  402a16 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_S_valueEPKSt18_Rb_tree_node_base>
  4026d2:	48 89 c2             	mov    %rax,%rdx
  4026d5:	48 8d 45 ff          	lea    -0x1(%rbp),%rax
  4026d9:	48 89 d6             	mov    %rdx,%rsi
  4026dc:	48 89 c7             	mov    %rax,%rdi
  4026df:	e8 da fa ff ff       	callq  4021be <_ZNKSt9_IdentityIiEclERKi>
  4026e4:	c9                   	leaveq 
  4026e5:	c3                   	retq   

00000000004026e6 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_create_nodeIIRKiEEEPSt13_Rb_tree_nodeIiEDpOT_>:
        _M_create_node(_Args&&... __args)
  4026e6:	55                   	push   %rbp
  4026e7:	48 89 e5             	mov    %rsp,%rbp
  4026ea:	53                   	push   %rbx
  4026eb:	48 83 ec 28          	sub    $0x28,%rsp
  4026ef:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  4026f3:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
	  _Link_type __tmp = _M_get_node();
  4026f7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4026fb:	48 89 c7             	mov    %rax,%rdi
  4026fe:	e8 25 03 00 00       	callq  402a28 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11_M_get_nodeEv>
  402703:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
			  std::forward<_Args>(__args)...);
  402707:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  40270b:	48 89 c7             	mov    %rax,%rdi
  40270e:	e8 ba f5 ff ff       	callq  401ccd <_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE>
  402713:	48 89 c3             	mov    %rax,%rbx
		construct(_M_get_Node_allocator(), __tmp,
  402716:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40271a:	48 89 c7             	mov    %rax,%rdi
  40271d:	e8 7c fe ff ff       	callq  40259e <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE21_M_get_Node_allocatorEv>
	      allocator_traits<_Node_allocator>::
  402722:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  402726:	48 89 da             	mov    %rbx,%rdx
  402729:	48 89 ce             	mov    %rcx,%rsi
  40272c:	48 89 c7             	mov    %rax,%rdi
  40272f:	e8 18 03 00 00       	callq  402a4c <_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIiEEE9constructIS1_IRKiEEEDTcl12_S_constructfp_fp0_spcl7forwardIT0_Efp1_EEERS2_PT_DpOS7_>
	  return __tmp;
  402734:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402738:	eb 33                	jmp    40276d <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_create_nodeIIRKiEEEPSt13_Rb_tree_nodeIiEDpOT_+0x87>
	  __catch(...)
  40273a:	48 89 c7             	mov    %rax,%rdi
  40273d:	e8 3e e8 ff ff       	callq  400f80 <__cxa_begin_catch@plt>
	      _M_put_node(__tmp);
  402742:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  402746:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40274a:	48 89 d6             	mov    %rdx,%rsi
  40274d:	48 89 c7             	mov    %rax,%rdi
  402750:	e8 65 fe ff ff       	callq  4025ba <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11_M_put_nodeEPSt13_Rb_tree_nodeIiE>
	      __throw_exception_again;
  402755:	e8 f6 e6 ff ff       	callq  400e50 <__cxa_rethrow@plt>
  40275a:	48 89 c3             	mov    %rax,%rbx
	  __catch(...)
  40275d:	e8 fe e7 ff ff       	callq  400f60 <__cxa_end_catch@plt>
  402762:	48 89 d8             	mov    %rbx,%rax
  402765:	48 89 c7             	mov    %rax,%rdi
  402768:	e8 83 e8 ff ff       	callq  400ff0 <_Unwind_Resume@plt>
	}
  40276d:	48 83 c4 28          	add    $0x28,%rsp
  402771:	5b                   	pop    %rbx
  402772:	5d                   	pop    %rbp
  402773:	c3                   	retq   

0000000000402774 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiES8_RKi>:
    _Rb_tree<_Key, _Val, _KeyOfValue, _Compare, _Alloc>::
  402774:	55                   	push   %rbp
  402775:	48 89 e5             	mov    %rsp,%rbp
  402778:	48 83 ec 30          	sub    $0x30,%rsp
  40277c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  402780:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  402784:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  402788:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
      while (__x != 0)
  40278c:	eb 53                	jmp    4027e1 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiES8_RKi+0x6d>
	if (!_M_impl._M_key_compare(_S_key(__x), __k))
  40278e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  402792:	48 89 c7             	mov    %rax,%rdi
  402795:	e8 5c fe ff ff       	callq  4025f6 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_S_keyEPKSt13_Rb_tree_nodeIiE>
  40279a:	48 89 c1             	mov    %rax,%rcx
  40279d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4027a1:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  4027a5:	48 89 ce             	mov    %rcx,%rsi
  4027a8:	48 89 c7             	mov    %rax,%rdi
  4027ab:	e8 72 fe ff ff       	callq  402622 <_ZNKSt4lessIiEclERKiS2_>
  4027b0:	83 f0 01             	xor    $0x1,%eax
  4027b3:	84 c0                	test   %al,%al
  4027b5:	74 1a                	je     4027d1 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiES8_RKi+0x5d>
	  __y = __x, __x = _S_left(__x);
  4027b7:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4027bb:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  4027bf:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4027c3:	48 89 c7             	mov    %rax,%rdi
  4027c6:	e8 7d f7 ff ff       	callq  401f48 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_S_leftEPSt18_Rb_tree_node_base>
  4027cb:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  4027cf:	eb 10                	jmp    4027e1 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiES8_RKi+0x6d>
	  __x = _S_right(__x);
  4027d1:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4027d5:	48 89 c7             	mov    %rax,%rdi
  4027d8:	e8 59 f7 ff ff       	callq  401f36 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_S_rightEPSt18_Rb_tree_node_base>
  4027dd:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
      while (__x != 0)
  4027e1:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
  4027e6:	75 a6                	jne    40278e <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiES8_RKi+0x1a>
      return iterator(__y);
  4027e8:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  4027ec:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  4027f0:	48 89 d6             	mov    %rdx,%rsi
  4027f3:	48 89 c7             	mov    %rax,%rdi
  4027f6:	e8 df fa ff ff       	callq  4022da <_ZNSt17_Rb_tree_iteratorIiEC1EPSt13_Rb_tree_nodeIiE>
  4027fb:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    }
  4027ff:	c9                   	leaveq 
  402800:	c3                   	retq   
  402801:	90                   	nop

0000000000402802 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_upper_boundEPSt13_Rb_tree_nodeIiES8_RKi>:
    _Rb_tree<_Key, _Val, _KeyOfValue, _Compare, _Alloc>::
  402802:	55                   	push   %rbp
  402803:	48 89 e5             	mov    %rsp,%rbp
  402806:	48 83 ec 30          	sub    $0x30,%rsp
  40280a:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  40280e:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  402812:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  402816:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
      while (__x != 0)
  40281a:	eb 50                	jmp    40286c <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_upper_boundEPSt13_Rb_tree_nodeIiES8_RKi+0x6a>
	if (_M_impl._M_key_compare(__k, _S_key(__x)))
  40281c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  402820:	48 89 c7             	mov    %rax,%rdi
  402823:	e8 ce fd ff ff       	callq  4025f6 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_S_keyEPKSt13_Rb_tree_nodeIiE>
  402828:	48 89 c2             	mov    %rax,%rdx
  40282b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40282f:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  402833:	48 89 ce             	mov    %rcx,%rsi
  402836:	48 89 c7             	mov    %rax,%rdi
  402839:	e8 e4 fd ff ff       	callq  402622 <_ZNKSt4lessIiEclERKiS2_>
  40283e:	84 c0                	test   %al,%al
  402840:	74 1a                	je     40285c <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_upper_boundEPSt13_Rb_tree_nodeIiES8_RKi+0x5a>
	  __y = __x, __x = _S_left(__x);
  402842:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  402846:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  40284a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40284e:	48 89 c7             	mov    %rax,%rdi
  402851:	e8 f2 f6 ff ff       	callq  401f48 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_S_leftEPSt18_Rb_tree_node_base>
  402856:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  40285a:	eb 10                	jmp    40286c <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_upper_boundEPSt13_Rb_tree_nodeIiES8_RKi+0x6a>
	  __x = _S_right(__x);
  40285c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  402860:	48 89 c7             	mov    %rax,%rdi
  402863:	e8 ce f6 ff ff       	callq  401f36 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_S_rightEPSt18_Rb_tree_node_base>
  402868:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
      while (__x != 0)
  40286c:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
  402871:	75 a9                	jne    40281c <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_upper_boundEPSt13_Rb_tree_nodeIiES8_RKi+0x1a>
      return iterator(__y);
  402873:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  402877:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  40287b:	48 89 d6             	mov    %rdx,%rsi
  40287e:	48 89 c7             	mov    %rax,%rdi
  402881:	e8 54 fa ff ff       	callq  4022da <_ZNSt17_Rb_tree_iteratorIiEC1EPSt13_Rb_tree_nodeIiE>
  402886:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    }
  40288a:	c9                   	leaveq 
  40288b:	c3                   	retq   

000000000040288c <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE12_M_erase_auxESt23_Rb_tree_const_iteratorIiES7_>:
    _Rb_tree<_Key, _Val, _KeyOfValue, _Compare, _Alloc>::
  40288c:	55                   	push   %rbp
  40288d:	48 89 e5             	mov    %rsp,%rbp
  402890:	41 56                	push   %r14
  402892:	41 55                	push   %r13
  402894:	41 54                	push   %r12
  402896:	53                   	push   %rbx
  402897:	48 83 ec 60          	sub    $0x60,%rsp
  40289b:	48 89 7d 98          	mov    %rdi,-0x68(%rbp)
  40289f:	48 89 75 90          	mov    %rsi,-0x70(%rbp)
  4028a3:	48 89 55 80          	mov    %rdx,-0x80(%rbp)
      if (__first == begin() && __last == end())
  4028a7:	bb 00 00 00 00       	mov    $0x0,%ebx
  4028ac:	41 bc 00 00 00 00    	mov    $0x0,%r12d
  4028b2:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  4028b6:	48 89 c7             	mov    %rax,%rdi
  4028b9:	e8 88 fd ff ff       	callq  402646 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5beginEv>
  4028be:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  4028c2:	41 bd 01 00 00 00    	mov    $0x1,%r13d
  4028c8:	48 8d 55 b0          	lea    -0x50(%rbp),%rdx
  4028cc:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  4028d0:	48 89 d6             	mov    %rdx,%rsi
  4028d3:	48 89 c7             	mov    %rax,%rdi
  4028d6:	e8 3f f5 ff ff       	callq  401e1a <_ZNSt23_Rb_tree_const_iteratorIiEC1ERKSt17_Rb_tree_iteratorIiE>
  4028db:	41 be 01 00 00 00    	mov    $0x1,%r14d
  4028e1:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
  4028e5:	48 8d 45 90          	lea    -0x70(%rbp),%rax
  4028e9:	48 89 d6             	mov    %rdx,%rsi
  4028ec:	48 89 c7             	mov    %rax,%rdi
  4028ef:	e8 ba 01 00 00       	callq  402aae <_ZNKSt23_Rb_tree_const_iteratorIiEeqERKS0_>
  4028f4:	84 c0                	test   %al,%al
  4028f6:	74 4c                	je     402944 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE12_M_erase_auxESt23_Rb_tree_const_iteratorIiES7_+0xb8>
  4028f8:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  4028fc:	48 89 c7             	mov    %rax,%rdi
  4028ff:	e8 80 01 00 00       	callq  402a84 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE3endEv>
  402904:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  402908:	bb 01 00 00 00       	mov    $0x1,%ebx
  40290d:	48 8d 55 d0          	lea    -0x30(%rbp),%rdx
  402911:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  402915:	48 89 d6             	mov    %rdx,%rsi
  402918:	48 89 c7             	mov    %rax,%rdi
  40291b:	e8 fa f4 ff ff       	callq  401e1a <_ZNSt23_Rb_tree_const_iteratorIiEC1ERKSt17_Rb_tree_iteratorIiE>
  402920:	41 bc 01 00 00 00    	mov    $0x1,%r12d
  402926:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
  40292a:	48 8d 45 80          	lea    -0x80(%rbp),%rax
  40292e:	48 89 d6             	mov    %rdx,%rsi
  402931:	48 89 c7             	mov    %rax,%rdi
  402934:	e8 75 01 00 00       	callq  402aae <_ZNKSt23_Rb_tree_const_iteratorIiEeqERKS0_>
  402939:	84 c0                	test   %al,%al
  40293b:	74 07                	je     402944 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE12_M_erase_auxESt23_Rb_tree_const_iteratorIiES7_+0xb8>
  40293d:	b8 01 00 00 00       	mov    $0x1,%eax
  402942:	eb 05                	jmp    402949 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE12_M_erase_auxESt23_Rb_tree_const_iteratorIiES7_+0xbd>
  402944:	b8 00 00 00 00       	mov    $0x0,%eax
  402949:	45 84 e4             	test   %r12b,%r12b
  40294c:	84 db                	test   %bl,%bl
  40294e:	45 84 f6             	test   %r14b,%r14b
  402951:	45 84 ed             	test   %r13b,%r13b
  402954:	84 c0                	test   %al,%al
  402956:	74 0e                	je     402966 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE12_M_erase_auxESt23_Rb_tree_const_iteratorIiES7_+0xda>
	clear();
  402958:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  40295c:	48 89 c7             	mov    %rax,%rdi
  40295f:	e8 6c 01 00 00       	callq  402ad0 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5clearEv>
  402964:	eb 3c                	jmp    4029a2 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE12_M_erase_auxESt23_Rb_tree_const_iteratorIiES7_+0x116>
	while (__first != __last)
  402966:	eb 23                	jmp    40298b <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE12_M_erase_auxESt23_Rb_tree_const_iteratorIiES7_+0xff>
	  erase(__first++);
  402968:	48 8d 45 90          	lea    -0x70(%rbp),%rax
  40296c:	be 00 00 00 00       	mov    $0x0,%esi
  402971:	48 89 c7             	mov    %rax,%rdi
  402974:	e8 e5 01 00 00       	callq  402b5e <_ZNSt23_Rb_tree_const_iteratorIiEppEi>
  402979:	48 89 c2             	mov    %rax,%rdx
  40297c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  402980:	48 89 d6             	mov    %rdx,%rsi
  402983:	48 89 c7             	mov    %rax,%rdi
  402986:	e8 09 02 00 00       	callq  402b94 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIiE>
	while (__first != __last)
  40298b:	48 8d 55 80          	lea    -0x80(%rbp),%rdx
  40298f:	48 8d 45 90          	lea    -0x70(%rbp),%rax
  402993:	48 89 d6             	mov    %rdx,%rsi
  402996:	48 89 c7             	mov    %rax,%rdi
  402999:	e8 f6 f0 ff ff       	callq  401a94 <_ZNKSt23_Rb_tree_const_iteratorIiEneERKS0_>
  40299e:	84 c0                	test   %al,%al
  4029a0:	75 c6                	jne    402968 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE12_M_erase_auxESt23_Rb_tree_const_iteratorIiES7_+0xdc>
    }
  4029a2:	48 83 c4 60          	add    $0x60,%rsp
  4029a6:	5b                   	pop    %rbx
  4029a7:	41 5c                	pop    %r12
  4029a9:	41 5d                	pop    %r13
  4029ab:	41 5e                	pop    %r14
  4029ad:	5d                   	pop    %rbp
  4029ae:	c3                   	retq   
  4029af:	90                   	nop

00000000004029b0 <_ZNKSt23_Rb_tree_const_iteratorIiE13_M_const_castEv>:
      _M_const_cast() const
  4029b0:	55                   	push   %rbp
  4029b1:	48 89 e5             	mov    %rsp,%rbp
  4029b4:	48 83 ec 20          	sub    $0x20,%rsp
  4029b8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
			(const_cast<typename iterator::_Base_ptr>(_M_node))); }
  4029bc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4029c0:	48 8b 10             	mov    (%rax),%rdx
  4029c3:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  4029c7:	48 89 d6             	mov    %rdx,%rsi
  4029ca:	48 89 c7             	mov    %rax,%rdi
  4029cd:	e8 08 f9 ff ff       	callq  4022da <_ZNSt17_Rb_tree_iteratorIiEC1EPSt13_Rb_tree_nodeIiE>
  4029d2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4029d6:	c9                   	leaveq 
  4029d7:	c3                   	retq   

00000000004029d8 <_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEEC1Ev>:
      new_allocator() _GLIBCXX_USE_NOEXCEPT { }
  4029d8:	55                   	push   %rbp
  4029d9:	48 89 e5             	mov    %rsp,%rbp
  4029dc:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4029e0:	5d                   	pop    %rbp
  4029e1:	c3                   	retq   

00000000004029e2 <_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEE10deallocateEPS2_m>:
      deallocate(pointer __p, size_type)
  4029e2:	55                   	push   %rbp
  4029e3:	48 89 e5             	mov    %rsp,%rbp
  4029e6:	48 83 ec 20          	sub    $0x20,%rsp
  4029ea:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4029ee:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  4029f2:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
      { ::operator delete(__p); }
  4029f6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4029fa:	48 89 c7             	mov    %rax,%rdi
  4029fd:	e8 1e e4 ff ff       	callq  400e20 <_ZdlPv@plt>
  402a02:	c9                   	leaveq 
  402a03:	c3                   	retq   

0000000000402a04 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_S_valueEPKSt13_Rb_tree_nodeIiE>:
      _S_value(_Const_Link_type __x)
  402a04:	55                   	push   %rbp
  402a05:	48 89 e5             	mov    %rsp,%rbp
  402a08:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return __x->_M_value_field; }
  402a0c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402a10:	48 83 c0 20          	add    $0x20,%rax
  402a14:	5d                   	pop    %rbp
  402a15:	c3                   	retq   

0000000000402a16 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_S_valueEPKSt18_Rb_tree_node_base>:
      _S_value(_Const_Base_ptr __x)
  402a16:	55                   	push   %rbp
  402a17:	48 89 e5             	mov    %rsp,%rbp
  402a1a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return static_cast<_Const_Link_type>(__x)->_M_value_field; }
  402a1e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402a22:	48 83 c0 20          	add    $0x20,%rax
  402a26:	5d                   	pop    %rbp
  402a27:	c3                   	retq   

0000000000402a28 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11_M_get_nodeEv>:
      _M_get_node()
  402a28:	55                   	push   %rbp
  402a29:	48 89 e5             	mov    %rsp,%rbp
  402a2c:	48 83 ec 10          	sub    $0x10,%rsp
  402a30:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return _M_impl._Node_allocator::allocate(1); }
  402a34:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402a38:	ba 00 00 00 00       	mov    $0x0,%edx
  402a3d:	be 01 00 00 00       	mov    $0x1,%esi
  402a42:	48 89 c7             	mov    %rax,%rdi
  402a45:	e8 90 01 00 00       	callq  402bda <_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEE8allocateEmPKv>
  402a4a:	c9                   	leaveq 
  402a4b:	c3                   	retq   

0000000000402a4c <_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIiEEE9constructIS1_IRKiEEEDTcl12_S_constructfp_fp0_spcl7forwardIT0_Efp1_EEERS2_PT_DpOS7_>:
       *  if that expression is well-formed, otherwise uses placement-new
       *  to construct an object of type @a _Tp at location @a __p from the
       *  arguments @a __args...
      */
      template<typename _Tp, typename... _Args>
	static auto construct(_Alloc& __a, _Tp* __p, _Args&&... __args)
  402a4c:	55                   	push   %rbp
  402a4d:	48 89 e5             	mov    %rsp,%rbp
  402a50:	48 83 ec 20          	sub    $0x20,%rsp
  402a54:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402a58:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  402a5c:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	-> decltype(_S_construct(__a, __p, std::forward<_Args>(__args)...))
	{ _S_construct(__a, __p, std::forward<_Args>(__args)...); }
  402a60:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402a64:	48 89 c7             	mov    %rax,%rdi
  402a67:	e8 61 f2 ff ff       	callq  401ccd <_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE>
  402a6c:	48 89 c2             	mov    %rax,%rdx
  402a6f:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  402a73:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402a77:	48 89 ce             	mov    %rcx,%rsi
  402a7a:	48 89 c7             	mov    %rax,%rdi
  402a7d:	e8 a4 01 00 00       	callq  402c26 <_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIiEEE12_S_constructIS1_IRKiEEENSt9enable_ifIXsrNS3_18__construct_helperIT_IDpT0_EEE5valueEvE4typeERS2_PS9_DpOSA_>
  402a82:	c9                   	leaveq 
  402a83:	c3                   	retq   

0000000000402a84 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE3endEv>:
      end() _GLIBCXX_NOEXCEPT
  402a84:	55                   	push   %rbp
  402a85:	48 89 e5             	mov    %rsp,%rbp
  402a88:	48 83 ec 20          	sub    $0x20,%rsp
  402a8c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
      { return iterator(static_cast<_Link_type>(&this->_M_impl._M_header)); }
  402a90:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402a94:	48 8d 50 08          	lea    0x8(%rax),%rdx
  402a98:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  402a9c:	48 89 d6             	mov    %rdx,%rsi
  402a9f:	48 89 c7             	mov    %rax,%rdi
  402aa2:	e8 33 f8 ff ff       	callq  4022da <_ZNSt17_Rb_tree_iteratorIiEC1EPSt13_Rb_tree_nodeIiE>
  402aa7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402aab:	c9                   	leaveq 
  402aac:	c3                   	retq   
  402aad:	90                   	nop

0000000000402aae <_ZNKSt23_Rb_tree_const_iteratorIiEeqERKS0_>:
      operator==(const _Self& __x) const
  402aae:	55                   	push   %rbp
  402aaf:	48 89 e5             	mov    %rsp,%rbp
  402ab2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402ab6:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      { return _M_node == __x._M_node; }
  402aba:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402abe:	48 8b 10             	mov    (%rax),%rdx
  402ac1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402ac5:	48 8b 00             	mov    (%rax),%rax
  402ac8:	48 39 c2             	cmp    %rax,%rdx
  402acb:	0f 94 c0             	sete   %al
  402ace:	5d                   	pop    %rbp
  402acf:	c3                   	retq   

0000000000402ad0 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5clearEv>:
      clear() _GLIBCXX_NOEXCEPT
  402ad0:	55                   	push   %rbp
  402ad1:	48 89 e5             	mov    %rsp,%rbp
  402ad4:	53                   	push   %rbx
  402ad5:	48 83 ec 18          	sub    $0x18,%rsp
  402ad9:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
        _M_erase(_M_begin());
  402add:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402ae1:	48 89 c7             	mov    %rax,%rdi
  402ae4:	e8 7f f1 ff ff       	callq  401c68 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_beginEv>
  402ae9:	48 89 c2             	mov    %rax,%rdx
  402aec:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402af0:	48 89 d6             	mov    %rdx,%rsi
  402af3:	48 89 c7             	mov    %rax,%rdi
  402af6:	e8 09 f1 ff ff       	callq  401c04 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE>
        _M_leftmost() = _M_end();
  402afb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402aff:	48 89 c7             	mov    %rax,%rdi
  402b02:	e8 57 01 00 00       	callq  402c5e <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11_M_leftmostEv>
  402b07:	48 89 c3             	mov    %rax,%rbx
  402b0a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402b0e:	48 89 c7             	mov    %rax,%rdi
  402b11:	e8 ce fa ff ff       	callq  4025e4 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_M_endEv>
  402b16:	48 89 03             	mov    %rax,(%rbx)
        _M_root() = 0;
  402b19:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402b1d:	48 89 c7             	mov    %rax,%rdi
  402b20:	e8 4b 01 00 00       	callq  402c70 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_M_rootEv>
  402b25:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
        _M_rightmost() = _M_end();
  402b2c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402b30:	48 89 c7             	mov    %rax,%rdi
  402b33:	e8 4a 01 00 00       	callq  402c82 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE12_M_rightmostEv>
  402b38:	48 89 c3             	mov    %rax,%rbx
  402b3b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402b3f:	48 89 c7             	mov    %rax,%rdi
  402b42:	e8 9d fa ff ff       	callq  4025e4 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_M_endEv>
  402b47:	48 89 03             	mov    %rax,(%rbx)
        _M_impl._M_node_count = 0;
  402b4a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402b4e:	48 c7 40 28 00 00 00 	movq   $0x0,0x28(%rax)
  402b55:	00 
      }
  402b56:	48 83 c4 18          	add    $0x18,%rsp
  402b5a:	5b                   	pop    %rbx
  402b5b:	5d                   	pop    %rbp
  402b5c:	c3                   	retq   
  402b5d:	90                   	nop

0000000000402b5e <_ZNSt23_Rb_tree_const_iteratorIiEppEi>:
      operator++(int)
  402b5e:	55                   	push   %rbp
  402b5f:	48 89 e5             	mov    %rsp,%rbp
  402b62:	48 83 ec 20          	sub    $0x20,%rsp
  402b66:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  402b6a:	89 75 e4             	mov    %esi,-0x1c(%rbp)
	_Self __tmp = *this;
  402b6d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402b71:	48 8b 00             	mov    (%rax),%rax
  402b74:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
	_M_node = _Rb_tree_increment(_M_node);
  402b78:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402b7c:	48 8b 00             	mov    (%rax),%rax
  402b7f:	48 89 c7             	mov    %rax,%rdi
  402b82:	e8 49 e3 ff ff       	callq  400ed0 <_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base@plt>
  402b87:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  402b8b:	48 89 02             	mov    %rax,(%rdx)
	return __tmp;
  402b8e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
      }
  402b92:	c9                   	leaveq 
  402b93:	c3                   	retq   

0000000000402b94 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIiE>:
      erase(const_iterator __position)
  402b94:	55                   	push   %rbp
  402b95:	48 89 e5             	mov    %rsp,%rbp
  402b98:	48 83 ec 20          	sub    $0x20,%rsp
  402b9c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  402ba0:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
	const_iterator __result = __position;
  402ba4:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  402ba8:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
	++__result;
  402bac:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  402bb0:	48 89 c7             	mov    %rax,%rdi
  402bb3:	e8 fe ee ff ff       	callq  401ab6 <_ZNSt23_Rb_tree_const_iteratorIiEppEv>
	_M_erase_aux(__position);
  402bb8:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  402bbc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402bc0:	48 89 d6             	mov    %rdx,%rsi
  402bc3:	48 89 c7             	mov    %rax,%rdi
  402bc6:	e8 c9 00 00 00       	callq  402c94 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE12_M_erase_auxESt23_Rb_tree_const_iteratorIiE>
	return __result._M_const_cast();
  402bcb:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  402bcf:	48 89 c7             	mov    %rax,%rdi
  402bd2:	e8 d9 fd ff ff       	callq  4029b0 <_ZNKSt23_Rb_tree_const_iteratorIiE13_M_const_castEv>
      }
  402bd7:	c9                   	leaveq 
  402bd8:	c3                   	retq   
  402bd9:	90                   	nop

0000000000402bda <_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEE8allocateEmPKv>:
      allocate(size_type __n, const void* = 0)
  402bda:	55                   	push   %rbp
  402bdb:	48 89 e5             	mov    %rsp,%rbp
  402bde:	48 83 ec 20          	sub    $0x20,%rsp
  402be2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402be6:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  402bea:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	if (__n > this->max_size())
  402bee:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402bf2:	48 89 c7             	mov    %rax,%rdi
  402bf5:	e8 ee 00 00 00       	callq  402ce8 <_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEE8max_sizeEv>
  402bfa:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
  402bfe:	0f 92 c0             	setb   %al
  402c01:	84 c0                	test   %al,%al
  402c03:	74 05                	je     402c0a <_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEE8allocateEmPKv+0x30>
	  std::__throw_bad_alloc();
  402c05:	e8 66 e3 ff ff       	callq  400f70 <_ZSt17__throw_bad_allocv@plt>
	return static_cast<_Tp*>(::operator new(__n * sizeof(_Tp)));
  402c0a:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  402c0e:	48 89 d0             	mov    %rdx,%rax
  402c11:	48 c1 e0 02          	shl    $0x2,%rax
  402c15:	48 01 d0             	add    %rdx,%rax
  402c18:	48 c1 e0 03          	shl    $0x3,%rax
  402c1c:	48 89 c7             	mov    %rax,%rdi
  402c1f:	e8 bc e3 ff ff       	callq  400fe0 <_Znwm@plt>
      }
  402c24:	c9                   	leaveq 
  402c25:	c3                   	retq   

0000000000402c26 <_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIiEEE12_S_constructIS1_IRKiEEENSt9enable_ifIXsrNS3_18__construct_helperIT_IDpT0_EEE5valueEvE4typeERS2_PS9_DpOSA_>:
       	_S_construct(_Alloc& __a, _Tp* __p, _Args&&... __args)
  402c26:	55                   	push   %rbp
  402c27:	48 89 e5             	mov    %rsp,%rbp
  402c2a:	48 83 ec 20          	sub    $0x20,%rsp
  402c2e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402c32:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  402c36:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	{ __a.construct(__p, std::forward<_Args>(__args)...); }
  402c3a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402c3e:	48 89 c7             	mov    %rax,%rdi
  402c41:	e8 87 f0 ff ff       	callq  401ccd <_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE>
  402c46:	48 89 c2             	mov    %rax,%rdx
  402c49:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  402c4d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402c51:	48 89 ce             	mov    %rcx,%rsi
  402c54:	48 89 c7             	mov    %rax,%rdi
  402c57:	e8 a0 00 00 00       	callq  402cfc <_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEE9constructIS2_IRKiEEEvPT_DpOT0_>
  402c5c:	c9                   	leaveq 
  402c5d:	c3                   	retq   

0000000000402c5e <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11_M_leftmostEv>:
      _M_leftmost()
  402c5e:	55                   	push   %rbp
  402c5f:	48 89 e5             	mov    %rsp,%rbp
  402c62:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return this->_M_impl._M_header._M_left; }
  402c66:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402c6a:	48 83 c0 18          	add    $0x18,%rax
  402c6e:	5d                   	pop    %rbp
  402c6f:	c3                   	retq   

0000000000402c70 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_M_rootEv>:
      _M_root()
  402c70:	55                   	push   %rbp
  402c71:	48 89 e5             	mov    %rsp,%rbp
  402c74:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return this->_M_impl._M_header._M_parent; }
  402c78:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402c7c:	48 83 c0 10          	add    $0x10,%rax
  402c80:	5d                   	pop    %rbp
  402c81:	c3                   	retq   

0000000000402c82 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE12_M_rightmostEv>:
      _M_rightmost()
  402c82:	55                   	push   %rbp
  402c83:	48 89 e5             	mov    %rsp,%rbp
  402c86:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return this->_M_impl._M_header._M_right; }
  402c8a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402c8e:	48 83 c0 20          	add    $0x20,%rax
  402c92:	5d                   	pop    %rbp
  402c93:	c3                   	retq   

0000000000402c94 <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE12_M_erase_auxESt23_Rb_tree_const_iteratorIiE>:
    _Rb_tree<_Key, _Val, _KeyOfValue, _Compare, _Alloc>::
  402c94:	55                   	push   %rbp
  402c95:	48 89 e5             	mov    %rsp,%rbp
  402c98:	48 83 ec 20          	sub    $0x20,%rsp
  402c9c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  402ca0:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
				 this->_M_impl._M_header));
  402ca4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402ca8:	48 8d 50 08          	lea    0x8(%rax),%rdx
  402cac:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  402cb0:	48 89 d6             	mov    %rdx,%rsi
  402cb3:	48 89 c7             	mov    %rax,%rdi
  402cb6:	e8 75 e2 ff ff       	callq  400f30 <_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_@plt>
  402cbb:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
      _M_destroy_node(__y);
  402cbf:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  402cc3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402cc7:	48 89 d6             	mov    %rdx,%rsi
  402cca:	48 89 c7             	mov    %rax,%rdi
  402ccd:	e8 88 f2 ff ff       	callq  401f5a <_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE15_M_destroy_nodeEPSt13_Rb_tree_nodeIiE>
      --_M_impl._M_node_count;
  402cd2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402cd6:	48 8b 40 28          	mov    0x28(%rax),%rax
  402cda:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
  402cde:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402ce2:	48 89 50 28          	mov    %rdx,0x28(%rax)
    }
  402ce6:	c9                   	leaveq 
  402ce7:	c3                   	retq   

0000000000402ce8 <_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEE8max_sizeEv>:
      max_size() const _GLIBCXX_USE_NOEXCEPT
  402ce8:	55                   	push   %rbp
  402ce9:	48 89 e5             	mov    %rsp,%rbp
  402cec:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return size_t(-1) / sizeof(_Tp); }
  402cf0:	48 b8 66 66 66 66 66 	movabs $0x666666666666666,%rax
  402cf7:	66 66 06 
  402cfa:	5d                   	pop    %rbp
  402cfb:	c3                   	retq   

0000000000402cfc <_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEE9constructIS2_IRKiEEEvPT_DpOT0_>:
        construct(_Up* __p, _Args&&... __args)
  402cfc:	55                   	push   %rbp
  402cfd:	48 89 e5             	mov    %rsp,%rbp
  402d00:	53                   	push   %rbx
  402d01:	48 83 ec 28          	sub    $0x28,%rsp
  402d05:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  402d09:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  402d0d:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
  402d11:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402d15:	48 89 c7             	mov    %rax,%rdi
  402d18:	e8 b0 ef ff ff       	callq  401ccd <_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE>
  402d1d:	48 89 c3             	mov    %rax,%rbx
  402d20:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  402d24:	48 89 c6             	mov    %rax,%rsi
  402d27:	bf 28 00 00 00       	mov    $0x28,%edi
  402d2c:	e8 97 ec ff ff       	callq  4019c8 <_ZnwmPv>
  402d31:	48 85 c0             	test   %rax,%rax
  402d34:	74 0b                	je     402d41 <_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEE9constructIS2_IRKiEEEvPT_DpOT0_+0x45>
  402d36:	48 89 de             	mov    %rbx,%rsi
  402d39:	48 89 c7             	mov    %rax,%rdi
  402d3c:	e8 07 00 00 00       	callq  402d48 <_ZNSt13_Rb_tree_nodeIiEC1IIRKiEEEDpOT_>
  402d41:	48 83 c4 28          	add    $0x28,%rsp
  402d45:	5b                   	pop    %rbx
  402d46:	5d                   	pop    %rbp
  402d47:	c3                   	retq   

0000000000402d48 <_ZNSt13_Rb_tree_nodeIiEC1IIRKiEEEDpOT_>:
        _Rb_tree_node(_Args&&... __args)
  402d48:	55                   	push   %rbp
  402d49:	48 89 e5             	mov    %rsp,%rbp
  402d4c:	48 83 ec 10          	sub    $0x10,%rsp
  402d50:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402d54:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	  _M_value_field(std::forward<_Args>(__args)...) { }
  402d58:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402d5c:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  402d62:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402d66:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  402d6d:	00 
  402d6e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402d72:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
  402d79:	00 
  402d7a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402d7e:	48 c7 40 18 00 00 00 	movq   $0x0,0x18(%rax)
  402d85:	00 
  402d86:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402d8a:	48 89 c7             	mov    %rax,%rdi
  402d8d:	e8 3b ef ff ff       	callq  401ccd <_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE>
  402d92:	8b 10                	mov    (%rax),%edx
  402d94:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402d98:	89 50 20             	mov    %edx,0x20(%rax)
  402d9b:	c9                   	leaveq 
  402d9c:	c3                   	retq   
  402d9d:	0f 1f 00             	nopl   (%rax)

0000000000402da0 <__libc_csu_init>:
  402da0:	41 57                	push   %r15
  402da2:	41 89 ff             	mov    %edi,%r15d
  402da5:	41 56                	push   %r14
  402da7:	49 89 f6             	mov    %rsi,%r14
  402daa:	41 55                	push   %r13
  402dac:	49 89 d5             	mov    %rdx,%r13
  402daf:	41 54                	push   %r12
  402db1:	4c 8d 25 28 20 20 00 	lea    0x202028(%rip),%r12        # 604de0 <__frame_dummy_init_array_entry>
  402db8:	55                   	push   %rbp
  402db9:	48 8d 2d 28 20 20 00 	lea    0x202028(%rip),%rbp        # 604de8 <__init_array_end>
  402dc0:	53                   	push   %rbx
  402dc1:	4c 29 e5             	sub    %r12,%rbp
  402dc4:	31 db                	xor    %ebx,%ebx
  402dc6:	48 c1 fd 03          	sar    $0x3,%rbp
  402dca:	48 83 ec 08          	sub    $0x8,%rsp
  402dce:	e8 d5 df ff ff       	callq  400da8 <_init>
  402dd3:	48 85 ed             	test   %rbp,%rbp
  402dd6:	74 1e                	je     402df6 <__libc_csu_init+0x56>
  402dd8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402ddf:	00 
  402de0:	4c 89 ea             	mov    %r13,%rdx
  402de3:	4c 89 f6             	mov    %r14,%rsi
  402de6:	44 89 ff             	mov    %r15d,%edi
  402de9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  402ded:	48 83 c3 01          	add    $0x1,%rbx
  402df1:	48 39 eb             	cmp    %rbp,%rbx
  402df4:	75 ea                	jne    402de0 <__libc_csu_init+0x40>
  402df6:	48 83 c4 08          	add    $0x8,%rsp
  402dfa:	5b                   	pop    %rbx
  402dfb:	5d                   	pop    %rbp
  402dfc:	41 5c                	pop    %r12
  402dfe:	41 5d                	pop    %r13
  402e00:	41 5e                	pop    %r14
  402e02:	41 5f                	pop    %r15
  402e04:	c3                   	retq   
  402e05:	90                   	nop
  402e06:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402e0d:	00 00 00 

0000000000402e10 <__libc_csu_fini>:
  402e10:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000402e14 <_fini>:
  402e14:	48 83 ec 08          	sub    $0x8,%rsp
  402e18:	48 83 c4 08          	add    $0x8,%rsp
  402e1c:	c3                   	retq   
