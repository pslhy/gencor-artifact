(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to convert the given string to lower case. *)
let rec is_lower (string : string) : string = 
    let rec convert chars idx n = 
        if idx = n then chars
        else 
            let new_char = 
                if 'A' <= string.[idx] && string.[idx] <= 'Z' then 
                    string.[idx] + ('a' - 'A')
                else string.[idx]
            in 
            convert (chars.[idx] <- new_char; chars) (idx + 1) n
    in 
    convert (Array.copy (String.to_seq string |> Array.of_list)) 0 (Array.length (String.to_seq string |> Array.of_list))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:22: Syntax error: strings are immutable, there is no assignment syntax for them. *)
(*     Hint: Mutable sequences of bytes are available in the Bytes module. *)
(*     Hint: Did you mean to use "Bytes.set"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_lower (string : string) : string = 
    let rec convert chars idx n = 
        if idx = n then bytes_to_string chars
        else 
            let new_char = 
                if 'A' <= string.[idx] && string.[idx] <= 'Z' then 
                    string.[idx] + ('a' - 'A')
                else string.[idx]
            in 
            convert (Bytes.set chars idx new_char; chars) (idx + 1) n
    in 
    convert (Bytes.create (String.length string)) 0 (String.length string)

and bytes_to_string (bytes : bytes) : string = 
    Bytes.to_string bytes

