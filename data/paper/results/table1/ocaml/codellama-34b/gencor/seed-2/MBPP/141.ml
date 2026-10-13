
let rec pancake_sort (nums : int list) : int list =
    match nums with
    | [] | [_] -> nums
    | _ ->
        let (f, r) = List.split nums in
        let max_index = List.fold_left (fun acc x -> if x > f then x else acc) f r in
        let max_index = if f > max_index then 0 else max_index in
        let (fst, snd) = List.split nums in
        let (head, tail) = List.split fst in
        if head > f then (head :: snd, tail @ [f])
        else (fst, snd)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
