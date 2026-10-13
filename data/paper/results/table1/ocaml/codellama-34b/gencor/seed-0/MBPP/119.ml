
let rec search (arr : int list) : int =
    match arr with
    | [] -> raise Not_found
    | [x] -> x
    | first :: second :: _ when first = second ->
        search (List.tl arr)
    | _ ->
        let index = List.length arr / 2 in
        let left = search (List.tl arr) in
        let right = search (List.tl (List.rev arr)) in
        if left = right then left else raise Not_found

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the element that appears only once in a sorted list. *)
