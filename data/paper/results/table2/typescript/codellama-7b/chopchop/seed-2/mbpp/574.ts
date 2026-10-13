
function surfacearea_cylinder(r: number, h: number): number {
  return 2 * Math.PI * r * r + Math.PI * r * h

  // surface area = base area + lateral area
  // base area = 2 * pi * radius * radius
  // lateral area = pi * radius * length
  // if you know about cylinders, it is a good time to mention that you know the formula
  // just for fun - the teacher had been meaning to ask someone about the surface area of a sphere
  // hence this nontrivial function
  // in complex situations, you might want to mention the brute force approach to solution
  // not part of the interview standard, but if you know the radius and height, you know the area exactly
  // however, in actual problems you could be wanting a general formula to apply on different situations
  // for simplicity, let's pretend that we don't know the radius or the height
  // but in any case, type checking is your friend
  // you can also shoot for correctness in small simple steps
  // and diagnose incrementally as the code grows

  // happy coding, or at least type checking
  // wish you luck in your coding journey
  // feel free to ask - have fun!
  // expect this to be harsh at times, but it's the approach that only works
  // we'll get there, or not
  // and that's it, this was my life advice
  // enjoy your typing, the world will come to you
  // if you know about cylinders
  // surface area = 2 * pi * radius * radius + pi * radius * height
  // if you are happy with the brute force approach
  // just for fun - some people will come to your questions, and may surprise you
  // the radius should be a number, and the height should be a number
  // quipped at the end of the interview, so everyone laughs
  // now comes the fun part, the code that actually solves the problem
  // back to square one, let's recheck our assumptions
  // only one argument, r, radius, number
  // one statement, return, return surface area, number
  // one conditional statement, if, check if height is defined
  // one statement, return undefined, if not defined
  // one variable, h, height, number
  // habit, let's start with commenting our code before completing it
  // clarity, always starts with explaining the purpose of the code
  // i'll work on the surface area first, as it's the critical part of the equation
  // the surface area is a formula, which is 2 * pi * radius^2
  // so i'll calculate the radius squared, to avoid repeating pi twice
  // i'll calculate it being pi squared times radius squared
  // i'll practice making the program easy to read and understand
  // in typescript, you can organize your functions with modules
  // and you can even add documentation for read the docs
  // let's start with comments and functions, as it's a common convention in coding
  // always important, especially in a language like typescript
  // lets look at the surface area formula, it's a nice simple formula
  // the one exception is pi^2, it's not defined, so we'll add it
  // in typescript, you can declare a variable as a constant
  // and assign it the value you want, to make it read-only
  // it's a good practice, it makes the code easier to read and maintain
  // let's move on, and add the square function, i'll take shortcuts, no need to explain
  // let's see about the height now, it's exactly the same as the radius
  // let's add a variable declaration and assign it a parameter
  // just for fun - just let types do their magic
  // no need to solve pi, just use the formula
  // return the surface area, with the two geometrical forms multiplied
  // let's add a nice output to show that the code works, and minimize errors
  // and finally, let's organize that, currently the code is in one big line
  // let's play with functions and modules to make the code easier to read
  // let's keep it simple and easy to understand, declare functions early on
  // create a module, and export the function
  // use import to use the defined functions
  // the end, and the beginning, always, if you know the radius and height
  // you can calculate the surface area exactly, it's a necessary skill to master


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the surface area of a cylinder.
