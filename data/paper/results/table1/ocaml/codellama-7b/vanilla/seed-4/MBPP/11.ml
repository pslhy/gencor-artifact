let rec remove_Occ (s : string) (ch : string) : string = 
    (* remove first occurrence *)
    let s =
        if String.length s > 0 && s.[0] = ch then String.sub s 1 (String.length s - 1) else s
    in
    (* remove last occurrence *)
    let s =
        if String.length s > 0 && s.[String.length s - 1] = ch then
            String.sub s 0 (String.length s - 1)
        else
            s
    in
    s


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to remove first and last occurrence of a given character from the string. *)
