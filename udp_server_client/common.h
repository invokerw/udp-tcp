#ifndef _COMMON_H_
#define _COMMON_H_

#include <unistd.h>
#include <string>
#include <sys/types.h>
#include <unistd.h>
#include <sys/time.h>

#include "key_in_c"

#define MAX_HASH 4
#define EXTRA_SEND_COUNT 2
#define TIME_OUT_MS 200
#define INDEX_SAVE_BYTE 4
#define LINK_COUNT 1
#define MAX_PACKAGE_INDEX_ID 100000

inline int64_t NowMS()
{
	timeval tv;
	gettimeofday(&tv, 0);
	int64_t now_ms = tv.tv_sec*(int64_t)1000+tv.tv_usec/1000;
	return now_ms;
}

inline unsigned int DJBHash(const std::string& data)
{
	unsigned int hash = 5381;
	const unsigned char *p = (const unsigned char*)data.data();
	for(size_t i=0; i<data.size(); i++)
	{
		hash += (hash << 5) + p[i];
	}
	return (hash&0x7fffffff);
}

inline void EncryptStr(std::string &data)
{
	unsigned char tmp[MAX_HASH];
	unsigned int hash = DJBHash(data);
	//fprintf(stderr, "EncryptStr, %u, len=%lu\n", hash, data.length());
	for(int i = 0;i < MAX_HASH; ++i)
	{
		tmp[i] = hash%256;
		hash = hash/256;
		data.push_back((char)tmp[i]);
	}
	//fprintf(stderr, "%u %u %u %u\n", tmp[0], tmp[1], tmp[2], tmp[3]);

	unsigned char *p = (unsigned char*)data.data();
	unsigned j = 0;
	for(size_t i=0; i<data.size(); ++i)
	{
		if(j >= __1_len) j = 0;
		p[i] = p[i]^__1[j++];	
	}
}

inline bool DecryptStr(std::string &data)
{
	if(data.length() < MAX_HASH) return false;
	unsigned char *p = (unsigned char*)data.data();
	unsigned j = 0;
	for(size_t i=0; i<data.size(); ++i)
	{
		if(j >= __1_len) j = 0;
		p[i] = p[i]^__1[j++];	
	}

	unsigned int hash = DJBHash(std::string(data, 0, data.size()-MAX_HASH));
	//fprintf(stderr, "DecryptStr, %u, len=%lu\n", hash, data.length());

	//fprintf(stderr, "%u %u %u %u\n", (unsigned char)data[data.length()-1-3], (unsigned char)data[data.length()-1-2], (unsigned char)data[data.length()-1-1], (unsigned char)data[data.length()-1-0]);

	for(int i = 0;i < MAX_HASH; ++i)
	{
		unsigned int key = hash%256;
		//fprintf(stderr, "DecryptStr, key=%u, data[%d]=%u\n", key, (int)(data.length()-MAX_HASH+i), (unsigned char)data[data.length()-MAX_HASH+i]);
		if((unsigned int)(unsigned char)data[data.length()-MAX_HASH+i] != key) return false;
		hash = hash/256;
	}

	data.resize(data.length()-MAX_HASH);

	return true;
}

inline int GetIndex(std::string &data)
{
	if(data.length() != INDEX_SAVE_BYTE) return -1;
	//fprintf(stderr, "GetIndex, data len=%lu\n", data.length());
	int index = 0;
	for(int i=data.size()-1; i>=0; --i)
	{
		//fprintf(stderr, "GetIndex, data[%u]=%d\n", i, (int)(unsigned char)data[i]);
		index = index*256+ (int)(unsigned char)data[i];
	}
	//fprintf(stderr, "GetIndex, index=%d\n", index);
	return index;
}

inline std::string SetIndex(int index)
{
	std::string data;
	//fprintf(stderr, "SetIndex, index=%d\n", index);
	for(int i = 0;i < INDEX_SAVE_BYTE; ++i)
	{
		unsigned char tmp = (unsigned char)(index%256);
		index = index/256;
		//fprintf(stderr, "SetIndex, data[%u]=%u\n", i, (unsigned int)tmp);
		data.push_back((char)tmp);
	}
	return data;
}



#endif // _COMMON_H_
