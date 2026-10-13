let rec odd_values_string (str : string) : string = 
    match String.length str with
    | 0 | 1 -> str
    | length -> let first = String.get str 0 in 
                let rest = String.sub str 1 (length - 1) in 
                let remaining = odd_values_string rest in 
                if String.length remaining mod 2 = 0 then remaining ^ first else first ^ remaining


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to remove the characters which have odd index values of a given string. *)
