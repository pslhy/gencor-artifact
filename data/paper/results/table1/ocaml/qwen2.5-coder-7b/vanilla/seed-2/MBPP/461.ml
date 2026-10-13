let rec upper_ctr (str : string) : int = 
    let rec helper chars count = 
        match chars with
        | [] -> count
        | c :: cs -> 
            if 'A' <= c && c <= 'Z' then helper cs (count + 1)
            else helper cs count
    in helper (List.of_seq (String.to_seq str)) 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the upper case characters in a given string. *)
