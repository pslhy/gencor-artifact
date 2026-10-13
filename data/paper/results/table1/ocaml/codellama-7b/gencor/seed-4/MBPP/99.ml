
let rec decimal_to_binary (n : int) : string = 
    match n with 
    | 0 -> "0" 
    | _ -> (decimal_to_binary (n / 2)) @ [if n mod 2 = 1 then '1' else '0']

let rec bin_to_decimal (s : string) : int = 
    match s with 
    | "" -> 0 
    | h :: t -> (int_of_char h - int_of_char '0') * 2 ^ (String.length s - 1) + bin_to_decimal t

let decimal_to_binary_recursive (n : int) : string = decimal_to_binary n

let decimal_to_binary_iterative (n : int) : string =
    let bin_string = String.init ( floor (log (float_of_int n)) / log (2.0) ) (fun i -> '0') in
    let rec helper (n' : int) (i : int) : unit = 
        if n' = 0 then () 
        else begin 
            bin_string.[i] = char_of_int (48 + (n' mod 2)); 
            helper (n' / 2) (i - 1)
        end in 
    helper n (String.length bin_string - 1); 
    bin_string

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert the given decimal number to its binary equivalent, represented as a string with no leading zeros. *)
