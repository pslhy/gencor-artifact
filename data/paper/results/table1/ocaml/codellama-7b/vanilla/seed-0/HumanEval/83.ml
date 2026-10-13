let rec starts_one_ends (n : int) : int =
  if n = 1 then 1
  else if n = 2 then 2
  else
    let digits = [1; 0]
    let n_digits = n - 2
    let rec loop (d : int) (i : int) : int =
      if i = n_digits + 1 then d
      else
        let next_d = d * 10 + digits.(i + 1)
        loop next_d (i + 1)
  in
  loop 0 (n - 3)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a positive integer n, return the count of the numbers of n-digit *)
(*     positive integers that start or end with 1. *)
