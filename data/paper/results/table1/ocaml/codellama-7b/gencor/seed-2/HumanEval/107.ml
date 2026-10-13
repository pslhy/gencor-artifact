
let rec even_odd_palindrome (n : int) :  int * int =
    let palindrome (x : int) : bool =
        let s = string_of_int x
        string_of_int x = List.rev (List.map (fun x -> x) string_of_int x)
    in
    List.fold_left (fun (e, o) x ->
        let ev = x mod 2 = 0
        (if even_odd_palindrome+1
    int_of_string "12321"
    int_of_string "4444444"

(* Expected:

val main : unit -> unit = <fun>
val incr : int ref -> int ref = <fun>
val count_digit : int -> unit = <fun>
val count_Len_odd_pali : int -> unit = <fun>
val lambda_test : unit -> unit = <fun>

*)

(* **********************************************************************. *)
(* EXERCISE #2: *)
(* **********************************************************************. *)

(* A dictionary is an ordered list of lists. *)
(* EXTERNAL INPUT: *)
(* Create a function "dictionary: 'a list list -> 'a list". *)
(*   Unwarned: use "command + click on the symbol (burger button)" *)
(*   You can also "cc + click" on the symbol and unwarn will be executed. *)
(*   Recommended: use "verb + click" on the symbol to avoid unwarn moment. *)
(* Explanation: *)
(*   Given a list (list of lists) of elements of type 'a, creates a single list of elements of type 'a. *)
(*   Example: [["a"; "b"; "c"]; ["d"; "e"; "f"]] = ["a"; "b"; "c"; "d"; "e"; "f"]  *)
(* This function functions similarly to "List.flatten". *)
(* Hint: Start with a function that increases by one each array element of (list of lists of int). *)
(* See file "ex_dictionary" for example with differences between your implementation and previous. *)

(* Dog same *)

(* Expected:

val dictionary : 'a list list -> 'a list = <fun>
val untested_dictionary : 'a list list -> 'a list = <fun>

*)

(* **********************************************************************. *)
(* EXERCISE #3: *)
(* **********************************************************************. *)


(* Recommended: One player: try to solve the first problem before moving to the second problem. *)

(* A divisibility relation is a function that returns true (* false) that a and b are ["divisible" (indivisible")] *)
(* EXTERNAL INPUT: Function divisible: int -> int -> bool*)
(*  Specifications for the implementation and list of use cases follow: *)
(* i) 0 is divisible by anything.
*2) n is divisible by 1
*3) if n is divisible by m, then n is divisible by the sum of m and the divisor of m
*4) if n is divisible by m, then n is divisible by n-m (if n-m is positive)
*5) otherwise divisible is a total function
*)



(* For checking *)

(* auxiliar function *)
let rec divisible (a: int) (b: int): bool = 
    match b with
	0 -> true
    | _ -> if a mod b = 0 then true else false

let aux_even (a: int) (b: int): bool = 	
    match divisible a b with
 | true -> if  b mod 2 = 0 then true else false
 | false -> false 

(* EXERCISE 03 *)
(* Given an integer x determine if x is a perfect square number *)
(* EXTERNAL INPUT: *)
(* create a function : : int -> bool *)

(* False ===> i.e. while there is a function to create even numbers from negative, into infinity, there is no "reasonable" function to make the number 0 ) the square of a even number (i.e. positive). :) *)

(* Solution to the following *)
let square_root ( x : int ) : bool = match x with
	0 -> false
    | _ ->  (sqrt (float_of_int x )) %> float_of_int = float_of_int x

(* Expected:

val square_root : int -> bool = <fun>
val aux_even : int -> int -> bool = <fun>

*)

(* Start Software, and only in the case you encounter "fun", try as soon as possible. You can always do additional exercise snippets.
Additional suggestions. Misconceptions and common mistakes you must know: *)
(* i.e.     check that your custom types are well-formed. *)
(* Respectually I find it easier to learn when I discover the undeclared types I theoretically have at hand. In other words, when novice / naive programmers go missing a "undeclared type" somewhere, I usually want to look for the "undeclared type" too.
*)

(* Expected:

*)

(* Finally note that we do not want to discriminate against those that go to better universities *)
(* EXTERNAL INPUT: solve exercise list, or see side-by-side comparison*)

(* To Test 

Complete the equality function by implementing a tree-like data structure using pattern matching.

EXTERNAL INPUT: *)
(* EXERCISE 01 *)
(* complete the equality  function creating a tree-like data structure (02_separate_equatity/main.ml) *)
(* EXAMPLE IMPLEMENTATION: *)
(* "to_str_tree" from 01_to_str_tree/main.ml *)
(* "solve" from 03_solve/solve.ml *)
(* you will receive more help as this is done *)

