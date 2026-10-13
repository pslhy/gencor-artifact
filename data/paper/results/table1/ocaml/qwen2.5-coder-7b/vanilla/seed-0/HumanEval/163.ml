let rec generate_integers (a : int) (b : int) : int list = 
  let min_val = min a b in
  let max_val = max a b in
  let rec collect_even_nums current acc = 
    if current > max_val then acc else
    let next = current + 1 in
    if next mod 2 = 0 then collect_even_nums next (next :: acc) else collect_even_nums next acc
  in
  collect_even_nums min_val [] |> List.rev


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given two positive integers a and b, return the even digits between a *)
(*     and b, in ascending order. *)
(*     For example: *)
(*     >>> generate_integers 2 8 *)
(*     [2; 4; 6; 8] *)
(*     >>> generate_integers 8 2 *)
(*     [2; 4; 6; 8] *)
(*     >>> generate_integers 10 14 *)
(*     [] *)
