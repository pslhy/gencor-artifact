(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string. *)
let rec find_length (string : string) : int =
    if String.contains string '0' then
        String.length string - (String.length (String.trim (String.replace_char string '0' ' ')))
    else 
        String.length string
;;

let calc_diff (binary_string : string) : int = 
    let len = String.length binary_string in
    let rec aux i max_diff =
        if i < len then
            let substring = String.sub binary_string 0 (i + 1) in
            let new_diff = (find_length substring) in
            aux (i + 1) (max max_diff new_diff)
        else
            max_diff
    in
    aux 0 0
;;

let max_diff_binary_string (binary_string : string) : int =
    let len = String.length binary_string in
    let rec aux i max_diff =
        if i < len then
            let substring = String.sub binary_string i (len - i) in
            let new_diff = calc_diff substring in
            aux (i + 1) (max max_diff new_diff)
        else
            max_diff
    in
    aux 0 0
;;

(* Test cases *)

assert(max_diff_binary_string "1100110001" = 4);;
assert(max_diff_binary_string "1100111101" = 3);;
assert(max_diff_binary_string "11111111" = 0);;
assert(max_diff_binary_string "00000000" = 0);;
assert(max_diff_binary_string "100101010010111100" = 7);;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:61: Unbound value "String.replace_char" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_length (string : string) : int =
    if String.contains string '0' then
        String.length string - (String.length (String.trim (String.sub string 0 (String.length string - (String.length (String.trim (String.sub string 0 (String.length string - 1))))))))
    else 
        String.length string
;;

let calc_diff (binary_string : string) : int = 
    let len = String.length binary_string in
    let rec aux i max_diff =
        if i < len then
            let substring = String.sub binary_string 0 (i + 1) in
            let new_diff = (find_length substring) in
            aux (i + 1) (max max_diff new_diff)
        else
            max_diff
    in
    aux 0 0
;;

let max_diff_binary_string (binary_string : string) : int =
    let len = String.length binary_string in
    let rec aux i max_diff =
        if i < len then
            let substring = String.sub binary_string i (len - i) in
            let new_diff = calc_diff substring in
            aux (i + 1) (max max_diff new_diff)
        else
            max_diff
    in
    aux 0 0
;;

(* Test cases *)

assert(max_diff_binary_string "1100110001" = 4);;
assert(max_diff_binary_string "1100111101" = 3);;
assert(max_diff_binary_string "11111111" = 0);;
assert(max_diff_binary_string "00000000" = 0);;
assert(max_diff_binary_string "100101010010111100" = 7);;

