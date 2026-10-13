function extract_even(test_tuple: [number, number, [number, number, [number, number]], number, number]): any { 
    // Filter out non-array elements and remove odd numbers from the nested arrays
    let res: any = test_tuple[0].toString().split('').filter(digit => digit === '2' || digit === '4' || digit === '6' || digit === '8').map(Number)
            .concat(test_tuple[1].toString().split('').filter(digit => digit === '2' || digit === '4' || digit === '6' || digit === '8').map(Number))
            .concat(test_tuple[2][0].toString().split('').filter(digit => digit === '2' || digit === '4' || digit === '6' || digit === '8').map(Number))
            .concat(test_tuple[2][1].toString().split('').filter(digit => digit === '2' || digit === '4' || digit === '6' || digit === '8').map(Number))
            .concat(test_tuple[2][2][0].toString().split('').filter(digit => digit === '2' || digit === '4' || digit === '6' || digit === '8').map(Number))
            .concat(test_tuple[2][2][1].toString().split('').filter(digit => digit === '2' || digit === '4' || digit === '6' || digit === '8').map(Number))
            .concat(test_tuple[3].toString().split('').filter(digit => digit === '2' || digit === '4' || digit === '6' || digit === '8').map(Number))
            .concat(test_tuple[4].toString().split('').filter(digit => digit === '2' || digit === '4' || digit === '6' || digit === '8').map(Number));
    return res;     
}

// Test the function
let test_case: [number, number, [number, number, [number, number]], number, number] = [2, 4, [6, 8, [10, 12]], 24, 36, 1, 7, 5, 3, 9, 11, 13, 22, 44, 66, 88, 100, 102, 104, 106, 108, 110, 112, 114, 116, 118, 120]
    
    .filter(item => Array.isArray(item) ? item : item.toString().split('').every(digit => digit === '2' || digit === '4' || digit === '6' || digit === '8').toString().split('').every(digit => digit === '2' || digit === '4' || digit === '6' || digit === '8').toString())
    
    .reduce((acc: number[], el: number) => {
        if (Array.isArray(el)){
            acc.concat(el
                    .toString()
                    .split('')
                    .every(digit => digit === '2' || digit === '4' || digit === '6' || digit === '8')
                    .toString()
                    .split('')
                    .every(digit => digit === '2' || digit === '4' || digit === '6' || digit === '8')
                    .toString()
                    .split('')
                    .every(digit => digit === '2' || digit === '4' || digit === '6' || digit === '8')
                    .toString()
                    .split('')
                    .every(digit => digit === '2' || digit === '4' || digit === '6' || digit === '8')
                    .toString()
                    .split('')
                    .every(digit => digit === '2' || digit === '4' || digit === '6' || digit === '8')
                    .toString()
                    .split('')
                    .every(digit => digit === '2' || digit === '4' || digit === '6' || digit === '8')
                    .toString()
                    .split('')
                    .every(digit => digit === '2' || digit === '4' || digit === '6' || digit === '8')
                    .toString()
                    .split('')
                    .every(digit => digit === '2' || digit === '4' || digit === '6' || digit === '8')
                    .toString()
                    .split('')
                    .every(digit => digit === '2' || digit === '4' || digit === '6' || digit === '8')
                    .toString()
                    .split('')
                    .every(digit => digit === '2' || digit === '4' || digit === '6' || digit === '8')
                    .toString()
                    .split('')
                    .every(digit => digit === '2' || digit === '4' || digit === '6' || digit === '8')
                    .toString()
                    .split('')
                    .every(digit => digit === '2' || digit === '4' || digit === '6' || digit === '8')
                    .toString()
                    .split('')
                    .every(digit => digit === '2' || digit === '4' || digit === '6' || digit === '8')
                    .toString()
                    .split('')
                    .every(digit => digit === '2' || digit === '4' || digit === '6' || digit === '8')
                    .toString()
                    .split('').every(digit => digit === '2' || digit === '4' || digit === '6' || digit === '8')
                ? el
                .toString()
                .split('')
                .filter(digit => digit === '2' || digit === '4' || digit === '6' || digit === '8')
                .map(Number)
                : []
            )
        } else {
            acc.push(el)
        }
        return acc
    }, [])

    .filter(item => Array.isArray(item) ? item : item.toString().split('').every(digit => digit === '2' || digit === '4' || digit === '6' || digit === '8').toString().split('').every(digit => digit === '2' || digit === '4' || digit === '6' || digit === '8').toString())

    .filter(item => Array.isArray(item) ? item : item.toString().split('').every(digit => digit === '2' || digit === '4' || digit === '6' || digit === '8').toString().split('').every(digit => digit === '2' || digit === '4' || digit === '6' || digit === '8').toString())

    .filter(item => Array.isArray(item) ? item : item.toString().split('').every(digit => digit === '2' || digit === '4' || digit === '6' || digit === '8').toString().split('').every(digit => digit === '2' || digit === '4' || digit === '6' || digit === '8').toString())

    .filter(item => Array.isArray(item) ? item : item.toString().split('').every(digit => digit === '2' || digit === '4' || digit === '6' || digit === '8').toString().split('').every(digit => digit === '2' || digit === '4' || digit === '6' || digit === '8').toString())

    .filter(item => Array.isArray(item) ? item : item.toString().split('').every(digit => digit === '2' || digit === '4' || digit === '6' || digit === '8'))
    .reduce((acc: number[], el: number) => {
        acc.push(el)
        return acc
    }, [])

    .reduce((acc: number[], el: number) => {
        acc.push(el)
        return acc
    }, [])
    
    .reduce((acc: number[], el: number) => {
        acc.push(el)
        return acc
    }, [])

    .reduce((acc: number[], el: number) => {
        acc.push(el)
        return acc
    }, [])

    .reduce((acc: number[], el: number) => {
        acc.push(el)
        return acc
    }, [])

    .reduc


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove uneven elements in the nested mixed array.