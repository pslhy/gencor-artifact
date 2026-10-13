let rec reverse_vowels (str1 : string) : string = 
  let rec is_vowel c = 
    match c with 
    | 'a' | 'e' | 'i' | 'o' | 'u' | 'A' | 'E' | 'I' | 'O' | 'U' -> true 
    | _ -> false 
  in 
  let rec helper s1 s2 (lst : char list) : string = 
    match lst with 
    | [] -> s2 
    | h::t -> 
      if is_vowel h 
      then 
        helper s1 ((String.make 1 h)::s2) t 
      else 
        helper (String.make 1 h)::s1 s2 t 
  in 
  let lst = exploding str1 
  in 
  let result = helper [] [] lst 
  in 
  imploding result


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse only the vowels of a given string (where y is not a vowel). *)
