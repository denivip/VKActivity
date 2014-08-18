//
//  VKPermissions.c
//
//  Copyright (c) 2014 VK.com
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy of
//  this software and associated documentation files (the "Software"), to deal in
//  the Software without restriction, including without limitation the rights to
//  use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
//  the Software, and to permit persons to whom the Software is furnished to do so,
//  subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
//  FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
//  COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
//  IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
//  CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

#import "VKPermissions.h"

NSArray *parseVkPermissionsFromInteger(int permissionsValue) {
	NSMutableArray *res = [NSMutableArray new];
	if (permissionsValue & 1) [res addObject:VK_PER_NOTIFY];
	if (permissionsValue & 2) [res addObject:VK_PER_FRIENDS];
	if (permissionsValue & 4) [res addObject:VK_PER_PHOTOS];
	if (permissionsValue & 8) [res addObject:VK_PER_AUDIO];
	if (permissionsValue & 16) [res addObject:VK_PER_VIDEO];
	if (permissionsValue & 128) [res addObject:VK_PER_PAGES];
	if (permissionsValue & 1024) [res addObject:VK_PER_STATUS];
	if (permissionsValue & 2048) [res addObject:VK_PER_NOTES];
	if (permissionsValue & 4096) [res addObject:VK_PER_MESSAGES];
	if (permissionsValue & 8192) [res addObject:VK_PER_WALL];
	if (permissionsValue & 32768) [res addObject:VK_PER_ADS];
	if (permissionsValue & 65536) [res addObject:VK_PER_OFFLINE];
	if (permissionsValue & 131072) [res addObject:VK_PER_DOCS];
	if (permissionsValue & 262144) [res addObject:VK_PER_GROUPS];
	if (permissionsValue & 524288) [res addObject:VK_PER_NOTIFICATIONS];
	if (permissionsValue & 1048576) [res addObject:VK_PER_STATS];
	return res;
}
