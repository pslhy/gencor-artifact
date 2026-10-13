let rec total_match (lst1 : string list) (lst2 : string list) : string list =
    match lst1, lst2 with
    | [], [] -> []
    | _, [] -> lst1
    | [], _ -> lst2
    | h1 :: t1, h2 :: t2 ->
        let st1 = String.length h1 in
        let st2 = String.length h2 in
        if st1 < st2 then h1 :: total_match t1 lst2
        else if st2 < st1 then h2 :: total_match lst1 t2
        else total_match t1 t2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that accepts two lists of strings and returns the list that has *)
(*     total number of chars in the all strings of the list less than the other list. *)
(*     if the two lists have the same number of chars, return the first list. *)
(*     Examples *)
(*     >>> total_match [] [] *)
(*     [] *)
(*     >>> total_match ["hi"; "admin"] ["hI"; "Hi"] *)
(*     ["hI"; "Hi"] *)
(*     >>> total_match ["hi"; "admin"] ["hi"; "hi"; "admin"; "project"] *)
(*     ["hi"; "admin"] *)
(*     >>> total_match ["hi"; "admin"] ["hI"; "hi"; "hi"] *)
(*     ["hI"; "hi"; "hi"] *)
(*     >>> total_match ["4"] ["1"; "2"; "3"; "4"; "5"] *)
(*     ["4"] *)
