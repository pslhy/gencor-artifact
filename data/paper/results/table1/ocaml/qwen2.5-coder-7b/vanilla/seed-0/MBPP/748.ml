let rec capital_words_spaces (str1 : string) : string = 
  let is_capital ch = ch = Char.uppercase_ascii ch in
  let rec helper str acc = 
    match str with
    | [] -> List.rev acc
    | ch::rest -> 
        if is_capital ch then 
          helper rest (ch::' '::acc)
        else 
          helper rest (ch::acc)
  in
  String.concat "" (helper (List.of_seq (String.to_seq str1)) [])


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to put spaces between words starting with capital letters in a given string. *)
