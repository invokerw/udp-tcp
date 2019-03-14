
tcp_client：     文件格式 elf64-x86-64


Disassembly of section .init:

00000000004009a8 <_init>:
  4009a8:	48 83 ec 08          	sub    $0x8,%rsp
  4009ac:	48 8b 05 45 16 20 00 	mov    0x201645(%rip),%rax        # 601ff8 <__gmon_start__>
  4009b3:	48 85 c0             	test   %rax,%rax
  4009b6:	74 05                	je     4009bd <_init+0x15>
  4009b8:	e8 93 01 00 00       	callq  400b50 <.plt.got>
  4009bd:	48 83 c4 08          	add    $0x8,%rsp
  4009c1:	c3                   	retq   

Disassembly of section .plt:

00000000004009d0 <.plt>:
  4009d0:	ff 35 32 16 20 00    	pushq  0x201632(%rip)        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4009d6:	ff 25 34 16 20 00    	jmpq   *0x201634(%rip)        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4009dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004009e0 <memset@plt>:
  4009e0:	ff 25 32 16 20 00    	jmpq   *0x201632(%rip)        # 602018 <memset@GLIBC_2.2.5>
  4009e6:	68 00 00 00 00       	pushq  $0x0
  4009eb:	e9 e0 ff ff ff       	jmpq   4009d0 <.plt>

00000000004009f0 <_ZNSsC1EPKcmRKSaIcE@plt>:
  4009f0:	ff 25 2a 16 20 00    	jmpq   *0x20162a(%rip)        # 602020 <_ZNSsC1EPKcmRKSaIcE@GLIBCXX_3.4>
  4009f6:	68 01 00 00 00       	pushq  $0x1
  4009fb:	e9 d0 ff ff ff       	jmpq   4009d0 <.plt>

0000000000400a00 <_ZNKSs5c_strEv@plt>:
  400a00:	ff 25 22 16 20 00    	jmpq   *0x201622(%rip)        # 602028 <_ZNKSs5c_strEv@GLIBCXX_3.4>
  400a06:	68 02 00 00 00       	pushq  $0x2
  400a0b:	e9 c0 ff ff ff       	jmpq   4009d0 <.plt>

0000000000400a10 <htons@plt>:
  400a10:	ff 25 1a 16 20 00    	jmpq   *0x20161a(%rip)        # 602030 <htons@GLIBC_2.2.5>
  400a16:	68 03 00 00 00       	pushq  $0x3
  400a1b:	e9 b0 ff ff ff       	jmpq   4009d0 <.plt>

0000000000400a20 <_ZNKSs4sizeEv@plt>:
  400a20:	ff 25 12 16 20 00    	jmpq   *0x201612(%rip)        # 602038 <_ZNKSs4sizeEv@GLIBCXX_3.4>
  400a26:	68 04 00 00 00       	pushq  $0x4
  400a2b:	e9 a0 ff ff ff       	jmpq   4009d0 <.plt>

0000000000400a30 <__libc_start_main@plt>:
  400a30:	ff 25 0a 16 20 00    	jmpq   *0x20160a(%rip)        # 602040 <__libc_start_main@GLIBC_2.2.5>
  400a36:	68 05 00 00 00       	pushq  $0x5
  400a3b:	e9 90 ff ff ff       	jmpq   4009d0 <.plt>

0000000000400a40 <recv@plt>:
  400a40:	ff 25 02 16 20 00    	jmpq   *0x201602(%rip)        # 602048 <recv@GLIBC_2.2.5>
  400a46:	68 06 00 00 00       	pushq  $0x6
  400a4b:	e9 80 ff ff ff       	jmpq   4009d0 <.plt>

0000000000400a50 <setsockopt@plt>:
  400a50:	ff 25 fa 15 20 00    	jmpq   *0x2015fa(%rip)        # 602050 <setsockopt@GLIBC_2.2.5>
  400a56:	68 07 00 00 00       	pushq  $0x7
  400a5b:	e9 70 ff ff ff       	jmpq   4009d0 <.plt>

0000000000400a60 <_ZNSsD1Ev@plt>:
  400a60:	ff 25 f2 15 20 00    	jmpq   *0x2015f2(%rip)        # 602058 <_ZNSsD1Ev@GLIBCXX_3.4>
  400a66:	68 08 00 00 00       	pushq  $0x8
  400a6b:	e9 60 ff ff ff       	jmpq   4009d0 <.plt>

0000000000400a70 <_ZNSsC1EPKcRKSaIcE@plt>:
  400a70:	ff 25 ea 15 20 00    	jmpq   *0x2015ea(%rip)        # 602060 <_ZNSsC1EPKcRKSaIcE@GLIBCXX_3.4>
  400a76:	68 09 00 00 00       	pushq  $0x9
  400a7b:	e9 50 ff ff ff       	jmpq   4009d0 <.plt>

