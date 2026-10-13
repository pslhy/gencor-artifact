(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the given number can be represented as the difference of two squares or not. *)
let rec dif_Square (n : int) : bool =
  if n = 0 then true else
  let (s, sq) = find_Square (n) in
  if s = 0 then false else
  if sq = n then true else
  dif_Square (n - sq)

and find_Square (m : int) : int * int =
  let rec loop (i : int) (prod : int) =
    if i > m then (0, 0) else
    if prod = m then (i, prod) else
    loop (i + 1) (prod + i * i) in
  loop 1 0

