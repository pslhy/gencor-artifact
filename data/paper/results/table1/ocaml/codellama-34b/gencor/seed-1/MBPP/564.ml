
let rec count_Pairs (arr : int list) (n : int) : int =
    match arr with
    | [] -> 0
    | x :: xs ->
        let pairs = List.filter (fun (a, b) -> a != b) (List.combine (n - 1) (n - 1) (x, xs)) in
        let pairs = List.map (fun (a, b) -> (a, b, 1)) pairs in
        List.fold_left (fun acc (a, b, c) -> acc + c) 0 pairs

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function which takes a list of integers and counts the number of possible unordered pairs where both elements are unequal. *)