0000000000400a80 <usleep@plt>:
  400a80:	ff 25 e2 15 20 00    	jmpq   *0x2015e2(%rip)        # 602068 <usleep@GLIBC_2.2.5>
  400a86:	68 0a 00 00 00       	pushq  $0xa
  400a8b:	e9 40 ff ff ff       	jmpq   4009d0 <.plt>

0000000000400a90 <connect@plt>:
  400a90:	ff 25 da 15 20 00    	jmpq   *0x2015da(%rip)        # 602070 <connect@GLIBC_2.2.5>
  400a96:	68 0b 00 00 00       	pushq  $0xb
  400a9b:	e9 30 ff ff ff       	jmpq   4009d0 <.plt>

0000000000400aa0 <socket@plt>:
  400aa0:	ff 25 d2 15 20 00    	jmpq   *0x2015d2(%rip)        # 602078 <socket@GLIBC_2.2.5>
  400aa6:	68 0c 00 00 00       	pushq  $0xc
  400aab:	e9 20 ff ff ff       	jmpq   4009d0 <.plt>

0000000000400ab0 <__errno_location@plt>:
  400ab0:	ff 25 ca 15 20 00    	jmpq   *0x2015ca(%rip)        # 602080 <__errno_location@GLIBC_2.2.5>
  400ab6:	68 0d 00 00 00       	pushq  $0xd
  400abb:	e9 10 ff ff ff       	jmpq   4009d0 <.plt>

0000000000400ac0 <_ZNSaIcED1Ev@plt>:
  400ac0:	ff 25 c2 15 20 00    	jmpq   *0x2015c2(%rip)        # 602088 <_ZNSaIcED1Ev@GLIBCXX_3.4>
  400ac6:	68 0e 00 00 00       	pushq  $0xe
  400acb:	e9 00 ff ff ff       	jmpq   4009d0 <.plt>

0000000000400ad0 <send@plt>:
  400ad0:	ff 25 ba 15 20 00    	jmpq   *0x2015ba(%rip)        # 602090 <send@GLIBC_2.2.5>
  400ad6:	68 0f 00 00 00       	pushq  $0xf
  400adb:	e9 f0 fe ff ff       	jmpq   4009d0 <.plt>

0000000000400ae0 <fwrite@plt>:
  400ae0:	ff 25 b2 15 20 00    	jmpq   *0x2015b2(%rip)        # 602098 <fwrite@GLIBC_2.2.5>
  400ae6:	68 10 00 00 00       	pushq  $0x10
  400aeb:	e9 e0 fe ff ff       	jmpq   4009d0 <.plt>

0000000000400af0 <_ZNSaIcEC1Ev@plt>:
  400af0:	ff 25 aa 15 20 00    	jmpq   *0x2015aa(%rip)        # 6020a0 <_ZNSaIcEC1Ev@GLIBCXX_3.4>
  400af6:	68 11 00 00 00       	pushq  $0x11
  400afb:	e9 d0 fe ff ff       	jmpq   4009d0 <.plt>

0000000000400b00 <__gxx_personality_v0@plt>:
  400b00:	ff 25 a2 15 20 00    	jmpq   *0x2015a2(%rip)        # 6020a8 <__gxx_personality_v0@CXXABI_1.3>
  400b06:	68 12 00 00 00       	pushq  $0x12
  400b0b:	e9 c0 fe ff ff       	jmpq   4009d0 <.plt>

0000000000400b10 <fprintf@plt>:
  400b10:	ff 25 9a 15 20 00    	jmpq   *0x20159a(%rip)        # 6020b0 <fprintf@GLIBC_2.2.5>
  400b16:	68 13 00 00 00       	pushq  $0x13
  400b1b:	e9 b0 fe ff ff       	jmpq   4009d0 <.plt>

0000000000400b20 <_Unwind_Resume@plt>:
  400b20:	ff 25 92 15 20 00    	jmpq   *0x201592(%rip)        # 6020b8 <_Unwind_Resume@GCC_3.0>
  400b26:	68 14 00 00 00       	pushq  $0x14
  400b2b:	e9 a0 fe ff ff       	jmpq   4009d0 <.plt>

0000000000400b30 <fcntl@plt>:
  400b30:	ff 25 8a 15 20 00    	jmpq   *0x20158a(%rip)        # 6020c0 <fcntl@GLIBC_2.2.5>
  400b36:	68 15 00 00 00       	pushq  $0x15
  400b3b:	e9 90 fe ff ff       	jmpq   4009d0 <.plt>

0000000000400b40 <inet_addr@plt>:
  400b40:	ff 25 82 15 20 00    	jmpq   *0x201582(%rip)        # 6020c8 <inet_addr@GLIBC_2.2.5>
  400b46:	68 16 00 00 00       	pushq  $0x16
  400b4b:	e9 80 fe ff ff       	jmpq   4009d0 <.plt>

Disassembly of section .plt.got:

