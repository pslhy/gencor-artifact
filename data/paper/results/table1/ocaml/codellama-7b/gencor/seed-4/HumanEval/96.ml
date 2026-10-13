
let rec count_up_to (n : int) : int list =
  if n <= 0 then
    []
  else if n = 1 then
    [1]
  else
    (* First, check if n is prime. If so, add it to the list and then
       recurse with n - 1 *)
    if n = 2 || n = 3 || n = 5 || n = 7 then
      n :: count_up_to (n - 1)
    (* Otherwise, recurse with n - 1 *)
    else
      count_up_to (n - 1)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Implement a function that takes an non-negative integer and returns a list of the first n *)
(*     integers that are prime numbers and less than n. *)
(*     for example: *)
(*     >>> count_up_to 5 *)
(*     [2; 3] *)
(*     >>> count_up_to 11 *)
(*     [2; 3; 5; 7] *)
(*     >>> count_up_to 0 *)
(*     [] *)
(*     >>> count_up_to 20 *)
(*     [2; 3; 5; 7; 11; 13; 17; 19] *)
(*     >>> count_up_to 1 *)
(*     [] *)
(*     >>> count_up_to 18 *)
(*     [2; 3; 5; 7; 11; 13; 17] *)
