let rec big_sum (nums : int list) : int =
    match nums with
    | [] -> 0
    | _ :: [] -> 0
    | hd :: tl ->
        let max_num = List.fold_right (fun x acc -> if x > acc then x else acc) tl hd in
        let min_num = List.fold_left (fun acc x -> if x < acc then x else acc) tl hd in
        max_num + min_num


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of the largest and smallest value in a given list. *)
