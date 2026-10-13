(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that takes in a sorted list, its length (n), and an element and returns whether the element is the majority element in the given sorted list. (The majority element is the element that occurs more than n/2 times.) *)
let rec is_majority (arr : int list) (n : int) (x : int) : bool =
    match arr with
    | [] -> false
    | hd :: tl ->
        if hd = x then
            let (_, count) = List.fold_left (fun (i, c) e -> if e = x then (i + 1, c + 1) else (i, c)) (0, 0) arr in
            count > n / 2
        else
            false

