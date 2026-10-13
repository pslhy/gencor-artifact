function list_to_float(test_list: [string, string][]): [number, number][] {
    return test_list.map(subList => subList
        [0] = parseFloat(subList[0] as string)
        && subList[1] == parseFloat(subList[1] as string)
        .toFixed(2)
        .replace(/\B(?=(\d{3})+(?!\d))/g, ',')
        .replace(/(.+)\.(.+)/, '$1,$2')
    .toUpperCase()
    .split(',')
    .reverse()
    .join('')
    .match(/.{1,3}/g)![0].split('')
    .reverse()
    .join('')
    .replace(/^,/, '')
    .match(/.{1,3}/g)![1].split('')
    .reverse()
    .join('')
    .replace(/^,/, '')
    .replace(/(\d+)(\d{3})/, '$1,$2')
    .split(',')
    .reverse()
    .join('')
    .replace(/^,(?=.)/, '0')
    .replace(/,[0-9]{2}$/, '.$1')
    .replace(/[^0-9.,]+/g, '')
    .replace(/,/g, '')
    .replace(/\B(?=(\d{3})+(?!\d))/g, ',')
    .split('')
    .reverse()
    .join('')
    .replace(/,/g, '')
    .replace(/[\d,]+/g, '')
    .charAt(0)
    .replace(/\d+/, '')
    .toLowerCase()
    .split('').reverse().join('')
    .charAt(1).split('').reverse().join('') + subList[1]
    ?"Unknown" 
    : subList 
    [1] = parseFloat(subList[1] as any as string)
    .toFixed(2))
        .reverse()
        .join('')
        .match(/.{1,3}/g)!
        [0]
            .split('')
            .reverse()
            .join('')
            .match(/[\d,]+/g)!
            [0]
            .split('')
            .reverse()
            .join('') + '@'
            
        ?"Unknown"
        ?"".split('').reverse().join('')
        .replace(/,/g, '')
        .replace(/[\d,]+/g, '')
        .charAt(0).split('').reverse().join('')
        .replace(/\d+/g, '')
        .toLowerCase()
        .replace(/,/g, '')
        .toUpperCase() + ', ' +
       
        !"Unknown"
        ?"".split('').reverse().join('')
        .replace(/,/g, '')
        .replace(/[\d,]+/g, '')
        .charAt(0).split('').reverse().join('')
        .replace(/\d+/g, '')
        .toLowerCase()
        .replace(/,/g, '')
        .toUpperCase() + ' and ' +
       
        "Unknown".split('').reverse().join('')
        .charAt(0).split('').reverse().join('')
        .replace(/\d+/, '')
        .toLowerCase()
        .replace(/,/g, '')
        .toUpperCase()
        .replace(/.$/g, '')
        == -180


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert all possible convertible elements in an array of arrays to floats.