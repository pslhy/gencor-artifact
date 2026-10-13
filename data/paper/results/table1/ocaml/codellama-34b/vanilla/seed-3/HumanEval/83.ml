let rec starts_one_ends (n : int) : int =
  if n = 1 then
    2
  else
    let n_digit = 10 ** (n - 1) in
    (for i = 1 to 9 do
      if char_of_int(i + 48) = '1' then
        starts_one_ends(n - 1) + 1
      else
        starts_one_ends(n - 1)
    done) + 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a positive integer n, return the count of the numbers of n-digit *)
(*     positive integers that start or end with 1. *)
