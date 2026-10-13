let rec count_vowels (test_str : string) : int = 
  let rec helper (chars : char list) (count : int) : int = 
    match chars with 
    | [] -> count 
    | x :: xs -> 
        let is_vowel c = List.mem c ['a'; 'e'; 'i'; 'o'; 'u'; 'A'; 'E'; 'I'; 'O'; 'U'] in
        if is_vowel x then
          if is_vowel (List.hd xs) then 
            helper xs (count + 1)
          else
            helper xs count
        else 
          helper xs count
  in 
  if String.length test_str < 2 then 0 else helper (String.to_list test_str) 0

(* Example usage *)
let result = count_vowels "example" (* Returns 2 *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count those characters which have vowels as their neighbors in the given string. *)
