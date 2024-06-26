// --- Directions
// Given a string, return the character that is most
// commonly used in the string.
// --- Examples
// maxChar("abcccccccd") === "c"
// maxChar("apple 1231111") === "1"

function maxChar(str) {
    let chars = {}
    for (let char of str) {
        chars[char] = chars[char] + 1 || 1
    }

    const max = Object.values(chars).sort().pop()
    return Object.entries(chars).find(([k,v]) => v == max).shift()
}

module.exports = maxChar;
