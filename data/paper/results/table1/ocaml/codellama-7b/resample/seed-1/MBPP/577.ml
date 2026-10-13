(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the last digit in factorial of a given number. *)
let rec last_Digit_Factorial (n : int) : int =
match n with
| 0 -> 1
| _ -> n mod 10

fun () ->
 Printf.printf("The last digit in the factorial of %d is %d\n", n, last_Digit_Factorial (n));;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec last_Digit_Factorial (n : int) : int =
  match n with
  | 0 -> 1
  | _ -> n mod 10 * last_Digit_Factorial (n - 1)

