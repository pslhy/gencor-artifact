(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to remove first and last occurrence of a given character from the string. *)
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

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:29: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_Occ (s : string) (ch : string) : string =
    if s = "" then
        ""
    else if s.[0] = ch.[0] && s.[String.length s - 1] = ch.[0] then
        let rest = String.sub s 1 (String.length s - 2) in
        remove_Occ rest ch
    else
        s.[0] ^ remove_Occ (String.sub s 1 (String.length s - 1)) ch

