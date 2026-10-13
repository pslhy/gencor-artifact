let rec diff (li1 : int list) (li2 : int list) : int list =
    match li1 with
    | [] -> []
    | x :: xs ->
        if List.mem x li2 then diff xs li2
        else x :: diff xs li2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to get the difference between two lists. *)