0000000000400b50 <.plt.got>:
  400b50:	ff 25 a2 14 20 00    	jmpq   *0x2014a2(%rip)        # 601ff8 <__gmon_start__>
  400b56:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000400b60 <_start>:
  400b60:	31 ed                	xor    %ebp,%ebp
  400b62:	49 89 d1             	mov    %rdx,%r9
  400b65:	5e                   	pop    %rsi
  400b66:	48 89 e2             	mov    %rsp,%rdx
  400b69:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400b6d:	50                   	push   %rax
  400b6e:	54                   	push   %rsp
  400b6f:	49 c7 c0 a0 10 40 00 	mov    $0x4010a0,%r8
  400b76:	48 c7 c1 30 10 40 00 	mov    $0x401030,%rcx
  400b7d:	48 c7 c7 c1 0c 40 00 	mov    $0x400cc1,%rdi
  400b84:	e8 a7 fe ff ff       	callq  400a30 <__libc_start_main@plt>
  400b89:	f4                   	hlt    
  400b8a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400b90 <deregister_tm_clones>:
  400b90:	b8 df 20 60 00       	mov    $0x6020df,%eax
  400b95:	55                   	push   %rbp
  400b96:	48 2d d8 20 60 00    	sub    $0x6020d8,%rax
  400b9c:	48 83 f8 0e          	cmp    $0xe,%rax
  400ba0:	48 89 e5             	mov    %rsp,%rbp
  400ba3:	77 02                	ja     400ba7 <deregister_tm_clones+0x17>
  400ba5:	5d                   	pop    %rbp
  400ba6:	c3                   	retq   
  400ba7:	b8 00 00 00 00       	mov    $0x0,%eax
  400bac:	48 85 c0             	test   %rax,%rax
  400baf:	74 f4                	je     400ba5 <deregister_tm_clones+0x15>
  400bb1:	5d                   	pop    %rbp
  400bb2:	bf d8 20 60 00       	mov    $0x6020d8,%edi
  400bb7:	ff e0                	jmpq   *%rax
  400bb9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400bc0 <register_tm_clones>:
  400bc0:	b8 d8 20 60 00       	mov    $0x6020d8,%eax
  400bc5:	55                   	push   %rbp
  400bc6:	48 2d d8 20 60 00    	sub    $0x6020d8,%rax
  400bcc:	48 c1 f8 03          	sar    $0x3,%rax
  400bd0:	48 89 e5             	mov    %rsp,%rbp
  400bd3:	48 89 c2             	mov    %rax,%rdx
  400bd6:	48 c1 ea 3f          	shr    $0x3f,%rdx
  400bda:	48 01 d0             	add    %rdx,%rax
  400bdd:	48 d1 f8             	sar    %rax
  400be0:	75 02                	jne    400be4 <register_tm_clones+0x24>
  400be2:	5d                   	pop    %rbp
  400be3:	c3                   	retq   
  400be4:	ba 00 00 00 00       	mov    $0x0,%edx
  400be9:	48 85 d2             	test   %rdx,%rdx
  400bec:	74 f4                	je     400be2 <register_tm_clones+0x22>
  400bee:	5d                   	pop    %rbp
  400bef:	48 89 c6             	mov    %rax,%rsi
  400bf2:	bf d8 20 60 00       	mov    $0x6020d8,%edi
  400bf7:	ff e2                	jmpq   *%rdx
  400bf9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400c00 <__do_global_dtors_aux>:
  400c00:	80 3d d9 14 20 00 00 	cmpb   $0x0,0x2014d9(%rip)        # 6020e0 <completed.6355>
  400c07:	75 11                	jne    400c1a <__do_global_dtors_aux+0x1a>
  400c09:	55                   	push   %rbp
  400c0a:	48 89 e5             	mov    %rsp,%rbp
  400c0d:	e8 7e ff ff ff       	callq  400b90 <deregister_tm_clones>
  400c12:	5d                   	pop    %rbp
  400c13:	c6 05 c6 14 20 00 01 	movb   $0x1,0x2014c6(%rip)        # 6020e0 <completed.6355>
  400c1a:	f3 c3                	repz retq 
  400c1c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400c20 <frame_dummy>:
  400c20:	48 83 3d c8 11 20 00 	cmpq   $0x0,0x2011c8(%rip)        # 601df0 <__JCR_END__>
  400c27:	00 
  400c28:	74 1e                	je     400c48 <frame_dummy+0x28>
  400c2a:	b8 00 00 00 00       	mov    $0x0,%eax
  400c2f:	48 85 c0             	test   %rax,%rax
  400c32:	74 14                	je     400c48 <frame_dummy+0x28>
  400c34:	55                   	push   %rbp
  400c35:	bf f0 1d 60 00       	mov    $0x601df0,%edi
  400c3a:	48 89 e5             	mov    %rsp,%rbp
  400c3d:	ff d0                	callq  *%rax
  400c3f:	5d                   	pop    %rbp
  400c40:	e9 7b ff ff ff       	jmpq   400bc0 <register_tm_clones>
  400c45:	0f 1f 00             	nopl   (%rax)
  400c48:	e9 73 ff ff ff       	jmpq   400bc0 <register_tm_clones>

