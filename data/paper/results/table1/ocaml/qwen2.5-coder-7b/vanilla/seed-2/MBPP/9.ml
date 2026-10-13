let rec find_Rotations (str : string) : int = 
    let str_len = String.length str in
    let rec check_rotation (rotated_str : string) : bool = 
        rotated_str = str 
    in 
    let rec rotate_string (s : string) (n : int) : string = 
        let first_part = String.sub s 0 n in
        let second_part = String.sub s n (str_len - n) in
        second_part ^ first_part 
    in 
    let rec find_min_rotations (i : int) : int = 
        if i >= str_len then
            0 
        else 
            let rotated_str = rotate_string str i in
            if check_rotation rotated_str then 
                i + 1 
            else 
                find_min_rotations (i + 1) 
    in 
    find_min_rotations 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the minimum number of rotations (greater than 0) required to get the same string. *)
