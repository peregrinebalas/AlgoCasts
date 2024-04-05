// --- Directions
// Given an integer, return an integer that is the reverse
// ordering of numbers.
// --- Examples
//   reverseInt(15) === 51
//   reverseInt(981) === 189
//   reverseInt(500) === 5
//   reverseInt(-15) === -51
//   reverseInt(-90) === -9

function reverseInt(n) {
    let str = String(n).split('').reverse().join('')

    if (n < 0) {
        return -parseInt(str)
    }

    return parseInt(str)
}

module.exports = reverseInt;
