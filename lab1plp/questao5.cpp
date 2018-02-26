#include <stdio.h>


int main() {
	int arr[100000];
	int n, x;
	
	scanf("%d", &n);
	
	for (int i = 0; i < n; i++) {
		
		scanf("%d", &arr[i]);
		int flag = 0;
		
		for (int j = 0; j < i; j++) {
			if (arr[j] == arr[i]) {
				flag = i;
				break;
			}
		}
		
		if (flag == 0) {
			printf("%d ", arr[i]);
		}
	}
	return 0;
}


