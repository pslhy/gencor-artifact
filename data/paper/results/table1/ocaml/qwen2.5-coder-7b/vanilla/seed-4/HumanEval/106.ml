let rec f (n : int) : int list = 
  let rec factorial (x : int) : int = 
    if x = 0 then 1
    else x * (factorial (x - 1))
  and sum (x : int) : int = 
    if x = 0 then 0
    else x + (sum (x - 1))
  in
  let rec aux (acc : int list) (i : int) : int list = 
    if i > n then acc
    else if i mod 2 = 0 then aux ((factorial i) :: acc) (i + 1)
    else aux ((sum i) :: acc) (i + 1)
  in
  List.rev (aux [] 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Implement the function f that takes n as a parameter, *)
(*     and returns a list of size n, such that the value of the element at index i is the factorial of i if i is even *)
(*     or the sum of numbers from 1 to i otherwise. *)
(*     i starts from 1. *)
(*     the factorial of i is the multiplication of the numbers from 1 to i (1 * 2 * ... * i). *)
(*     Example: *)
(*     >>> f 5 *)
(*     [1; 2; 6; 24; 15] *)
