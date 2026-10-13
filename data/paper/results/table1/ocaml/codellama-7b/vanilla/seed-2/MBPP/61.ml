let rec count_Substrings (s : string) : int =
    match s with
    | "" -> 0
    | _ ->
        let n = String.length s in
        let rec aux (i : int) (sum : int) : int =
            match i with
            | i when i >= n -> sum
            | _ ->
                let c = String.get s i in
                let sum' = if c <> ' ' then sum + (int_of_char c) else sum - (int_of_char c) in
                if sum' = i + 1 then sum' else aux (i + 1) sum'
        in
        aux 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of substrings with the sum of digits equal to their length. *)
