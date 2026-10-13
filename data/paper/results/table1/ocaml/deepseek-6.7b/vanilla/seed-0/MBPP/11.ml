let rec remove_Occ (s : string) (ch : string) : string =
    if not (String.contains s ch) then s
    else
    try 
        let pos = String.index s ch in
        let rec remove_fin pos s =
            if pos < 0 then s
            else (String.sub s 0 pos) ^ (String.sub s (pos+1) ((String.length s) - pos - 1))
        in
        let rec remove_ini pos s =
            if pos < 0 then s
            else (String.sub s 0 (pos-1)) ^ (String.sub s pos ((String.length s) - pos))
        in
        remove_ini pos (remove_fin (pos+1) s)
    with Not_found -> s



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to remove first and last occurrence of a given character from the string. *)
