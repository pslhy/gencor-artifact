(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     remove_vowels is a function that takes string and returns string without vowels. *)
(*     >>> remove_vowels "" *)
(*     "" *)
(*     >>> remove_vowels "abcdef" *)
(*     "bcdf" *)
(*     >>> remove_vowels "aaaaa" *)
(*     "" *)
(*     >>> remove_vowels "aaBAA" *)
(*     "B" *)
(*     >>> remove_vowels "zbcd" *)
(*     "zbcd" *)
let rec remove_vowels (text : string) : string = 
    let vowels = [ 'a'; 'e'; 'i'; 'o'; 'u'; 'A'; 'E'; 'I'; 'O'; 'U' ] in
    let rec helper (chars : char list) : char list =
        match chars with
        | [] -> []
        | h :: t -> if List.mem h vowels then helper t else h :: helper t
    in
    List.rev (helper (String.to_list text)) |> String.of_list

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:48: Unbound value "String.of_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_vowels (text : string) : string = 
    let vowels = [ 'a'; 'e'; 'i'; 'o'; 'u'; 'A'; 'E'; 'I'; 'O'; 'U' ] in
    let rec helper (chars : char list) : char list =
        match chars with
        | [] -> []
        | h :: t -> if List.mem h vowels then helper t else h :: helper t
    in
    List.rev (helper (String.to_list text)) |> List.map string_of_char |> String.concat ""

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:57: Unbound value "string_of_char" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_vowels (text : string) : string = 
    let vowels = [ 'a'; 'e'; 'i'; 'o'; 'u'; 'A'; 'E'; 'I'; 'O'; 'U' ] in
    let rec helper (chars : char list) : char list =
        match chars with
        | [] -> []
        | h :: t -> if List.mem h vowels then helper t else h :: helper t
    in
    helper (String.to_list text) |> String.concat ""

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:13: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_vowels (text : string) : string = 
    let vowels = [ 'a'; 'e'; 'i'; 'o'; 'u'; 'A'; 'E'; 'I'; 'O'; 'U' ] in
    let rec helper (chars : char array) (i : int) : char array =
        if i >= Array.length chars then chars
        else if List.mem chars.(i) vowels then helper chars (i + 1)
        else (chars.(i) <- chars.(i); helper chars (i + 1))
    in
    let chars = String.to_array text in
    let result = helper chars 0 in
    String.of_array (Array.sub result 0 (Array.length result))

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:17: Unbound value "String.to_array" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_vowels (text : string) : string = 
    let vowels = [ 'a'; 'e'; 'i'; 'o'; 'u'; 'A'; 'E'; 'I'; 'O'; 'U' ] in
    let rec helper (chars : char array) (i : int) : char array =
        if i >= Array.length chars then chars
        else if List.mem chars.(i) vowels then helper chars (i + 1)
        else (chars.(i) <- chars.(i); helper chars (i + 1))
    in
    let chars = Array.of_list (String.to_list text) in
    let result = helper chars 0 in
    String.of_array (Array.sub result 0 (Array.length result))

