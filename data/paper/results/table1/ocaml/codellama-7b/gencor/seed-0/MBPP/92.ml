
let rec is_undulating (n : int) : bool =
  if n < 2 then false
  else if n = 2 then true
  else if n mod 2 = 0 then is_undulating (n / 2)
  else if n mod 3 = 0 then is_undulating (n / 3)
  else false

let undulating_numbers = List.init 1000 (fun i -> i + 1) |> List.filter is_undulating

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is undulating or not. *)
