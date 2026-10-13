let rec find_Max_Num (arr : int list) : int =
    let rec sort_array (arr : int list) : int list =
        match arr with
        | [] -> []
        | x :: xs -> List.sort (fun a b -> -(compare a b)) (x :: sort_array xs)
    in
    let sorted_list = sort_array arr in
    List.fold_left (fun acc x -> acc * 10 + x) 0 sorted_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the largest number that can be formed with the given list of digits. *)
