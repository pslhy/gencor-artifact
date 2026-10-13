let rec remove_Occ (s : string) (ch : string) : string =
    let rec aux (s : string) (acc : string) : string =
        if s = "" then
            acc
        else if s.[0] = ch. = ch && s.[String.length s - 1] = ch. then
            aux (String.sub s 1 (String.length s - 2)) (acc ^ ch)
        else
            aux (String.sub s 1 (String.length s - 1)) (acc ^ s.[0])
    in
    aux s ""


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to remove first and last occurrence of a given character from the string. *)
