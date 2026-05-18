1/**
2 * @param {integer} init
3 * @return { increment: Function, decrement: Function, reset: Function }
4 */
5var createCounter = function(init) {
6    let currentCount = init;
7
8    return {
9        increment() {
10        currentCount++;
11        return currentCount;
12      },
13      decrement() {
14        currentCount--;
15        return currentCount;
16      },
17      reset() {
18        currentCount = init;
19        return currentCount;
20      }
21    }
22};
23
24