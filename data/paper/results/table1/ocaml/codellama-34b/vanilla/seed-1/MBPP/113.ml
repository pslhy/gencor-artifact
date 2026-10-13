let rec check_integer (text : string) : bool =
    let is_integer digit =
        match digit with
        | '0'..'9' -> true
        | _ -> false
    in
    let rec aux = function
        | [] -> true
        | head :: tail ->
            if (is_integer head) then (aux tail) else false
    in
    (aux (String.to_seq text))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if a string represents an integer or not. *)
