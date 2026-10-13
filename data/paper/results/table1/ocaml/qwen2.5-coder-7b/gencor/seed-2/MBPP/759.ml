
let rec is_decimal (num : string) : bool = 
    let has_decimal_point = function 
        | [] -> false 
        | h::t -> (h = '.') || (is_decimal t) 
    in
    let count_decimals = 
        let rec count acc = function 
            | [] -> acc 
            | h::t -> if h = '.' then count (acc + 1) t else count acc t 
        in
        count 0 (String.to_seq (List.of_seq (String.to_seq num)))
    in
    if has_decimal_point (String.to_seq num) && count_decimals = 2 then true else false

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether a given string is a decimal number with a precision of 2. *)
