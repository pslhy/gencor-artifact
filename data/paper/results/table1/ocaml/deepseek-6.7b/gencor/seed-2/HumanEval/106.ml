
let rec f (n : int) : int list =
  let rec factorial (n : int) : int =
    if n < 2 then 1
    else n * factorial (n - 1)

  and rec_sum (n : int) : int =
    if n < 1 then 0
    else n + rec_sum (n - 1)

  in
  let rec loop (n : int) (acc : int list) : int list =
    if n < 1 then acc
    else loop (n - 1) ((if n mod 2 = 0 then factorial n else rec_sum n) :: acc)
  in loop n [] |> List.rev

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
