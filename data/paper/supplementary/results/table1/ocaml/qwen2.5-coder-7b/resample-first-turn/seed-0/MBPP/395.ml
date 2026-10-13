let rec first_non_repeating_character (str1 : string) : string option = 
  let rec count_chars chars s = 
    match s with 
      | "" -> chars 
      | _ -> let first_char = String.get s 0 
            in count_chars (add_char_count first_char chars) (String.sub s 1 (String.length s - 1))
  and add_char_count char chars = 
    match chars with 
      | [] -> [(char, 1)] 
      | (c, count)::xs -> if c = char then (c, count + 1)::xs else (c, count)::(add_char_count char xs)
  and find_non_repeating chars = 
    match chars with 
      | [] -> None 
      | (char, 1)::xs -> Some (string_of_char char) 
      | _::xs -> find_non_repeating xs in 
  find_non_repeating (count_chars [] str1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first non-repeated character in a given string. *)
