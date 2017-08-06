int a = 0xfafafafa;

int main() {
	char b[8];
	b[0] = 'L';
	b[1] = 'Y';
	b[2] = 'K';
	b[3] = '2';
	b[4] = '0';
	b[5] = '1';
	b[6] = '7';
	b[7] = 0;


	for (int i=0; i<7; i++)
		putchar(b[i]);
	return 0;
}