0000000000400c4d <_Z11SetNonBlockib>:
#include <netinet/tcp.h> // for TCP_NODELAY

using namespace std;

void SetNonBlock(int fd, bool non_block)
{
  400c4d:	55                   	push   %rbp
  400c4e:	48 89 e5             	mov    %rsp,%rbp
  400c51:	48 83 ec 20          	sub    $0x20,%rsp
  400c55:	89 7d ec             	mov    %edi,-0x14(%rbp)
  400c58:	89 f0                	mov    %esi,%eax
  400c5a:	88 45 e8             	mov    %al,-0x18(%rbp)
	int f = fcntl(fd, F_GETFL);
  400c5d:	8b 45 ec             	mov    -0x14(%rbp),%eax
  400c60:	be 03 00 00 00       	mov    $0x3,%esi
  400c65:	89 c7                	mov    %eax,%edi
  400c67:	b8 00 00 00 00       	mov    $0x0,%eax
  400c6c:	e8 bf fe ff ff       	callq  400b30 <fcntl@plt>
  400c71:	89 45 fc             	mov    %eax,-0x4(%rbp)
	if(non_block) 
  400c74:	80 7d e8 00          	cmpb   $0x0,-0x18(%rbp)
  400c78:	74 17                	je     400c91 <_Z11SetNonBlockib+0x44>
	{
		// non-block
		if (f & O_NONBLOCK) return;
  400c7a:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400c7d:	25 00 08 00 00       	and    $0x800,%eax
  400c82:	85 c0                	test   %eax,%eax
  400c84:	74 02                	je     400c88 <_Z11SetNonBlockib+0x3b>
  400c86:	eb 37                	jmp    400cbf <_Z11SetNonBlockib+0x72>
		else f |= O_NONBLOCK;
  400c88:	81 4d fc 00 08 00 00 	orl    $0x800,-0x4(%rbp)
  400c8f:	eb 17                	jmp    400ca8 <_Z11SetNonBlockib+0x5b>
	} 
	else 
	{
		// block
		if (f & O_NONBLOCK) f &= ~O_NONBLOCK;
  400c91:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400c94:	25 00 08 00 00       	and    $0x800,%eax
  400c99:	85 c0                	test   %eax,%eax
  400c9b:	74 09                	je     400ca6 <_Z11SetNonBlockib+0x59>
  400c9d:	81 65 fc ff f7 ff ff 	andl   $0xfffff7ff,-0x4(%rbp)
  400ca4:	eb 02                	jmp    400ca8 <_Z11SetNonBlockib+0x5b>
		else return;
  400ca6:	eb 17                	jmp    400cbf <_Z11SetNonBlockib+0x72>
	}   
	fcntl(fd, F_SETFL, f);
  400ca8:	8b 55 fc             	mov    -0x4(%rbp),%edx
  400cab:	8b 45 ec             	mov    -0x14(%rbp),%eax
  400cae:	be 04 00 00 00       	mov    $0x4,%esi
  400cb3:	89 c7                	mov    %eax,%edi
  400cb5:	b8 00 00 00 00       	mov    $0x0,%eax
  400cba:	e8 71 fe ff ff       	callq  400b30 <fcntl@plt>
}
  400cbf:	c9                   	leaveq 
  400cc0:	c3                   	retq   

0000000000400cc1 <main>:

