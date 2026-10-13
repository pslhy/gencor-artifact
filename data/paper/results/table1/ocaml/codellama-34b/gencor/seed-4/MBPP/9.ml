
let rec find_Rotations (str : string) : int = 
    let len = String.length str in 
    if len = 1 then 0
    else
        let rotation = find_Rotations (String.sub str 1 (len-1)) in
        let overlap = String.sub str 0 (len-1) in 
        if overlap = String.sub str 1 len then 
            rotation + 1
        else 0
    in find_Rotations string_of_int (find_Rotations string_of_int)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the minimum number of rotations (greater than 0) required to get the same string. *)
