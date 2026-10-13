let rec remove_Occ (s : string) (ch : string) : string =
    match s with
    | [] -> []
    | h :: t ->
        if h = ch then
            let (before, after) = List.splitAt (List.length s - 1) s in
            before @ after
        else
            h :: remove_Occ t ch


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to remove first and last occurrence of a given character from the string. *)
