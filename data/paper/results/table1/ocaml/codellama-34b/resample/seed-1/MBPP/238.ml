(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of non-empty substrings of a given string. *)
let rec number_of_substrings (str : string) : int =
    let rec aux (str : string) (acc : int) : int =
        if String.length str = 0 then 
            acc
        else
            aux (String.sub str 1 (String.length str - 1)) (acc + 1)
    in
    aux str 0

