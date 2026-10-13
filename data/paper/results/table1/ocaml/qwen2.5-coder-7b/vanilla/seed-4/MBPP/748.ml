let rec capital_words_spaces (str1 : string) : string = 
  let rec helper chars prev = match chars with
    | [] -> prev
    | h::t -> if h >= 'A' && h <= 'Z' then helper t (prev ^ " " ^ (String.make 1 h))
              else helper t (prev ^ (String.make 1 h))
  in helper (List.of_seq (String.to_seq str1)) ""


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to put spaces between words starting with capital letters in a given string. *)
