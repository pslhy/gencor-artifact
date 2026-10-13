let rec find_Rotations (str : string) : int =
    let str_len = String.length str in
    if str_len = 0 then 0
    else
        let rec find_Rotations_aux (mid : int) (start : int) (end_ : int) : int =
            if mid = start then end_
            else
                if str.[mid] = str.[start] then find_Rotations_aux (mid - 1) (start + 1) end_
                else find_Rotations_aux (mid - 1) start end_
        in
        find_Rotations_aux (str_len - 1) 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the minimum number of rotations (greater than 0) required to get the same string. *)
