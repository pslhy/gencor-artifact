(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether all the characters are same or not. *)
let rec all_Characters_Same (s : string) : bool = 
    (* base case: if s is empty or has only 1 character, return true *)
    if s = "" || String.length s = 1 then true
    else 
        (* check if all characters in s are the same *)
        let c = s.[0] in 
        (* recursion step: check if all characters in s are the same as c *)
        let rec check (i : int) : bool = 
            if i < String.length s then 
                if s.[i] = c then check (i+1) else false
            else true
        in check 0

