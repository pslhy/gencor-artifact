let rec count_vowels (test_str : string) : int = 
  let is_vowel c = 
    match c with 
    | 'a' | 'e' | 'i' | 'o' | 'u' | 'A' | 'E' | 'I' | 'O' | 'U' -> true 
    | _ -> false 
  in 
  let rec helper (str : string) (count : int) : int = 
    if String.length str <= 2 then 
      count 
    else 
      let ch1 = str.[0] in 
      let ch2 = str.[1] in 
      let ch3 = str.[2] in 
      if is_vowel ch1 && is_vowel ch2 || 
         is_vowel ch2 && is_vowel ch3 then 
        helper (String.sub str 1 (String.length str - 1)) (count + 1) 
      else 
        helper (String.sub str 1 (String.length str - 1)) count 
  in 
  if String.length test_str <= 2 then 
    0 
  else 
    helper test_str 0 


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count those characters which have vowels as their neighbors in the given string. *)