(* Yes, learnUnion *)

(* Expected:

val main : unit -> unit = <fun>
Differences are: first one is more code with comments in it, the latter is code with no comments, patterns in any character position, and variables and waiting for a button somewhere *)

(* To Test 

Compute the greatest common divisor of two integers. *)
(* I(n): The greatest common divisor gcd(a, b) is a positive integer below a and b, which satisfies: *)
(* a \* gcd(a, b) + b \* gcd(a, b) = a * b *)
(* o(n): The time complexity of Euclid's algorithm for finding the gcd of two integers can be given as function of the number of lines in the program. *)
(* EXTERNAL INPUT: *)
(* 1)complete the factorial function in order to show the function aspect. *)
(* 2)rewrite the part before "--Comments and split the comments into instructions in Values and Tests is files: for starting at Professor Peduti and steht, April 19 first" *)
(* EXAMPLE IMPLEMENTATIONS: *)
(* 01_aritmetic_expressions -> (assumes students already know about arithmetic expressions and evaluation rules) *)
(* Note: In a previous throw-away draft this was called 02_recursion and it contained a correct implementation (though maybe not for the other above). *)
(* EXERCISES *)

(* Hint for Exercise 1: *)
(* repeated make zero by subtracting two numbers that differ by a factor of two. However, when the sum of the two numbers is even divide the  *)
(* smallest sum and a triangular number (explained below). *)

(* As Auxiliary structure (detailed explanation follows)*)


(* l = x \* x * (-y)		endcasing minimum (n1, y1) *)
(* l = y \* x + x \* n1 + x * (y1 + x)	 *)
(* l =...+...n1*x - (y1+x)		*)
(* précédence de plus petite ornstein as orthcharitestic argument is explicitly defined, we can divide by x as, following The theorem of aritmetic.*)
(* l =...= n1 \* n1 + y1 * y1 -...-y1 + y1 * Ln(x) + x * Ln(x) + ...)	  *)
(* Therefore, this function makes sense only for x \>= 1 *)
(* l = n * (n - 1) / 2 + Ln(x) * (n + 1) - y * Ln(x) *)



(* lzo = y * n1 * Ln(x) + n * Ln(x) + y * y1 - y1 - n1 * n1 *)

(* l = lzo * x + n1 + y1 *)
(* l = ( n * n - 2n + 2 ) * Ln(x) +Phi(x) - ( y * Ln(x) + y1 + n1 * x ) - y * y1 - y1 *)
(* Number of lines. Better / Worse.  *)

(* Expected:

val factorial : int -> int = <fun>
val solve : int -> int = <fun>

*)

(* By and large, the algorithm produces the factorial of n calculated that is as close as possible to the real factorial of n based on rounding rules. *)
(* Using general principles of interview programming, this is what the interviewer asks. 
*)

(* As a conclusion, lecture notes from the Course Understanding Integer Recursion's in Algo Algorithms when studied carefully, show how to approach interview questions.*)




(* Given two numbers a and b, determine if it is possible to add n to a to give a multiple of b *)
(* We can get b and n, and we know the product n * b will solve this, but that's cheating *)

(* Minimum should be written: *)


let minmod x y =
    match (x * y + 1) with
    | _ -> 0

let greatestcommonfactor (a: int) (b: int): int =
    if a = b then a else 0

(* for greater or equal, remove variable y which is divisible until a *)































*)

(* For checking purposes only *) 

(* mu = [x n+1)
uni = uni + x (this is good indentation!)
DONE all links *)
















































































































































































































































































































(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a positive integer n, return a tuple that has the number of even and odd *)
(*     integer palindromes that fall within the range(1, n), inclusive. *)
(*     Example 1: *)
(*     >>> even_odd_palindrome 3 *)
(*     (1, 2) *)
(*     Explanation: *)
(*     Integer palindrome are 1, 2, 3. one of them is even, and two of them are odd. *)
(*     Example 2: *)
(*     >>> even_odd_palindrome 12 *)
(*     (4, 6) *)
(*     Explanation: *)
(*     Integer palindrome are 1, 2, 3, 4, 5, 6, 7, 8, 9, 11. four of them are even, and 6 of them are odd. *)
(*     Note: *)
(*     1. 1 <= n <= 10^3 *)
(*     2. returned tuple has the number of even and odd integer palindromes respectively. *)
