#include <stdio.h>
#include <math.h>

#define TOL 0.001
#define MAX_ITER 1000

// This is a placeholder for your function
double func(double x) {
    // replace this with your own function
    return x * x - 2;
}

// Implementation of Brent's method
double zbrent(double x1, double x2) {
    double a = x1, b = x2, c = x2, d, e, min1, min2;
    double fa = func(a), fb = func(b), fc = fb, p, q, r, s, tol1, xm;

    for (int iter = 0; iter < MAX_ITER; iter++) {
        if (fb*fc > 0.0) {
            c = a;
            fc = fa;
            e = d = b - a;
        }
        if (fabs(fc) < fabs(fb)) {
            a = b;
            b = c;
            c = a;
            fa = fb;
            fb = fc;
            fc = fa;
        }

        tol1 = 2.0*TOL*fabs(b) + 0.5*TOL;
        xm = 0.5*(c - b);
        if (fabs(xm) <= tol1 || fb == 0.0) return b;
        if (fabs(e) >= tol1 && fabs(fa) > fabs(fb)) {
            s = fb / fa;
            if (a == c) {
                p = 2.0*xm*s;
                q = 1.0 - s;
            } else {
                q = fa / fc;
                r = fb / fc;
                p = s*(2.0*xm*q*(q - r) - (b - a)*(r - 1.0));
                q = (q - 1.0)*(r - 1.0)*(s - 1.0);
            }
            if (p > 0.0) q = -q;
            p = fabs(p);
            min1 = 3.0*xm*q - fabs(tol1*q);
            min2 = fabs(e*q);
            if (2.0*p < (min1 < min2 ? min1 : min2)) {
                e = d;
                d = p / q;
            } else {
                d = xm;
                e = d;
            }
        } else {
            d = xm;
            e = d;
        }
        a = b;
        fa = fb;
        if (fabs(d) > tol1) {
            b += d;
        } else {
            b += (xm > 0.0 ? fabs(tol1) : -fabs(tol1));
        }
        fb = func(b);
    }
    // Root not found
    printf("Maximum number of iterations exceeded\n");
    return 0;
}

int main() {
    double x1 = 0, x2 = 2;  // change these values to your specific interval
    double root = zbrent(x1, x2);
    printf("The root found is: %.5f\n", root);
    return 0;
}

