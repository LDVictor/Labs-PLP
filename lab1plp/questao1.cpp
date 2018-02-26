#include <stdio.h>


int main() {
	int falha = 0;
	int medida = 1;
	
	while (medida != 0) {
		scanf("%d", &medida);
		if (medida < 0)
			falha++;
	}
	
	printf("%d", falha);
	return 0;
}
