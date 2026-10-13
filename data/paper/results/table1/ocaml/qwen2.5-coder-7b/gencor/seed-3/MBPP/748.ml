
let rec capital_words_spaces (str1 : string) : string = 
 let aux acc str1 = function
    | [] -> String.concat "" (List.rev acc)
    | h::t -> 
      if h >= 'A' && h <= 'Z' then 
        acc <- (str1 :: acc); 
        t
      ; t
  in 
  let rec traverse str1 = function
    | [] -> []
    | h::t -> str1 :: traverse "" t
  in
  aux [] "" (traverse "" (List.of_seq (String.to_seq str1)))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to put spaces between words starting with capital letters in a given string. *)
