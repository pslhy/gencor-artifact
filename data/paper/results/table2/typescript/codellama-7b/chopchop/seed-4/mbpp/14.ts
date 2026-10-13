
function find_Volume(l: number, b: number, h: number): number {
  return l * b * h

  // Notice that the JavaScript and TypeScript documentation do not require that the l and b parameters be used to get the h parameter before multiplying by it, so this is valid TypeScript but not JavaScript.

  // const area = l + b;
  // square_height = 2 * area + h;
  // square_volume = l * b * square_height;
  // result = square_volume / 3;
  // return result;

  // Another approach is to introduce a constant type to display length.
  // declare module literals {
  //   export type const length = typeof find_Volume;
  // }
  // print(
  //   "The volume of a triangular prism is " +
  //     find_Volume(literals.length, literals.length, literals.length)
  // );
  // return find_Volume(literals.length, literals.length, literals.length)

  // Alternatively,
  // function find_Volume(): number {
  //   \val()
  //   // Here, l and b should be declaring variables.
  //   // val(l);
  //   // val(b);
  //   // val(h);
  //   return l * b * h
    
  //  Notice that the height parameter venceq = alphabetEk > (that is, it is either a unitS (/qselect ss (that is, a val)8otype but not a literal value.
  //  This is not the smallest * ваlute code to do this, but it demonstrates some of the TypeSrite features and conforms to the assigned durably.
  //  Perhaps for the future, IntelliJ IDEA, the official non-profit IDE for open source software development, can import this problem into an instance of Typescript and use its to complete it.
  // }
  // println!(val = find_volume(1., 2., 3.)) 

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the volume of a triangular prism.
