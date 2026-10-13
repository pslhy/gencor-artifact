(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the minimum number of rotations (greater than 0) required to get the same string. *)
let rec find_Rotations (str : string) : int = 
    let len = String.length str in 
    if len = 1 then 0
    else
        let rotation = find_Rotations (String.sub str 1 (len-1)) in
        let overlap = String.sub str 0 (len-1) in 
        if recursion + 1 = 0 && overlap = str 
        then rotation
        else rotation + 1
    in find_Rotations str

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:12: Unbound value "recursion" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_Rotations (str : string) : int =
    let strlen = String.length str in
    if strlen = 1 then 0
    else
        let rotation = find_Rotations (String.sub str 1 (strlen-1)) in
        let overlap = String.sub str 0 (strlen-1) in
        if overlap = str
        then rotation + 1
        else rotation

(* This function returns the minimum number of rotations required to obtain the same string *)

