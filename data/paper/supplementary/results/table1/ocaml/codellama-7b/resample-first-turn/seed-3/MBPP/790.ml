let rec even_position (nums : int list) : bool =
  match nums with
  | [] -> true
  | h :: t ->
    if h % 2 = 0 then
      even_position t
    else
      false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether every even index contains even numbers of a given list. *)
