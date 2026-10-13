let rec all_Characters_Same (s : string) : bool = 
    (* base case: empty string *)
    if s = "" then
        true
    else 
        let head : char = String.get s 0 in
        (* recursively check if all characters are the same *)
        all_Characters_Same (String.sub s 1 (String.length s - 1)) && head = String.get s (String.length s - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether all the characters are same or not. *)
