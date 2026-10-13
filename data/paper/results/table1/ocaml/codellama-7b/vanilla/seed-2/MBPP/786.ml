let rec right_insertion (a : int list) (x : int) : int =
  match a with
  | [] -> 0
  | (y::ys) ->
    if x <= y then
      0
    else
      let i = right_insertion ys x in
      i + 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to locate the right insertion point for a specified value in sorted order. *)
