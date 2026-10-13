let rec merge_dictionaries_three (dict1 : (string * string) list) (dict2 : (string * string) list) (dict3 : (string * string) list) : (string * string) list =
    let rec aux (acc : (string * string) list) (dict : (string * string) list) : (string * string) list =
        match dict with
        | [] -> acc
        | (k, v) :: tail -> 
            if List.mem k acc then
                aux acc tail
            else
                aux ((k, v) :: acc) tail
    in
    aux [] (dict1 @ dict2 @ dict3)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to merge three dictionaries into a single association list. *)
