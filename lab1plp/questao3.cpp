#include <stdio.h>
int encontraX(int,int);
int encontraY(int,int);

int encontraX(int m, int n) {
	int m1, n1;
	if (m < 0)
		m1 = m*(-1);
	else
		m1 = m;
	if (n < 0)
		n1 = n*(-1);
	else
		n1 = n;
		
	if (m1 > n1) 
		return m;
	else
		return n;
}

int encontraY(int o, int p) {
	if (o < p)
		return o;
	else
		return p;
}

int main() {
	int m, n, o, p, x, y, maximo;
	
	scanf("%d", &m);
	scanf("%d", &n);
	scanf("%d", &o);
	scanf("%d", &p);
	
	x = encontraX(m,n);
	y = encontraY(o,p);
	
	maximo = x*x - 3*y + x;
	
	printf("(%d,%d)\n", x, y);
	printf("%d", maximo);
	
	return 0;
}
