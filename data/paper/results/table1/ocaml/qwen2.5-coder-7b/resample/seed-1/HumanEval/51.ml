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
  let is_vowel c = 
    match Char.lowercase_ascii c with 
    | 'a' | 'e' | 'i' | 'o' | 'u' -> true 
    | _ -> false 
  in 
  let rec helper (acc : string) (chars : char list) : string = 
    match chars with 
    | [] -> acc 
    | h :: t -> 
        if is_vowel h then 
          helper acc t 
        else 
          helper (acc ^ Char.toString h) t 
  in 
  helper "" (String.to_list text)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:14:25: Unbound value "Char.toString" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_vowels (text : string) : string = 
  let is_vowel c = 
    match Char.lowercase_ascii c with 
    | 'a' | 'e' | 'i' | 'o' | 'u' -> true 
    | _ -> false 
  in 
  let rec helper (acc : string) (chars : char list) : string = 
    match chars with 
    | [] -> acc 
    | h :: t -> 
        if is_vowel h then 
          helper acc t 
        else 
          helper (acc ^ String.make 1 h) t 
  in 
  helper "" (String.to_list text)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:16:14: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_vowels (text : string) : string = 
  let is_vowel c = 
    match Char.lowercase_ascii c with 
    | 'a' | 'e' | 'i' | 'o' | 'u' -> true 
    | _ -> false 
  in 
  let rec helper (acc : string) (chars : char list) : string = 
    match chars with 
    | [] -> acc 
    | h :: t -> 
        if is_vowel h then 
          helper acc t 
        else 
          helper (acc ^ String.make 1 h) t 
  in 
  helper "" (Array.to_list (String.to_array text))

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:16:29: Unbound value "String.to_array" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_vowels (text : string) : string = 
  let is_vowel c = 
    match Char.lowercase_ascii c with 
    | 'a' | 'e' | 'i' | 'o' | 'u' -> true 
    | _ -> false 
  in 
  let rec helper (acc : string) (chars : char array) : string = 
    match chars with 
    | [||] -> acc 
    | h :: t -> 
        if is_vowel h then 
          helper acc t 
        else 
          helper (acc ^ String.make 1 h) t 
  in 
  helper "" (String.to_array text)

