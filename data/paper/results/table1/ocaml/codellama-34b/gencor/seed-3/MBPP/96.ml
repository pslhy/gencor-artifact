
let rec divisor (n : int) : int =
  if n = 1 then
    1
  else
    let rec loop i count =
      if i*i > n then
        count
      else if n mod i = 0 then
        loop (i+1) (count + 2)
      else
        loop (i+1) count
    in
    loop 1 0

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the number of divisors of a given integer. *)
