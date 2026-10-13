let rec is_num_decagonal (n : int) : int =
  if n = 1 then
    1
  else if n mod 2 != 0 then
    let n1 = n - 1 in
    let n2 = is_num_decagonal (n1 / 2) in
    n1 * 2 + n2
  else
    raise (Failure "Not an integer")

let rec is_nth_decagonal = function
  n -> is_num_decagonal n;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth decagonal number. *)
