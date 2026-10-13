let rec find_Rotations (str : string) : int = 
    let len = String.length str in
    let rec helper (i : int) : int =
        if i = len then len
        else if str = String.concat "" [String.sub str i (len - i); String.sub str 0 i] then i
        else helper (i + 1)
    in helper 1

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the minimum number of rotations (greater than 0) required to get the same string. *)
