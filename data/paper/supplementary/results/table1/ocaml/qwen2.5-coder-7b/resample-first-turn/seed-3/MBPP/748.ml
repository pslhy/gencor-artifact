let rec capital_words_spaces (str1 : string) : string = 
 let aux acc str1 = function
    | [] -> String.concat "" (List.rev acc)
    | h::t -> 
      if h >= 'A' && h <= 'Z' then 
        aux (""::str1) str1 (List.rev t)
      else 
        let acc' = [str1; h::t] in
        aux (""::acc') "" (List.tl t)
 in
 aux [] "" (String.to_list str1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to put spaces between words starting with capital letters in a given string. *)
