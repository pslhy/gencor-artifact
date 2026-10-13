let rec find_Max_Num (arr : int list) : int = 
    let rec sort (lst : int list) : int list =
        let rec insert x lst =
            match lst with
            | [] -> [x]
            | h::t when x > h -> h :: (insert x t)
            | _ -> x :: lst
        in
        List.fold_left insert [] lst
    in
    let sorted_arr = sort arr in
    let rec build_num lst =
        match lst with
        | [] -> 0
        | h::t -> h * 10^(List.length t) + (build_num t)
    in
    build_num sorted_arr


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the largest number that can be formed with the given list of digits. *)
