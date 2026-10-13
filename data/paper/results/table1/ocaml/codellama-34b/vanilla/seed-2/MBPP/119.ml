let rec search (arr : int list) : int =
    match arr with
    | [] -> failwith "Empty list"
    | [x] -> x
    | first :: second :: rest ->
        if first = second then
            search (second :: rest)
        else
            first


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the element that appears only once in a sorted list. *)
