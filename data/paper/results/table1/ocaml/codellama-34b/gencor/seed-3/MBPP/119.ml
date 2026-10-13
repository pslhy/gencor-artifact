
let rec search (arr : int list) : int =
    if List.length arr <= 1 then
        raise (Invalid_argument "List must have at least 2 elements to work")
    else
        let mid = floor ((List.length arr) / 2) in
        let left = List.split ~mid arr in
        let right = List.split ~mid left in
        if left = right then
            search left
        else
            List.hd arr

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the element that appears only once in a sorted list. *)
