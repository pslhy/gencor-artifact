(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to reverse each string in a given list of string values. *)
let rec reverse_string_list (stringlist : string list) : string list =
    match stringlist with
    | [] -> []
    | (head::tail) ->
        let rev = reverse_string head in
        rev::(reverse_string_list tail)

and reverse_string (s : string) : string =
    let rec aux (index : int) (acc : string) : string =
        if index < 0 then acc
        else aux (index-1) (acc ^ (s.[index]))
    in
    aux (String.length s - 1) ""

