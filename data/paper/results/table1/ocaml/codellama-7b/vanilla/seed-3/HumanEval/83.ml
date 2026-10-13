let rec starts_one_ends (n : int) : int =
  if n = 1 then
    1
  else
    let start_ones = ones_of n 1 in
    let end_ones = ones_of n 9 in
    List.length (start_ones @ end_ones)
and ones_of (n : int) (digit : int) : int list =
  if n = 1 then
    [digit]
  else
    List.map (fun x -> digit :: x) (ones_of (n - 1) (digit + 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a positive integer n, return the count of the numbers of n-digit *)
(*     positive integers that start or end with 1. *)
