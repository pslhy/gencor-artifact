let rec odd_values_string (str : string) : string =
    let rec aux (acc : string) (str : string) (idx : int) : string =
        match str with
        | [] -> acc
        | hd::tl ->
            if idx mod 2 = 0 then
                aux (acc ^ hd) tl (idx + 1)
            else
                aux acc tl (idx + 1)
    in
    aux "" str 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to remove the characters which have odd index values of a given string. *)
