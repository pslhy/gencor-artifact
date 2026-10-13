let rec is_woodall (x : int) : bool =
  let rec aux x y =
    if x = 1 then true
    else if x land x - 1 = 0 then aux (x / 2) (y + 1)
    else false
  in
  aux x 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given number is woodball or not. *)
