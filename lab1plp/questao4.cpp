#include <stdio.h>
#include <math.h>

int ehPrimo(int);

int ehPrimo(int n) {
	int i = 2;
	while (i*i <= n) {
		if (n % i == 0) return 0;
		i++;
	}
	return 1;
}

int main() {
	int n, x;
	
	scanf("%d", &n);
	
	x = n + 2;
	
	if (ehPrimo(x) == 1 && ehPrimo(n) == 1) {
		printf("PRIMO CASADO!");
	}
	else if (ehPrimo(n) == 1) {
		printf("PRIMO!");
	}
	else printf("NAO PRIMO!");
	return 0;
		
	return 0;
}
