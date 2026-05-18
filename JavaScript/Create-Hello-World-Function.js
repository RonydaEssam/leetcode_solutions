1/**
2 * @return {Function}
3 */
4var createHelloWorld = function() {
5    const helloWorld = "Hello World";
6
7    return function() {
8        return helloWorld;
9    };
10};
11
12createHelloWorld();
13/**
14 * const f = createHelloWorld();
15 * f(); // "Hello World"
16 */