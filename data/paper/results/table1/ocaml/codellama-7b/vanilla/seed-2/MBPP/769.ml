let rec diff (li1 : int list) (li2 : int list) : int list =
    match li1 with
        | [] -> []
        | (h1 :: t1) ->
            if List.mem h1 li2 then diff t1 li2 else h1 :: diff t1 li2

let rec list_diff (li1 : int list list) (li2 : int list list) : int list list =
    match li1 with
        | [] -> []
        | h1 :: t1 ->
            List.concat (List.map (fun l1 -> diff l1 li2) h1) :: list_diff t1 li2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to get the difference between two lists. *)
