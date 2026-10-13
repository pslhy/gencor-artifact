let rec odd_values_string (str : string) : string =
    let rec aux (i : int) (acc : string) (str : string) : string =
        match str with
        | "" -> acc
        | _ ->
            if i mod 2 = 1 then
                aux (i + 1) (acc ^ str.[0]) (String.sub str 1 (String.length str - 1))
            else
                aux (i + 1) (acc ^ "") (String.sub str 1 (String.length str - 1))
    in
    aux 0 "" str


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to remove the characters which have odd index values of a given string. *)
