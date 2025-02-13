#define _CRT_SECURE_NO_WARNINGS
#include<stdio.h>
int main(void) {
	int N;
	int arr[16];
	scanf("%d", &N);
	int k = N;
	int demi = 0;
	while (k != 0) {
		k /= 2;
		demi++;
	}arr[0] = N;
	int select = 0;
	for (int i = N / 2; i < N; i++) {
		arr[1] = i;
		for (int j = 2; j <= demi; j++) {
			arr[j] = arr[j - 2] - arr[j - 1];
			if (arr[j] < 0)
				break;
			else {
				if (arr[j] > 0 && j == demi) {
					select = 1;
					break;
				}
			}
		}if (select == 1)
			break;
	}printf("%d\n", demi+1);
	for (int i = 0; i <= demi; i++) {
		printf("%d ", arr[i]);
	}return 0;
}
