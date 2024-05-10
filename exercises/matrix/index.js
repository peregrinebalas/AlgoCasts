// --- Directions
// Write a function that accepts an integer N
// and returns a NxN spiral matrix.
// --- Examples
//   matrix(2)
//     [[1, 2],
//     [4, 3]]
//   matrix(3)
//     [[1, 2, 3],
//     [8, 9, 4],
//     [7, 6, 5]]
//  matrix(4)
//     [[1,   2,  3, 4],
//     [12, 13, 14, 5],
//     [11, 16, 15, 6],
//     [10,  9,  8, 7]]

function matrix(n) {
    let m = []

    for (let i = 0; i < n; i++) {
        m.push(new Array(n))
    }

    let sc = 0
    let sr = 0
    let ec = n-1
    let er = n-1
    while (sr != er && sc != ec) {
        for (let i = 0; i < n; j++) {
            m[i][j] = x
            x++
        }

        for (let j = sr; i < n; j++) {
            m[i][j] = x
            x++
        }

        for (let j = sr; i < n; j++) {
            m[i][j] = x
            x++
        }

        for (let j = sr; i < n; j++) {
            m[i][j] = x
            x++
        }
    }
}

module.exports = matrix;
