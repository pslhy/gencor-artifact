function Strongest_Extension(class_name: string, extensions: string[]): string {
  let max_strength = -Infinity;
  let max_extension: string | undefined;
  for (const extension of extensions) {
    const strength = getStrength(extension);
    if (strength > max_strength) {
      max_strength = strength;
      max_extension = extension;
    }
  }
  return `${class_name}.${max_extension}`;
}

function getStrength(extension: string): number {
  const cap = extension.split("").filter(c => c.toUpperCase() === c).length;
  const sm = extension.split("").filter(c => c.toLowerCase() === c).length;
  return cap - sm;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     You will be given the name of a class (a string) and an array of extensions.
//     The extensions are to be used to load additional classes to the class. The
//     strength of the extension is as follows: Let CAP be the number of the uppercase
//     letters in the extension's name, and let SM be the number of lowercase letters
//     in the extension's name, the strength is given by the fraction CAP - SM.
//     You should find the strongest extension and return a string in this
//     format: ClassName.StrongestExtensionName.
//     If there are two or more extensions with the same strength, you should
//     choose the one that comes first in the array.
//     For example, if you are given "Slices" as the class and an array of the
//     extensions: ['SErviNGSliCes', 'Cheese', 'StuFfed'] then you should
//     return 'Slices.SErviNGSliCes' since 'SErviNGSliCes' is the strongest extension
//     (its strength is -1).
//     Example:
//     >>> Strongest_Extension("my_class", ["AA", "Be", "CC"])
//     "my_class.AA"
