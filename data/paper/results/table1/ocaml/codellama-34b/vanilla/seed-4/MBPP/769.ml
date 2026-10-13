let rec diff (li1 : int list) (li2 : int list) : int list =
    match li1, li2 with
    | [], _ -> []
    | _, [] -> li1
    | h1 :: t1, h2 :: t2 -> if h1 = h2 then diff t1 t2 else h1 :: diff t1 li2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to get the difference between two lists. *)