int main()
{
  400cc1:	55                   	push   %rbp
  400cc2:	48 89 e5             	mov    %rsp,%rbp
  400cc5:	41 54                	push   %r12
  400cc7:	53                   	push   %rbx
  400cc8:	48 81 ec 60 90 01 00 	sub    $0x19060,%rsp
	unsigned short to_svr_port = 9231;
  400ccf:	66 c7 45 ee 0f 24    	movw   $0x240f,-0x12(%rbp)
	string to_svr_ip = "127.0.0.1";
  400cd5:	48 8d 45 dd          	lea    -0x23(%rbp),%rax
  400cd9:	48 89 c7             	mov    %rax,%rdi
  400cdc:	e8 0f fe ff ff       	callq  400af0 <_ZNSaIcEC1Ev@plt>
  400ce1:	48 8d 55 dd          	lea    -0x23(%rbp),%rdx
  400ce5:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  400ce9:	be c1 10 40 00       	mov    $0x4010c1,%esi
  400cee:	48 89 c7             	mov    %rax,%rdi
  400cf1:	e8 7a fd ff ff       	callq  400a70 <_ZNSsC1EPKcRKSaIcE@plt>
  400cf6:	48 8d 45 dd          	lea    -0x23(%rbp),%rax
  400cfa:	48 89 c7             	mov    %rax,%rdi
  400cfd:	e8 be fd ff ff       	callq  400ac0 <_ZNSaIcED1Ev@plt>

	// socket
	int to_svr_fd = socket(AF_INET, SOCK_STREAM, 0);
  400d02:	ba 00 00 00 00       	mov    $0x0,%edx
  400d07:	be 01 00 00 00       	mov    $0x1,%esi
  400d0c:	bf 02 00 00 00       	mov    $0x2,%edi
  400d11:	e8 8a fd ff ff       	callq  400aa0 <socket@plt>
  400d16:	89 45 e8             	mov    %eax,-0x18(%rbp)
	if(to_svr_fd == -1)
  400d19:	83 7d e8 ff          	cmpl   $0xffffffff,-0x18(%rbp)
  400d1d:	75 28                	jne    400d47 <main+0x86>
	{
		fprintf(stderr, "socket(to_svr_fd) error\n");
  400d1f:	48 8b 05 b2 13 20 00 	mov    0x2013b2(%rip),%rax        # 6020d8 <stderr@@GLIBC_2.2.5>
  400d26:	48 89 c1             	mov    %rax,%rcx
  400d29:	ba 18 00 00 00       	mov    $0x18,%edx
  400d2e:	be 01 00 00 00       	mov    $0x1,%esi
  400d33:	bf cb 10 40 00       	mov    $0x4010cb,%edi
  400d38:	e8 a3 fd ff ff       	callq  400ae0 <fwrite@plt>
		return -1;
  400d3d:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
  400d42:	e9 50 02 00 00       	jmpq   400f97 <main+0x2d6>
	}
	int flag = 1;
  400d47:	c7 45 cc 01 00 00 00 	movl   $0x1,-0x34(%rbp)
	if(setsockopt(to_svr_fd, IPPROTO_TCP, TCP_NODELAY, (void*)&flag, sizeof(int)) == -1)
  400d4e:	48 8d 55 cc          	lea    -0x34(%rbp),%rdx
  400d52:	8b 45 e8             	mov    -0x18(%rbp),%eax
  400d55:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  400d5b:	48 89 d1             	mov    %rdx,%rcx
  400d5e:	ba 01 00 00 00       	mov    $0x1,%edx
  400d63:	be 06 00 00 00       	mov    $0x6,%esi
  400d68:	89 c7                	mov    %eax,%edi
  400d6a:	e8 e1 fc ff ff       	callq  400a50 <setsockopt@plt>
  400d6f:	83 f8 ff             	cmp    $0xffffffff,%eax
  400d72:	0f 94 c0             	sete   %al
  400d75:	84 c0                	test   %al,%al
  400d77:	74 28                	je     400da1 <main+0xe0>
	{
		fprintf(stderr, "setsockopt(to_cli_fd) error\n");
  400d79:	48 8b 05 58 13 20 00 	mov    0x201358(%rip),%rax        # 6020d8 <stderr@@GLIBC_2.2.5>
  400d80:	48 89 c1             	mov    %rax,%rcx
  400d83:	ba 1c 00 00 00       	mov    $0x1c,%edx
  400d88:	be 01 00 00 00       	mov    $0x1,%esi
  400d8d:	bf e4 10 40 00       	mov    $0x4010e4,%edi
  400d92:	e8 49 fd ff ff       	callq  400ae0 <fwrite@plt>
		return -1;
  400d97:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
  400d9c:	e9 f6 01 00 00       	jmpq   400f97 <main+0x2d6>
	}

	SetNonBlock(to_svr_fd, true);
  400da1:	8b 45 e8             	mov    -0x18(%rbp),%eax
  400da4:	be 01 00 00 00       	mov    $0x1,%esi
  400da9:	89 c7                	mov    %eax,%edi
  400dab:	e8 9d fe ff ff       	callq  400c4d <_Z11SetNonBlockib>

	//to_svr addr
	sockaddr_in to_svr_addr;
	memset(&to_svr_addr, 0, sizeof(to_svr_addr));
  400db0:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  400db4:	ba 10 00 00 00       	mov    $0x10,%edx
  400db9:	be 00 00 00 00       	mov    $0x0,%esi
  400dbe:	48 89 c7             	mov    %rax,%rdi
  400dc1:	e8 1a fc ff ff       	callq  4009e0 <memset@plt>
	to_svr_addr.sin_family = AF_INET;
  400dc6:	66 c7 45 b0 02 00    	movw   $0x2,-0x50(%rbp)
	to_svr_addr.sin_addr.s_addr = inet_addr(to_svr_ip.c_str());
  400dcc:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  400dd0:	48 89 c7             	mov    %rax,%rdi
  400dd3:	e8 28 fc ff ff       	callq  400a00 <_ZNKSs5c_strEv@plt>
  400dd8:	48 89 c7             	mov    %rax,%rdi
  400ddb:	e8 60 fd ff ff       	callq  400b40 <inet_addr@plt>
  400de0:	89 45 b4             	mov    %eax,-0x4c(%rbp)
	to_svr_addr.sin_port = htons(to_svr_port);
  400de3:	0f b7 45 ee          	movzwl -0x12(%rbp),%eax
  400de7:	89 c7                	mov    %eax,%edi
  400de9:	e8 22 fc ff ff       	callq  400a10 <htons@plt>
  400dee:	66 89 45 b2          	mov    %ax,-0x4e(%rbp)
	
	connect(to_svr_fd, (struct sockaddr*)&to_svr_addr, sizeof(to_svr_addr));
  400df2:	48 8d 4d b0          	lea    -0x50(%rbp),%rcx
  400df6:	8b 45 e8             	mov    -0x18(%rbp),%eax
  400df9:	ba 10 00 00 00       	mov    $0x10,%edx
  400dfe:	48 89 ce             	mov    %rcx,%rsi
  400e01:	89 c7                	mov    %eax,%edi
  400e03:	e8 88 fc ff ff       	callq  400a90 <connect@plt>
	
	while(true)
	{
		string data = "Hello World";
  400e08:	48 8d 45 de          	lea    -0x22(%rbp),%rax
  400e0c:	48 89 c7             	mov    %rax,%rdi
  400e0f:	e8 dc fc ff ff       	callq  400af0 <_ZNSaIcEC1Ev@plt>
  400e14:	48 8d 55 de          	lea    -0x22(%rbp),%rdx
  400e18:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  400e1c:	be 01 11 40 00       	mov    $0x401101,%esi
  400e21:	48 89 c7             	mov    %rax,%rdi
  400e24:	e8 47 fc ff ff       	callq  400a70 <_ZNSsC1EPKcRKSaIcE@plt>
  400e29:	48 8d 45 de          	lea    -0x22(%rbp),%rax
  400e2d:	48 89 c7             	mov    %rax,%rdi
  400e30:	e8 8b fc ff ff       	callq  400ac0 <_ZNSaIcED1Ev@plt>
		ssize_t ret = send(to_svr_fd, data.c_str(), data.size(), 0);
  400e35:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  400e39:	48 89 c7             	mov    %rax,%rdi
  400e3c:	e8 df fb ff ff       	callq  400a20 <_ZNKSs4sizeEv@plt>
  400e41:	49 89 c4             	mov    %rax,%r12
  400e44:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  400e48:	48 89 c7             	mov    %rax,%rdi
  400e4b:	e8 b0 fb ff ff       	callq  400a00 <_ZNKSs5c_strEv@plt>
  400e50:	48 89 c6             	mov    %rax,%rsi
  400e53:	8b 45 e8             	mov    -0x18(%rbp),%eax
  400e56:	b9 00 00 00 00       	mov    $0x0,%ecx
  400e5b:	4c 89 e2             	mov    %r12,%rdx
  400e5e:	89 c7                	mov    %eax,%edi
  400e60:	e8 6b fc ff ff       	callq  400ad0 <send@plt>
  400e65:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
		if(ret <= 0)
  400e69:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
  400e6e:	7f 2e                	jg     400e9e <main+0x1dd>
		{
			fprintf(stderr, "sendto failed.\n"); 
  400e70:	48 8b 05 61 12 20 00 	mov    0x201261(%rip),%rax        # 6020d8 <stderr@@GLIBC_2.2.5>
  400e77:	48 89 c1             	mov    %rax,%rcx
  400e7a:	ba 0f 00 00 00       	mov    $0xf,%edx
  400e7f:	be 01 00 00 00       	mov    $0x1,%esi
  400e84:	bf 0d 11 40 00       	mov    $0x40110d,%edi
  400e89:	e8 52 fc ff ff       	callq  400ae0 <fwrite@plt>
			return -1;
  400e8e:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
  400e93:	41 bc 00 00 00 00    	mov    $0x0,%r12d
  400e99:	e9 e1 00 00 00       	jmpq   400f7f <main+0x2be>
		}
		
		char buf[1024*100];
		ret = recv(to_svr_fd, buf, sizeof(buf), 0);
  400e9e:	48 8d b5 90 6f fe ff 	lea    -0x19070(%rbp),%rsi
  400ea5:	8b 45 e8             	mov    -0x18(%rbp),%eax
  400ea8:	b9 00 00 00 00       	mov    $0x0,%ecx
  400ead:	ba 00 90 01 00       	mov    $0x19000,%edx
  400eb2:	89 c7                	mov    %eax,%edi
  400eb4:	e8 87 fb ff ff       	callq  400a40 <recv@plt>
  400eb9:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
		if(ret > 0)
  400ebd:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
  400ec2:	7e 6d                	jle    400f31 <main+0x270>
		{
			string data(buf, ret);
  400ec4:	48 8d 45 df          	lea    -0x21(%rbp),%rax
  400ec8:	48 89 c7             	mov    %rax,%rdi
  400ecb:	e8 20 fc ff ff       	callq  400af0 <_ZNSaIcEC1Ev@plt>
  400ed0:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  400ed4:	48 8d 4d df          	lea    -0x21(%rbp),%rcx
  400ed8:	48 8d b5 90 6f fe ff 	lea    -0x19070(%rbp),%rsi
  400edf:	48 8d 45 90          	lea    -0x70(%rbp),%rax
  400ee3:	48 89 c7             	mov    %rax,%rdi
  400ee6:	e8 05 fb ff ff       	callq  4009f0 <_ZNSsC1EPKcmRKSaIcE@plt>
  400eeb:	48 8d 45 df          	lea    -0x21(%rbp),%rax
  400eef:	48 89 c7             	mov    %rax,%rdi
  400ef2:	e8 c9 fb ff ff       	callq  400ac0 <_ZNSaIcED1Ev@plt>
			fprintf(stderr, "recive from server ret = %ld : %s\n", ret, data.c_str());
  400ef7:	48 8d 45 90          	lea    -0x70(%rbp),%rax
  400efb:	48 89 c7             	mov    %rax,%rdi
  400efe:	e8 fd fa ff ff       	callq  400a00 <_ZNKSs5c_strEv@plt>
  400f03:	48 89 c1             	mov    %rax,%rcx
  400f06:	48 8b 05 cb 11 20 00 	mov    0x2011cb(%rip),%rax        # 6020d8 <stderr@@GLIBC_2.2.5>
  400f0d:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  400f11:	be 20 11 40 00       	mov    $0x401120,%esi
  400f16:	48 89 c7             	mov    %rax,%rdi
  400f19:	b8 00 00 00 00       	mov    $0x0,%eax
  400f1e:	e8 ed fb ff ff       	callq  400b10 <fprintf@plt>
  400f23:	48 8d 45 90          	lea    -0x70(%rbp),%rax
  400f27:	48 89 c7             	mov    %rax,%rdi
  400f2a:	e8 31 fb ff ff       	callq  400a60 <_ZNSsD1Ev@plt>
  400f2f:	eb 3e                	jmp    400f6f <main+0x2ae>
		}
		else if(ret == -1 && errno != EAGAIN)
  400f31:	48 83 7d e0 ff       	cmpq   $0xffffffffffffffff,-0x20(%rbp)
  400f36:	75 37                	jne    400f6f <main+0x2ae>
  400f38:	e8 73 fb ff ff       	callq  400ab0 <__errno_location@plt>
  400f3d:	8b 00                	mov    (%rax),%eax
  400f3f:	83 f8 0b             	cmp    $0xb,%eax
  400f42:	74 2b                	je     400f6f <main+0x2ae>
		{
			fprintf(stderr, "recv failed.\n");
  400f44:	48 8b 05 8d 11 20 00 	mov    0x20118d(%rip),%rax        # 6020d8 <stderr@@GLIBC_2.2.5>
  400f4b:	48 89 c1             	mov    %rax,%rcx
  400f4e:	ba 0d 00 00 00       	mov    $0xd,%edx
  400f53:	be 01 00 00 00       	mov    $0x1,%esi
  400f58:	bf 43 11 40 00       	mov    $0x401143,%edi
  400f5d:	e8 7e fb ff ff       	callq  400ae0 <fwrite@plt>
			return -1;
  400f62:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
  400f67:	41 bc 00 00 00 00    	mov    $0x0,%r12d
  400f6d:	eb 10                	jmp    400f7f <main+0x2be>
		}
		usleep(1000);
  400f6f:	bf e8 03 00 00       	mov    $0x3e8,%edi
  400f74:	e8 07 fb ff ff       	callq  400a80 <usleep@plt>
  400f79:	41 bc 01 00 00 00    	mov    $0x1,%r12d
  400f7f:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  400f83:	48 89 c7             	mov    %rax,%rdi
  400f86:	e8 d5 fa ff ff       	callq  400a60 <_ZNSsD1Ev@plt>
  400f8b:	41 83 fc 01          	cmp    $0x1,%r12d
  400f8f:	75 06                	jne    400f97 <main+0x2d6>
	}
  400f91:	90                   	nop
  400f92:	e9 71 fe ff ff       	jmpq   400e08 <main+0x147>

	return 0;
  400f97:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  400f9b:	48 89 c7             	mov    %rax,%rdi
  400f9e:	e8 bd fa ff ff       	callq  400a60 <_ZNSsD1Ev@plt>
  400fa3:	89 d8                	mov    %ebx,%eax
  400fa5:	eb 78                	jmp    40101f <main+0x35e>
  400fa7:	48 89 c3             	mov    %rax,%rbx
  400faa:	48 8d 45 dd          	lea    -0x23(%rbp),%rax
  400fae:	48 89 c7             	mov    %rax,%rdi
  400fb1:	e8 0a fb ff ff       	callq  400ac0 <_ZNSaIcED1Ev@plt>
  400fb6:	48 89 d8             	mov    %rbx,%rax
  400fb9:	48 89 c7             	mov    %rax,%rdi
  400fbc:	e8 5f fb ff ff       	callq  400b20 <_Unwind_Resume@plt>
  400fc1:	48 89 c3             	mov    %rax,%rbx
  400fc4:	48 8d 45 de          	lea    -0x22(%rbp),%rax
  400fc8:	48 89 c7             	mov    %rax,%rdi
  400fcb:	e8 f0 fa ff ff       	callq  400ac0 <_ZNSaIcED1Ev@plt>
  400fd0:	eb 36                	jmp    401008 <main+0x347>
  400fd2:	48 89 c3             	mov    %rax,%rbx
  400fd5:	48 8d 45 df          	lea    -0x21(%rbp),%rax
  400fd9:	48 89 c7             	mov    %rax,%rdi
  400fdc:	e8 df fa ff ff       	callq  400ac0 <_ZNSaIcED1Ev@plt>
  400fe1:	eb 14                	jmp    400ff7 <main+0x336>
  400fe3:	48 89 c3             	mov    %rax,%rbx
			fprintf(stderr, "recive from server ret = %ld : %s\n", ret, data.c_str());
  400fe6:	48 8d 45 90          	lea    -0x70(%rbp),%rax
  400fea:	48 89 c7             	mov    %rax,%rdi
  400fed:	e8 6e fa ff ff       	callq  400a60 <_ZNSsD1Ev@plt>
  400ff2:	eb 03                	jmp    400ff7 <main+0x336>
  400ff4:	48 89 c3             	mov    %rax,%rbx
	}
  400ff7:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  400ffb:	48 89 c7             	mov    %rax,%rdi
  400ffe:	e8 5d fa ff ff       	callq  400a60 <_ZNSsD1Ev@plt>
  401003:	eb 03                	jmp    401008 <main+0x347>
  401005:	48 89 c3             	mov    %rax,%rbx
	return 0;
  401008:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  40100c:	48 89 c7             	mov    %rax,%rdi
  40100f:	e8 4c fa ff ff       	callq  400a60 <_ZNSsD1Ev@plt>
  401014:	48 89 d8             	mov    %rbx,%rax
  401017:	48 89 c7             	mov    %rax,%rdi
  40101a:	e8 01 fb ff ff       	callq  400b20 <_Unwind_Resume@plt>
}
  40101f:	48 81 c4 60 90 01 00 	add    $0x19060,%rsp
  401026:	5b                   	pop    %rbx
  401027:	41 5c                	pop    %r12
  401029:	5d                   	pop    %rbp
  40102a:	c3                   	retq   
  40102b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401030 <__libc_csu_init>:
  401030:	41 57                	push   %r15
  401032:	41 89 ff             	mov    %edi,%r15d
  401035:	41 56                	push   %r14
  401037:	49 89 f6             	mov    %rsi,%r14
  40103a:	41 55                	push   %r13
  40103c:	49 89 d5             	mov    %rdx,%r13
  40103f:	41 54                	push   %r12
  401041:	4c 8d 25 98 0d 20 00 	lea    0x200d98(%rip),%r12        # 601de0 <__frame_dummy_init_array_entry>
  401048:	55                   	push   %rbp
  401049:	48 8d 2d 98 0d 20 00 	lea    0x200d98(%rip),%rbp        # 601de8 <__init_array_end>
  401050:	53                   	push   %rbx
  401051:	4c 29 e5             	sub    %r12,%rbp
  401054:	31 db                	xor    %ebx,%ebx
  401056:	48 c1 fd 03          	sar    $0x3,%rbp
  40105a:	48 83 ec 08          	sub    $0x8,%rsp
  40105e:	e8 45 f9 ff ff       	callq  4009a8 <_init>
  401063:	48 85 ed             	test   %rbp,%rbp
  401066:	74 1e                	je     401086 <__libc_csu_init+0x56>
  401068:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40106f:	00 
  401070:	4c 89 ea             	mov    %r13,%rdx
  401073:	4c 89 f6             	mov    %r14,%rsi
  401076:	44 89 ff             	mov    %r15d,%edi
  401079:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40107d:	48 83 c3 01          	add    $0x1,%rbx
  401081:	48 39 eb             	cmp    %rbp,%rbx
  401084:	75 ea                	jne    401070 <__libc_csu_init+0x40>
  401086:	48 83 c4 08          	add    $0x8,%rsp
  40108a:	5b                   	pop    %rbx
  40108b:	5d                   	pop    %rbp
  40108c:	41 5c                	pop    %r12
  40108e:	41 5d                	pop    %r13
  401090:	41 5e                	pop    %r14
  401092:	41 5f                	pop    %r15
  401094:	c3                   	retq   
  401095:	90                   	nop
  401096:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40109d:	00 00 00 

00000000004010a0 <__libc_csu_fini>:
  4010a0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000004010a4 <_fini>:
  4010a4:	48 83 ec 08          	sub    $0x8,%rsp
  4010a8:	48 83 c4 08          	add    $0x8,%rsp
  4010ac:	c3                   	retq   
