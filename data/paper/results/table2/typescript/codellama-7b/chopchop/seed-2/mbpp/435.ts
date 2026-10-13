
function last_Digit(n: number): number {
    return Math.floor(Math.log2(n)) + 1
 
    //also you could do it using Utils.js library
    //return getUnit(Math.log2(n))
    //import {getUnit} from Utils;
 
    //or you could use the remainder function
    //return n % 10;
 
    //or you could use a bitwise operator
    //return n & 15;
 
    //or you could use a ternary operator
    //return n > 0 ? n % 10 : 0;
    //return n > 0 ? getUnit(Math.log2(n)) : 0;
    //import {getUnit} from Utils;
 
    //or you could use a standard array
    //return [n % 10, n % 100, n % 1000, n % 10000, n % 100000, n % 1000000]
 
    //or you could use a regular expression
    //return +n.toString().substr(-1);
    //import Regex from 'regex';
 
    //or you could use a reduce function
    //return n.toString().split('').reduce((prev, current) => prev || current);
    //import {reduce} from 'lodash';
 
    //or you could use recursion
    //return n < 10 ? n : lastDigit(n / 10);
    //import {lastDigit} from 'utils';
 
    //or you could use an object
    //return n % 10;
    //import {n} from Utils;
 
    //or you could use a switch case
    //return switch n
    //1: 0, 2: 1, 3: 2, 4: 3, 5: 4, 6: 5, 7: 6, 8: 7, 9: 8, 
    //default: 9;
    //import {n} from Utils;
 
    //or you could use a while loop
    //while (n >= 10)
    //n = n / 10;
    //return n;
    //import {n} from Utils;
 
    //or you could use a for loop
    //for (let i = 0; i < 10; i++)
    //if (n < 10)
    //return n;
    //n = n / 10;
    //return lastDigit(n);
    //import {n} from Utils;
 
    //or you could use a trinary operator
    //return n > 0 ? n % 10 : 0;
    //import {n} from Utils;
 
    //or you could use a fluent api
    //return n.hasDigit().getDigit();
    //import {hasDigit} from Utils;
 
    //or you could use a pipeline
    //return n |> getDigit;
    //import {getDigit} from Utils;
 
    //or you could use a class hierarchy
    //return n.toLastDigit();
    //import {ToLastDigit} from Utils;
 
    //or you could use a decorator
    //return n.toLastDigit();
    //import {LastDigit} from Utils;
 
    //or you could use an iterative method
    //return n.toLastDigit();
    //import {LastDigit} from Utils;
 
    //or you could use a recursive method
    //return n.toLastDigit();
    //import {LastDigit} from Utils;
 
    //or you could use a standard math function
    //return Math.last_Digit(n);
    //import {last_Digit} from Utils;
 
    //or you could use a mathematical formula
    //return n - floor(n) = last_Digit(n)
 
    //or you could use a high order function
    //return (n: number) => lastDigit(n)
 
    //or you could use a generator
    //return lastDigitGenerator(n)
 
    //or you could use a closure
    //return lastDigitClosure(n)
 
    //or you could use an functional programming library
    //return lastDigitLibrary(n)
 
    //or you could use a lambda
    //return (n: number) => lastDigit(n)
 
    //or you could use a macro
    //return lastDigitMacro(n)
 
    //or you could use a parameter
    //return lastDigitParam(n)
 
    //or you could use an anonymous function
    //return function(n: number) return lastDigit(n)
 
    //or you could use an assign int
    //return lastDigit = n;
 
    //or you could use an object
    //return lastDigit.n;
 
    //or you could

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the last digit of a given number.
