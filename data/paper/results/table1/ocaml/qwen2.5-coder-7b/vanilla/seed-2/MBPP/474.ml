let rec replace_char (str1 : string) (ch : string) (newch : string) : string = 
    let rec helper chars result = 
        match chars with
        | [] -> result
        | c :: cs -> 
            if c = ch then helper cs (result ^ newch)
            else helper cs (result ^ c) 
    in helper (str1 |> String.to_list) ""


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to replace characters in a string. *)
