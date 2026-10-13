(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the difference between largest and smallest value in a given list. *)
let rec big_diff (nums : int list) : int =
    match nums with
    | [] -> 0
    | _ :: [] -> 0
    | hd :: tl ->
        let max_num = List.fold_left max hd tl in
        let min_num = List.fold_left min hd tl in
        max_num - min_num

