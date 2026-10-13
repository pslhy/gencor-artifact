let rec find_min_diff (arr : int list) (n : int) : int = 
    let rec find_min_diff' (alist : int list) (min_diff : int) : int =
        match alist with
        | [] -> min_diff
        | x::xs ->
            let new_min_diff =
                List.fold_left (fun acc y -> min acc (abs (x - y))) min_diff xs
            in
            find_min_diff' xs new_min_diff
    in
    if n < 2 then
        failwith "List must contain at least two elements"
    else
        find_min_diff' (List.sort compare arr) (max_int)

let min_diff = find_min_diff [4; 9; 1; 32; 13];;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the minimum difference between any two elements in a given list. https://www.geeksforgeeks.org/find-minimum-difference-pair/ *)
