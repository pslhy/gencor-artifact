
function and_tuples(test_tup1: [number, number, number, number], test_tup2: [number, number, number, number]): [number, number, number, number] {
    let result: [number, number, number, number] = []
    (test_tup1.forEach((value, index) => {
        if (value !== undefined && test_tup2[index] !== undefined) {
            result.push(value * test_tup2[index])
        }
    })
    )
    (test_tup2.forEach((value, index) => {
        if (value !== undefined && test_tup1[index] !== undefined) {
            result.push(value * test_tup1[index])
        }
    })
    )
    .flatMap((x: number, y: number) => x * y)
    .filter((value: number) => value !== 0 && !Number.isNaN(value))
    .map((value: number) => [value])
    .reduce((acc: number[], value: number[]) => {
        let new_value = value[0]
        if (!acc.some((v) => v === new_value)) {
            acc.push(new_value)
        }
        return acc;
    }, [])
    .valueOf()
    .sort()
    .asArray
    .slice(0, 3)
    .map(Number)
    .join('*')
    .split('*')
    .map((x: string) => Number(x))
    .map((x: number) => [x])
    .reduce((acc: number[], value: number[]) => {
        let new_value = value[0]
        if (!acc.some((v) => v === new_value)) {
            acc.push(new_value)
        }
        return acc;
    }, [])
    .valueOf()
    .sort()
    .asArray.slice(0, 3).map(Number).join('*')
    .split('*').map((x: string) => Number(x))
    .map((x: number) => [x])
    .reduce((acc: number[], value: number[]) => {
            let new_value = value[0]
            if (!acc.some((v) => v === new_value)) {
                acc.push(new_value)
            }
            return acc;
        }, [])
    .valueOf()
    .sort()
    .asArray.slice(0, 3).map(Number).join('*')
    .split('*').map((x: string) => Number(x))
    .map((x: number) => [x])
    .reduce((acc: number[], value: number[]) => {
            let new_value = value[0]
            if (!acc.some((v) => v === new_value)) {
                acc.push(new_value)
            }
            return acc;
        }, [])
    .valueOf()
    .sort()
    .asArray.slice(0, 3).map(Number).join('*')
    .split('*').map((x: string) => Number(x))
    .map((

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract the elementwise and arrays from the given two arrays.
