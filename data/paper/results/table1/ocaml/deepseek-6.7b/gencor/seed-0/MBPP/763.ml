
let rec find_min_diff (arr : int list) (n : int) : int =
    match arr with
    | [] -> max_int
    | hd :: tl ->
        let res = find_min_diff tl n in
        if hd - (hd mod n) < res then hd - (hd mod n) else res

let min_difference (arr : int list) : int =
    let n = List.length arr in
    find_min_diff arr n

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the minimum difference between any two elements in a given list. https://www.geeksforgeeks.org/find-minimum-difference-pair/ *)
